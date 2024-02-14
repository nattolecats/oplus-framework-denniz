.class public Lcom/oplus/wrapper/telephony/SubscriptionManager;
.super Ljava/lang/Object;
.source "SubscriptionManager.java"


# instance fields
.field private final blacklist mSubscriptionManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method public constructor whitelist <init>(Landroid/telephony/SubscriptionManager;)V
    .locals 0
    .param p1, "subscriptionManager"    # Landroid/telephony/SubscriptionManager;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/oplus/wrapper/telephony/SubscriptionManager;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 38
    return-void
.end method

.method public static whitelist getDefaultVoicePhoneId()I
    .locals 1

    .line 99
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v0

    return v0
.end method

.method public static whitelist getPhoneId(I)I
    .locals 1
    .param p0, "subId"    # I

    .line 90
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method public static whitelist getSubId(I)[I
    .locals 1
    .param p0, "slotIndex"    # I

    .line 71
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist getDefaultDataSubscriptionInfo()Landroid/telephony/SubscriptionInfo;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/oplus/wrapper/telephony/SubscriptionManager;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDefaultVoiceSubscriptionInfo()Landroid/telephony/SubscriptionInfo;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/oplus/wrapper/telephony/SubscriptionManager;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist isActiveSubId(I)Z
    .locals 1
    .param p1, "subId"    # I

    .line 81
    iget-object v0, p0, Lcom/oplus/wrapper/telephony/SubscriptionManager;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->isActiveSubId(I)Z

    move-result v0

    return v0
.end method
