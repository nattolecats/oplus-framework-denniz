.class public Lcom/oplus/internal/telephony/GsmCdmaPhoneExt;
.super Ljava/lang/Object;
.source "GsmCdmaPhoneExt.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "GsmCdmaPhoneExt"


# instance fields
.field private blacklist mImpl:Lcom/android/internal/telephony/IOplusGsmCdmaPhone;

.field private blacklist mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/oplus/internal/telephony/GsmCdmaPhoneExt;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 37
    if-eqz p1, :cond_0

    .line 38
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    sget-object v1, Lcom/android/internal/telephony/IOplusGsmCdmaPhone;->DEFAULT:Lcom/android/internal/telephony/IOplusGsmCdmaPhone;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/OplusTelephonyFactory;->getFeatureFromCache(ILcom/android/internal/telephony/common/IOplusCommonFeature;)Lcom/android/internal/telephony/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IOplusGsmCdmaPhone;

    iput-object v0, p0, Lcom/oplus/internal/telephony/GsmCdmaPhoneExt;->mImpl:Lcom/android/internal/telephony/IOplusGsmCdmaPhone;

    goto :goto_0

    .line 40
    :cond_0
    const-string v0, "fatal error phone is null"

    invoke-static {v0}, Lcom/oplus/internal/telephony/GsmCdmaPhoneExt;->loge(Ljava/lang/String;)V

    .line 42
    :goto_0
    return-void
.end method

.method private static blacklist logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 63
    const-string v0, "GsmCdmaPhoneExt"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void
.end method

.method private static blacklist loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 66
    const-string v0, "GsmCdmaPhoneExt"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void
.end method


# virtual methods
.method public blacklist registerForCrssSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lcom/oplus/internal/telephony/GsmCdmaPhoneExt;->mImpl:Lcom/android/internal/telephony/IOplusGsmCdmaPhone;

    if-eqz v0, :cond_0

    .line 47
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/IOplusGsmCdmaPhone;->registerForCrssSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    .line 49
    :cond_0
    const-string v0, "fatal error phone is null"

    invoke-static {v0}, Lcom/oplus/internal/telephony/GsmCdmaPhoneExt;->loge(Ljava/lang/String;)V

    .line 52
    :goto_0
    return-void
.end method

.method public blacklist unregisterForCrssSuppServiceNotification(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 55
    iget-object v0, p0, Lcom/oplus/internal/telephony/GsmCdmaPhoneExt;->mImpl:Lcom/android/internal/telephony/IOplusGsmCdmaPhone;

    if-eqz v0, :cond_0

    .line 56
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IOplusGsmCdmaPhone;->unregisterForCrssSuppServiceNotification(Landroid/os/Handler;)V

    goto :goto_0

    .line 58
    :cond_0
    const-string v0, "fatal error phone is null"

    invoke-static {v0}, Lcom/oplus/internal/telephony/GsmCdmaPhoneExt;->loge(Ljava/lang/String;)V

    .line 60
    :goto_0
    return-void
.end method
