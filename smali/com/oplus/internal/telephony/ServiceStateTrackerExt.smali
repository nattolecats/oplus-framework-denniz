.class public Lcom/oplus/internal/telephony/ServiceStateTrackerExt;
.super Ljava/lang/Object;
.source "ServiceStateTrackerExt.java"


# instance fields
.field private blacklist mImpl:Lcom/android/internal/telephony/IOplusServiceStateTracker;

.field private blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mServiceStateTracker:Lcom/android/internal/telephony/ServiceStateTracker;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/oplus/internal/telephony/ServiceStateTrackerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 33
    if-eqz p1, :cond_0

    .line 34
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    sget-object v1, Lcom/android/internal/telephony/IOplusServiceStateTracker;->DEFAULT:Lcom/android/internal/telephony/IOplusServiceStateTracker;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/OplusTelephonyFactory;->getFeatureFromCache(ILcom/android/internal/telephony/common/IOplusCommonFeature;)Lcom/android/internal/telephony/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IOplusServiceStateTracker;

    iput-object v0, p0, Lcom/oplus/internal/telephony/ServiceStateTrackerExt;->mImpl:Lcom/android/internal/telephony/IOplusServiceStateTracker;

    .line 35
    iget-object v0, p0, Lcom/oplus/internal/telephony/ServiceStateTrackerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/internal/telephony/ServiceStateTrackerExt;->mServiceStateTracker:Lcom/android/internal/telephony/ServiceStateTracker;

    .line 37
    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist getLocatedPlmn()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/oplus/internal/telephony/ServiceStateTrackerExt;->mImpl:Lcom/android/internal/telephony/IOplusServiceStateTracker;

    if-eqz v0, :cond_0

    .line 47
    invoke-interface {v0}, Lcom/android/internal/telephony/IOplusServiceStateTracker;->getLocatedPlmn()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 49
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist hasPendingRadioPowerOff()Z
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/oplus/internal/telephony/ServiceStateTrackerExt;->mServiceStateTracker:Lcom/android/internal/telephony/ServiceStateTracker;

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getWrapper()Lcom/android/internal/telephony/IServiceStateTrackerWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IServiceStateTrackerWrapper;->hasPendingRadioPowerOff()Z

    move-result v0

    return v0

    .line 42
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
