.class public Landroid/net/wifi/owm/OwmFeatureActiveMonitor;
.super Ljava/lang/Object;
.source "OwmFeatureActiveMonitor.java"

# interfaces
.implements Landroid/net/wifi/owm/IOwmNetHealthCommon;


# static fields
.field private static final blacklist PRIVATE_DNS_MODE:Ljava/lang/String; = "private_dns_mode"

.field private static final blacklist PRIVATE_DNS_MODE_OFF:Ljava/lang/String; = "off"

.field private static final blacklist TAG:Ljava/lang/String; = "OwmFeatureActiveMonitor"

.field private static volatile blacklist sInstance:Landroid/net/wifi/owm/OwmFeatureActiveMonitor;


# instance fields
.field private blacklist mBandwidth:I

.field private blacklist mBgDataLimitAct:Z

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mDisConnOptAct:Z

.field private blacklist mDualStaAct:Z

.field private blacklist mIpType:Ljava/lang/String;

.field private blacklist mMtuProbAct:Z

.field private blacklist mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

.field private blacklist mPrivateDnsAct:Z

.field private blacklist mPrivateDnsMode:Ljava/lang/String;

.field private blacklist mQPowerAct:Z

.field private blacklist mSelfCureAct:Z

.field private blacklist mSlaAct:Z

.field private blacklist mSmartGearAct:Z

.field private blacklist mStaticArpAct:Z

.field private blacklist mStaticIpAct:Z

.field private blacklist mTopPkgNetLimitAct:Z

.field private blacklist mTriggerDisConnOptTime:Ljava/lang/String;

.field private blacklist mTriggerSelfCureTime:Ljava/lang/String;

.field private blacklist mVerboseLoggingEnabled:Z

.field private blacklist mVpnAct:Z

.field private blacklist mWifiAssistToCellAct:Z

.field private blacklist mWifiAssistToCellCnt:I

.field private blacklist mWifiConnected:Z

.field private blacklist mWlanAssistAct:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 46
    const/4 v0, 0x0

    sput-object v0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->sInstance:Landroid/net/wifi/owm/OwmFeatureActiveMonitor;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    .line 48
    iput-object v0, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mContext:Landroid/content/Context;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mVerboseLoggingEnabled:Z

    .line 50
    iput-boolean v0, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mWifiConnected:Z

    .line 53
    const-string v1, ""

    iput-object v1, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mIpType:Ljava/lang/String;

    .line 54
    iput-boolean v0, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mSlaAct:Z

    .line 55
    iput-boolean v0, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mDualStaAct:Z

    .line 56
    iput-boolean v0, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mWlanAssistAct:Z

    .line 58
    iput-boolean v0, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mStaticIpAct:Z

    .line 59
    iput-boolean v0, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mStaticArpAct:Z

    .line 61
    iput-boolean v0, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mPrivateDnsAct:Z

    .line 62
    iput-object v1, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mPrivateDnsMode:Ljava/lang/String;

    .line 64
    iput-boolean v0, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mSmartGearAct:Z

    .line 65
    iput-boolean v0, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mQPowerAct:Z

    .line 67
    iput-boolean v0, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mDisConnOptAct:Z

    .line 68
    iput-object v1, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mTriggerDisConnOptTime:Ljava/lang/String;

    .line 70
    iput-boolean v0, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mSelfCureAct:Z

    .line 71
    iput-object v1, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mTriggerSelfCureTime:Ljava/lang/String;

    .line 73
    iput-boolean v0, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mVpnAct:Z

    .line 74
    iput-boolean v0, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mMtuProbAct:Z

    .line 75
    iput-boolean v0, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mBgDataLimitAct:Z

    .line 76
    iput-boolean v0, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mTopPkgNetLimitAct:Z

    .line 78
    const/4 v1, -0x1

    iput v1, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mBandwidth:I

    .line 80
    iput v0, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mWifiAssistToCellCnt:I

    .line 81
    iput-boolean v0, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mWifiAssistToCellAct:Z

    .line 85
    iput-object p1, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mContext:Landroid/content/Context;

    .line 86
    invoke-static {p1}, Landroid/net/wifi/owm/OwmBaseUtils;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmBaseUtils;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    .line 87
    return-void
.end method

.method private blacklist checkAndUpdateMtuPorbActed()V
    .locals 1

    .line 228
    const-string v0, "checkAndUpdateMtuPorbActed"

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->logD(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmBaseUtils;->isMtuPorbEnabled()Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mMtuProbAct:Z

    .line 230
    return-void
.end method

.method private blacklist checkAndUpdatePrivateDnsActed()V
    .locals 3

    .line 212
    const-string v0, "checkAndUpdatePrivateDnsActed"

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->logD(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "private_dns_mode"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mPrivateDnsMode:Ljava/lang/String;

    .line 214
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAndUpdatePrivateDnsActed, the mPrivateDnsMode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mPrivateDnsMode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->logD(Ljava/lang/String;)V

    .line 216
    iput-boolean v1, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mPrivateDnsAct:Z

    .line 217
    return-void

    .line 220
    :cond_0
    const-string v2, "off"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mPrivateDnsAct:Z

    goto :goto_0

    .line 223
    :cond_1
    iput-boolean v1, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mPrivateDnsAct:Z

    .line 225
    :goto_0
    return-void
.end method

.method private blacklist checkAndUpdateTopPkgNetLimitActed()V
    .locals 1

    .line 233
    const-string v0, "checkAndUpdateTopPkgNetLimitActed"

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->logD(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmBaseUtils;->isTopPkgWifiNetLimit()Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mTopPkgNetLimitAct:Z

    .line 235
    return-void
.end method

.method private blacklist checkAndUpdateWlanAssitActed()V
    .locals 3

    .line 207
    const-string v0, "checkAndUpdateWlanAssitActed"

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->logD(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_auto_change_access_point"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mWlanAssistAct:Z

    .line 209
    return-void
.end method

.method private blacklist generateRecordToDatabaseMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 290
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->checkAndUpdateWlanAssitActed()V

    .line 291
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->checkAndUpdatePrivateDnsActed()V

    .line 292
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->checkAndUpdateMtuPorbActed()V

    .line 293
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->checkAndUpdateTopPkgNetLimitActed()V

    .line 295
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 297
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mIpType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "IpType"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mSlaAct:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SlaAct"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mDualStaAct:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "DualStaAct"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mWlanAssistAct:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "WlanAssistAct"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mStaticIpAct:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "StaticIpAct"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mStaticArpAct:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "StaticArpAct"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mPrivateDnsAct:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "PrivateDnsAct"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mPrivateDnsMode:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "PrivateDnsMode"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mSmartGearAct:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SmartGearAct"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mQPowerAct:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "QPowerAct"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mDisConnOptAct:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "DisConnOptAct"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mTriggerDisConnOptTime:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "TriggerDisConnOptTime"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mSelfCureAct:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SelfCureAct"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mTriggerSelfCureTime:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "TriggerSelfCureTime"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mVpnAct:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "VpnAct"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mMtuProbAct:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MtuProbAct"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mBgDataLimitAct:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "BgDataLimitAct"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mTopPkgNetLimitAct:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "TopPkgNetLimitAct"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mBandwidth:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Bandwidth"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mWifiAssistToCellAct:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "WifiAssistToCellAct"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mWifiAssistToCellCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiAssistToCellCnt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    return-object v0
.end method

.method public static whitelist getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmFeatureActiveMonitor;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 91
    sget-object v0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->sInstance:Landroid/net/wifi/owm/OwmFeatureActiveMonitor;

    if-nez v0, :cond_1

    .line 92
    const-class v0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;

    monitor-enter v0

    .line 93
    :try_start_0
    sget-object v1, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->sInstance:Landroid/net/wifi/owm/OwmFeatureActiveMonitor;

    if-nez v1, :cond_0

    .line 94
    new-instance v1, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;

    invoke-direct {v1, p0}, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->sInstance:Landroid/net/wifi/owm/OwmFeatureActiveMonitor;

    .line 96
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 99
    :cond_1
    :goto_0
    sget-object v0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->sInstance:Landroid/net/wifi/owm/OwmFeatureActiveMonitor;

    return-object v0
.end method

.method private blacklist logD(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .line 336
    iget-boolean v0, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mScreenOn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/wifi/owm/OwmBaseUtils;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmBaseUtils;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmBaseUtils;->isScreenOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OwmFeatureActiveMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_0
    return-void
.end method

.method private blacklist resetAllRecordAfterDisconnected()V
    .locals 2

    .line 240
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mIpType:Ljava/lang/String;

    .line 241
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mSlaAct:Z

    .line 242
    iput-boolean v1, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mDualStaAct:Z

    .line 243
    iput-boolean v1, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mWlanAssistAct:Z

    .line 245
    iput-boolean v1, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mStaticIpAct:Z

    .line 246
    iput-boolean v1, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mStaticArpAct:Z

    .line 248
    iput-boolean v1, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mPrivateDnsAct:Z

    .line 249
    iput-object v0, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mPrivateDnsMode:Ljava/lang/String;

    .line 251
    iput-boolean v1, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mSmartGearAct:Z

    .line 252
    iput-boolean v1, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mQPowerAct:Z

    .line 254
    iput-boolean v1, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mDisConnOptAct:Z

    .line 255
    iput-object v0, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mTriggerDisConnOptTime:Ljava/lang/String;

    .line 261
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mBandwidth:I

    .line 263
    iput v1, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mWifiAssistToCellCnt:I

    .line 264
    return-void
.end method


# virtual methods
.method public whitelist addIpVersionRecord(Landroid/net/LinkProperties;)V
    .locals 5
    .param p1, "lp"    # Landroid/net/LinkProperties;

    .line 103
    if-nez p1, :cond_0

    .line 104
    return-void

    .line 107
    :cond_0
    invoke-virtual {p1}, Landroid/net/LinkProperties;->isIpv4Provisioned()Z

    move-result v0

    .line 108
    .local v0, "isIpv4":Z
    invoke-virtual {p1}, Landroid/net/LinkProperties;->hasGlobalIpv6Address()Z

    move-result v1

    .line 109
    .local v1, "isIpv6":Z
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 111
    .local v2, "isDualStack":Z
    :goto_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 112
    const-string v3, "V4_V6"

    iput-object v3, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mIpType:Ljava/lang/String;

    goto :goto_1

    .line 113
    :cond_2
    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    .line 114
    const-string v3, "V4"

    iput-object v3, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mIpType:Ljava/lang/String;

    goto :goto_1

    .line 115
    :cond_3
    if-nez v0, :cond_4

    if-eqz v1, :cond_4

    .line 116
    const-string v3, "V6"

    iput-object v3, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mIpType:Ljava/lang/String;

    goto :goto_1

    .line 118
    :cond_4
    const-string v3, "UnKnown"

    iput-object v3, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mIpType:Ljava/lang/String;

    .line 121
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IP Type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mIpType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", IPv4: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", IPv6:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->logD(Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public whitelist addOplusFeatureActivedRecord(II)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "actState"    # I

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addOplusFeatureActivedRecord: featureId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", actState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->logD(Ljava/lang/String;)V

    .line 188
    packed-switch p1, :pswitch_data_0

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addOplusFeatureActivedRecord, Unknow feature:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->logD(Ljava/lang/String;)V

    goto :goto_0

    .line 190
    :pswitch_0
    iput p2, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mBandwidth:I

    .line 191
    iget-object v0, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmHTMonitor;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmHTMonitor;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mBandwidth:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/owm/OwmHTMonitor;->setStaConnect40M(I)V

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OPLUS_WIFI_BANDWIDTH:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mBandwidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->logD(Ljava/lang/String;)V

    .line 193
    nop

    .line 198
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist addOplusFeatureActivedRecord(IZ)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "isActived"    # Z

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addOplusFeatureActivedRecord: featureId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isActived = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->logD(Ljava/lang/String;)V

    .line 141
    packed-switch p1, :pswitch_data_0

    .line 180
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addOplusFeatureActivedRecord, Unknow feature:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->logD(Ljava/lang/String;)V

    goto :goto_0

    .line 176
    :pswitch_1
    iput-boolean p2, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mSelfCureAct:Z

    .line 177
    iget-object v0, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmBaseUtils;->getCurDateTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mTriggerSelfCureTime:Ljava/lang/String;

    .line 178
    goto :goto_0

    .line 170
    :pswitch_2
    iput-boolean p2, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mVpnAct:Z

    .line 171
    goto :goto_0

    .line 167
    :pswitch_3
    iput-boolean p2, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mBgDataLimitAct:Z

    .line 168
    goto :goto_0

    .line 163
    :pswitch_4
    iput-boolean p2, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mDisConnOptAct:Z

    .line 164
    iget-object v0, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mOwmBaseUtils:Landroid/net/wifi/owm/OwmBaseUtils;

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmBaseUtils;->getCurDateTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mTriggerDisConnOptTime:Ljava/lang/String;

    .line 165
    goto :goto_0

    .line 160
    :pswitch_5
    iput-boolean p2, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mQPowerAct:Z

    .line 161
    goto :goto_0

    .line 157
    :pswitch_6
    iput-boolean p2, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mSmartGearAct:Z

    .line 158
    goto :goto_0

    .line 173
    :pswitch_7
    iput-boolean p2, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mStaticArpAct:Z

    .line 174
    goto :goto_0

    .line 151
    :pswitch_8
    iput-boolean p2, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mStaticIpAct:Z

    .line 152
    if-eqz p2, :cond_0

    .line 153
    iget-object v0, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmDhcpMonitor;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmDhcpMonitor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmDhcpMonitor;->addDhcpStaticIpRecord()V

    goto :goto_0

    .line 147
    :pswitch_9
    iput-boolean p2, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mSlaAct:Z

    .line 148
    iget-object v0, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OplusOwmMonitorKit;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->sendSlaActEventMesg(Z)V

    .line 149
    goto :goto_0

    .line 143
    :pswitch_a
    iput-boolean p2, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mDualStaAct:Z

    .line 144
    iget-object v0, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OplusOwmMonitorKit;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->sendDualStaActEventMesg(Z)V

    .line 145
    nop

    .line 183
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public whitelist addWifiAssistantSwitchRecord(Z)V
    .locals 2
    .param p1, "isSwitched"    # Z

    .line 201
    iget v0, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mWifiAssistToCellCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mWifiAssistToCellCnt:I

    .line 202
    iput-boolean p1, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mWifiAssistToCellAct:Z

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Switched to cellular: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mWifiAssistToCellAct:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Switched "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mWifiAssistToCellCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " times"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->logD(Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method public whitelist enableVerboseLogging(Z)V
    .locals 0
    .param p1, "verbose"    # Z

    .line 332
    iput-boolean p1, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mVerboseLoggingEnabled:Z

    .line 333
    return-void
.end method

.method public whitelist getCurRecordForNetHealth()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 286
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->generateRecordToDatabaseMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getRecordToDatabase()Ljava/lang/String;
    .locals 2

    .line 280
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->generateRecordToDatabaseMap()Ljava/util/Map;

    move-result-object v0

    .line 282
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist setWifiConnState(Z)V
    .locals 2
    .param p1, "isConnected"    # Z

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWifiConnState, mWifiConnected = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mWifiConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isConnected = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->logD(Ljava/lang/String;)V

    .line 126
    iput-boolean p1, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mWifiConnected:Z

    .line 128
    if-eqz p1, :cond_0

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->mWifiAssistToCellAct:Z

    goto :goto_0

    .line 133
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmFeatureActiveMonitor;->resetAllRecordAfterDisconnected()V

    .line 135
    :goto_0
    return-void
.end method
