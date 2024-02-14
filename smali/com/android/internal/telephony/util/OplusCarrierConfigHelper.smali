.class public Lcom/android/internal/telephony/util/OplusCarrierConfigHelper;
.super Ljava/lang/Object;
.source "OplusCarrierConfigHelper.java"


# static fields
.field public static final blacklist KEY_OPLUS_CARRIER_IS_SUPPORT_ECHOLOCATE:Ljava/lang/String; = "oplus_carrier_is_support_echolocate"

.field public static final blacklist KEY_OPLUS_CARRIER_IS_SUPPORT_UST_CARRIER_CONFIG:Ljava/lang/String; = "oplus_carrier_is_support_ust_carrier_config"

.field public static final blacklist KEY_OPLUS_CARRIER_IS_USA:Ljava/lang/String; = "oplus_carrier_is_usa"

.field public static final blacklist KEY_OPLUS_CARRIER_IS_UST:Ljava/lang/String; = "oplus_carrier_is_ust"

.field public static final blacklist KEY_OPLUS_CARRIER_IS_USV:Ljava/lang/String; = "oplus_carrier_is_usv"

.field public static final blacklist KEY_OPLUS_CARRIER_NAME:Ljava/lang/String; = "oplus_carrier_name"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getBoolean(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I
    .param p2, "key"    # Ljava/lang/String;

    .line 63
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/util/OplusCarrierConfigHelper;->getBoolean(Landroid/content/Context;ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist getBoolean(Landroid/content/Context;ILjava/lang/String;Z)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Z

    .line 68
    invoke-static {p0, p1}, Lcom/android/internal/telephony/util/OplusCarrierConfigHelper;->getCarrierConfigBundle(Landroid/content/Context;I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 69
    .local v0, "bundle":Landroid/os/PersistableBundle;
    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0, p2, p3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1

    .line 72
    :cond_0
    return p3
.end method

.method public static blacklist getCarrierConfigBundle(Landroid/content/Context;I)Landroid/os/PersistableBundle;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .line 50
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 51
    .local v0, "subIds":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 52
    nop

    .line 53
    const-string v1, "carrier_config"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 54
    .local v1, "carrierConfigManager":Landroid/telephony/CarrierConfigManager;
    if-eqz v1, :cond_0

    .line 55
    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    return-object v2

    .line 58
    .end local v1    # "carrierConfigManager":Landroid/telephony/CarrierConfigManager;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist getInt(Landroid/content/Context;ILjava/lang/String;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I
    .param p2, "key"    # Ljava/lang/String;

    .line 77
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/util/OplusCarrierConfigHelper;->getInt(Landroid/content/Context;ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static blacklist getInt(Landroid/content/Context;ILjava/lang/String;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .line 82
    invoke-static {p0, p1}, Lcom/android/internal/telephony/util/OplusCarrierConfigHelper;->getCarrierConfigBundle(Landroid/content/Context;I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 83
    .local v0, "bundle":Landroid/os/PersistableBundle;
    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0, p2, p3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1

    .line 86
    :cond_0
    return p3
.end method

.method public static blacklist getString(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I
    .param p2, "key"    # Ljava/lang/String;

    .line 91
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/util/OplusCarrierConfigHelper;->getString(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getString(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;

    .line 96
    invoke-static {p0, p1}, Lcom/android/internal/telephony/util/OplusCarrierConfigHelper;->getCarrierConfigBundle(Landroid/content/Context;I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 97
    .local v0, "bundle":Landroid/os/PersistableBundle;
    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0, p2, p3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 100
    :cond_0
    return-object p3
.end method

.method public static blacklist isSupportEcholocate(Landroid/content/Context;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .line 120
    const-string v0, "oplus_carrier_is_support_echolocate"

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/util/OplusCarrierConfigHelper;->getBoolean(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isSupportUstCarrierConfig(Landroid/content/Context;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .line 125
    const-string v0, "oplus_carrier_is_support_ust_carrier_config"

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/util/OplusCarrierConfigHelper;->getBoolean(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isUsaCard(Landroid/content/Context;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .line 115
    const-string v0, "oplus_carrier_is_usa"

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/util/OplusCarrierConfigHelper;->getBoolean(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isUstCard(Landroid/content/Context;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .line 110
    const-string v0, "oplus_carrier_is_ust"

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/util/OplusCarrierConfigHelper;->getBoolean(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isUsvCard(Landroid/content/Context;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .line 105
    const-string v0, "oplus_carrier_is_usv"

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/util/OplusCarrierConfigHelper;->getBoolean(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method
