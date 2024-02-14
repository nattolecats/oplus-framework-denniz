.class public Lcom/android/internal/telephony/nrNetwork/OplusVoNrCityInfo;
.super Ljava/lang/Object;
.source "OplusVoNrCityInfo.java"


# instance fields
.field private blacklist mSimType:Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;

.field private blacklist mVoNrCities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mVoNrProvinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;)V
    .locals 1
    .param p1, "mSimType"    # Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nrNetwork/OplusVoNrCityInfo;->mVoNrCities:Ljava/util/List;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nrNetwork/OplusVoNrCityInfo;->mVoNrProvinces:Ljava/util/List;

    .line 14
    iput-object p1, p0, Lcom/android/internal/telephony/nrNetwork/OplusVoNrCityInfo;->mSimType:Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;

    .line 15
    return-void
.end method


# virtual methods
.method public blacklist getSimType()Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/android/internal/telephony/nrNetwork/OplusVoNrCityInfo;->mSimType:Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;

    return-object v0
.end method

.method public blacklist getVoNrCities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/android/internal/telephony/nrNetwork/OplusVoNrCityInfo;->mVoNrCities:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getVoNrProvinces()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/android/internal/telephony/nrNetwork/OplusVoNrCityInfo;->mVoNrProvinces:Ljava/util/List;

    return-object v0
.end method

.method public blacklist setSimType(Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;)V
    .locals 0
    .param p1, "mSimType"    # Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;

    .line 22
    iput-object p1, p0, Lcom/android/internal/telephony/nrNetwork/OplusVoNrCityInfo;->mSimType:Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;

    .line 23
    return-void
.end method

.method public blacklist setVoNrCities(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 30
    .local p1, "vonrCities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/internal/telephony/nrNetwork/OplusVoNrCityInfo;->mVoNrCities:Ljava/util/List;

    .line 31
    return-void
.end method

.method public blacklist setVoNrProvinces(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 38
    .local p1, "vonrProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/internal/telephony/nrNetwork/OplusVoNrCityInfo;->mVoNrProvinces:Ljava/util/List;

    .line 39
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SimType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/nrNetwork/OplusVoNrCityInfo;->mSimType:Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const-string v1, " ,mVoNrCities = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-object v1, p0, Lcom/android/internal/telephony/nrNetwork/OplusVoNrCityInfo;->mSimType:Lcom/android/internal/telephony/nrNetwork/OplusNrModeConstant$SimType;

    const-string v2, ","

    if-eqz v1, :cond_0

    .line 47
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/nrNetwork/OplusVoNrCityInfo;->mVoNrCities:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 48
    iget-object v3, p0, Lcom/android/internal/telephony/nrNetwork/OplusVoNrCityInfo;->mVoNrCities:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    .end local v1    # "i":I
    :cond_0
    const-string v1, " ,saProvinceList = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget-object v1, p0, Lcom/android/internal/telephony/nrNetwork/OplusVoNrCityInfo;->mVoNrProvinces:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 54
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/nrNetwork/OplusVoNrCityInfo;->mVoNrProvinces:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 55
    iget-object v3, p0, Lcom/android/internal/telephony/nrNetwork/OplusVoNrCityInfo;->mVoNrProvinces:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 59
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
