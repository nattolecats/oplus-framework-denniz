.class public Lcom/android/internal/telephony/nrNetwork/OplusNrModeCityInfo;
.super Ljava/lang/Object;
.source "OplusNrModeCityInfo.java"


# instance fields
.field private blacklist TAG:Ljava/lang/String;

.field private blacklist mSaCityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSaProvinceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSimType:Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;)V
    .locals 1
    .param p1, "mSimType"    # Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, "OplusNrModeCityInfo"

    iput-object v0, p0, Lcom/android/internal/telephony/nrNetwork/OplusNrModeCityInfo;->TAG:Ljava/lang/String;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nrNetwork/OplusNrModeCityInfo;->mSaCityList:Ljava/util/List;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nrNetwork/OplusNrModeCityInfo;->mSaProvinceList:Ljava/util/List;

    .line 16
    iput-object p1, p0, Lcom/android/internal/telephony/nrNetwork/OplusNrModeCityInfo;->mSimType:Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;

    .line 17
    return-void
.end method


# virtual methods
.method public blacklist getSaCityList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/android/internal/telephony/nrNetwork/OplusNrModeCityInfo;->mSaCityList:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getSaProvinceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/android/internal/telephony/nrNetwork/OplusNrModeCityInfo;->mSaProvinceList:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getSimType()Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/android/internal/telephony/nrNetwork/OplusNrModeCityInfo;->mSimType:Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;

    return-object v0
.end method

.method public blacklist setSaCityList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 32
    .local p1, "mSaCityList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/internal/telephony/nrNetwork/OplusNrModeCityInfo;->mSaCityList:Ljava/util/List;

    .line 33
    return-void
.end method

.method public blacklist setSaProvinceList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 40
    .local p1, "mSaProvinceList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/internal/telephony/nrNetwork/OplusNrModeCityInfo;->mSaProvinceList:Ljava/util/List;

    .line 41
    return-void
.end method

.method public blacklist setSimType(Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;)V
    .locals 0
    .param p1, "mSimType"    # Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;

    .line 24
    iput-object p1, p0, Lcom/android/internal/telephony/nrNetwork/OplusNrModeCityInfo;->mSimType:Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;

    .line 25
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SimType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/nrNetwork/OplusNrModeCityInfo;->mSimType:Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v1, " ,saCityList = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget-object v1, p0, Lcom/android/internal/telephony/nrNetwork/OplusNrModeCityInfo;->mSimType:Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;

    const-string v2, ","

    if-eqz v1, :cond_0

    .line 49
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/nrNetwork/OplusNrModeCityInfo;->mSaCityList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 50
    iget-object v3, p0, Lcom/android/internal/telephony/nrNetwork/OplusNrModeCityInfo;->mSaCityList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    .end local v1    # "i":I
    :cond_0
    const-string v1, " ,saProvinceList = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    iget-object v1, p0, Lcom/android/internal/telephony/nrNetwork/OplusNrModeCityInfo;->mSaProvinceList:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 56
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/nrNetwork/OplusNrModeCityInfo;->mSaProvinceList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 57
    iget-object v3, p0, Lcom/android/internal/telephony/nrNetwork/OplusNrModeCityInfo;->mSaProvinceList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 61
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
