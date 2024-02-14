.class public Lcom/oplus/telephony/TelephonyFeatureManagerExt;
.super Ljava/lang/Object;
.source "TelephonyFeatureManagerExt.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "TelephonyFeatureManagerExt"

.field public static final whitelist TELEPHONY_FEATURE_EXT:Ljava/lang/String; = "telephony_feature_ext"


# instance fields
.field private blacklist mContext:Landroid/content/Context;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 80
    .local v0, "appContext":Landroid/content/Context;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 80
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    iput-object v0, p0, Lcom/oplus/telephony/TelephonyFeatureManagerExt;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 84
    :cond_0
    iput-object p1, p0, Lcom/oplus/telephony/TelephonyFeatureManagerExt;->mContext:Landroid/content/Context;

    .line 86
    :goto_0
    return-void
.end method

.method public static blacklist from(Landroid/content/Context;)Lcom/oplus/telephony/TelephonyFeatureManagerExt;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 93
    const-string v0, "telephony_feature_ext"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/telephony/TelephonyFeatureManagerExt;

    return-object v0
.end method


# virtual methods
.method public whitelist getConfigForSubId(I)Landroid/os/PersistableBundle;
    .locals 2
    .param p1, "subId"    # I

    .line 131
    iget-object v0, p0, Lcom/oplus/telephony/TelephonyFeatureManagerExt;->mContext:Landroid/content/Context;

    .line 132
    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 133
    .local v0, "carrierConfigManager":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {v0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getPlmnConfigForSlotId(I)Landroid/os/PersistableBundle;
    .locals 2
    .param p1, "slotId"    # I

    .line 108
    iget-object v0, p0, Lcom/oplus/telephony/TelephonyFeatureManagerExt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/OplusTelephonyManager;->getInstance(Landroid/content/Context;)Landroid/telephony/OplusTelephonyManager;

    move-result-object v0

    .line 109
    .local v0, "oplusTelephonyManager":Landroid/telephony/OplusTelephonyManager;
    invoke-virtual {v0, p1}, Landroid/telephony/OplusTelephonyManager;->getPlmnConfigForSlotId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    return-object v1
.end method
