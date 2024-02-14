.class public Lcom/android/ims/OplusSesImsManagerExt;
.super Ljava/lang/Object;
.source "OplusSesImsManagerExt.java"


# static fields
.field private static final blacklist OP15_MCCMNC_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "OplusSesImsManagerExt"

.field private static final blacklist mIsQcomPlatform:Z


# instance fields
.field private blacklist mContext:Landroid/content/Context;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 62
    const-string v0, "23410"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/ims/OplusSesImsManagerExt;->OP15_MCCMNC_LIST:Ljava/util/List;

    .line 66
    nop

    .line 67
    const-string v0, "ro.boot.hardware"

    const-string v1, "unknow"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "qcom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/ims/OplusSesImsManagerExt;->mIsQcomPlatform:Z

    .line 66
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/android/ims/OplusSesImsManagerExt;->mContext:Landroid/content/Context;

    .line 76
    return-void
.end method

.method private static blacklist getSimOperatorNumericForPhone(I)Ljava/lang/String;
    .locals 6
    .param p0, "phoneId"    # I

    .line 182
    const-string v0, ""

    .line 183
    .local v0, "mccMncPropertyName":Ljava/lang/String;
    const-string v1, ""

    .line 184
    .local v1, "mccMnc":Ljava/lang/String;
    const/4 v2, 0x0

    .line 185
    .local v2, "phoneType":I
    invoke-static {p0}, Lcom/android/ims/OplusSesImsManagerExt;->getSubIdUsingPhoneId(I)I

    move-result v3

    .line 186
    .local v3, "subId":I
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 187
    const-string v4, "OplusSesImsManagerExt"

    const-string v5, "Is Invalid Subscription id."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return-object v1

    .line 191
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/telephony/TelephonyManager;->getSimOperatorNumeric(I)Ljava/lang/String;

    move-result-object v1

    .line 192
    return-object v1
.end method

.method private static blacklist getSubIdUsingPhoneId(I)I
    .locals 4
    .param p0, "phoneId"    # I

    .line 155
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 156
    .local v0, "values":[I
    if-eqz v0, :cond_1

    array-length v1, v0

    if-gtz v1, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSubIdUsingPhoneId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", phoneId:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "OplusSesImsManagerExt"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    aget v1, v0, v2

    return v1

    .line 157
    :cond_1
    :goto_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v1

    return v1
.end method

.method private static blacklist isDisplayLog()Z
    .locals 2

    .line 204
    const-string v0, "persist.radio.entitlement.dbglog"

    const-string v1, "-1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "logDbg":Ljava/lang/String;
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private static blacklist isEntitlementEnabled()Z
    .locals 3

    .line 196
    nop

    .line 197
    const-string v0, "persist.vendor.entitlement_enabled"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 198
    .local v0, "isEntitlementEnabled":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in Op15fwkplugin, isEntitlementEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusSesImsManagerExt"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return v0
.end method

.method private static blacklist isMccMncReady(I)Z
    .locals 2
    .param p0, "phoneId"    # I

    .line 171
    invoke-static {p0}, Lcom/android/ims/OplusSesImsManagerExt;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "mccMnc":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    sget-boolean v1, Lcom/android/ims/OplusSesImsManagerExt;->mIsQcomPlatform:Z

    return v1

    .line 178
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private static blacklist isOp15Card(I)Z
    .locals 2
    .param p0, "phoneId"    # I

    .line 166
    invoke-static {p0}, Lcom/android/ims/OplusSesImsManagerExt;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "mccMnc":Ljava/lang/String;
    sget-object v1, Lcom/android/ims/OplusSesImsManagerExt;->OP15_MCCMNC_LIST:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public blacklist isFeatureEnabledByPlatform(Landroid/content/Context;II)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "feature"    # I
    .param p3, "phoneId"    # I

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "feature:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", phoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusSesImsManagerExt"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    if-eqz p2, :cond_1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 93
    :cond_1
    :goto_0
    invoke-virtual {p0, p2, p3}, Lcom/android/ims/OplusSesImsManagerExt;->isFeatureProvisionedOnDevice(II)Z

    move-result v0

    return v0
.end method

.method public blacklist isFeatureProvisionedOnDevice(II)Z
    .locals 8
    .param p1, "feature"    # I
    .param p2, "phoneId"    # I

    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, "imsConfig":Lcom/android/ims/ImsConfig;
    iget-object v1, p0, Lcom/android/ims/OplusSesImsManagerExt;->mContext:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    .line 102
    .local v1, "imsManager":Lcom/android/ims/ImsManager;
    const/4 v2, 0x0

    .line 103
    .local v2, "value":I
    const/4 v3, 0x0

    .line 104
    .local v3, "result":Z
    invoke-static {}, Lcom/android/ims/OplusSesImsManagerExt;->isEntitlementEnabled()Z

    move-result v4

    const/4 v5, 0x1

    const-string v6, "OplusSesImsManagerExt"

    if-nez v4, :cond_0

    .line 105
    const-string v4, "Entitlement sys property not enabled return true"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return v5

    .line 108
    :cond_0
    invoke-static {p2}, Lcom/android/ims/OplusSesImsManagerExt;->isMccMncReady(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p2}, Lcom/android/ims/OplusSesImsManagerExt;->isOp15Card(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 109
    const-string v4, "This operator is no need to check provision."

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return v5

    .line 112
    :cond_1
    if-eqz v1, :cond_4

    .line 114
    :try_start_0
    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    move-result-object v4

    move-object v0, v4

    .line 115
    if-eqz v0, :cond_3

    .line 116
    if-nez p1, :cond_2

    .line 117
    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Lcom/android/ims/ImsConfig;->getProvisionedValue(I)I

    move-result v4

    move v2, v4

    .line 119
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VoLTE provisioned value = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    if-ne v2, v5, :cond_3

    .line 121
    const/4 v3, 0x1

    goto :goto_0

    .line 124
    :cond_2
    const/16 v4, 0x1c

    invoke-virtual {v0, v4}, Lcom/android/ims/ImsConfig;->getProvisionedValue(I)I

    move-result v4

    move v2, v4

    .line 126
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VoWifi provisioned value = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    if-ne v2, v5, :cond_3

    .line 128
    const/4 v3, 0x1

    goto :goto_0

    .line 135
    :catch_0
    move-exception v4

    .line 136
    .local v4, "e":Ljava/lang/RuntimeException;
    const-string v5, "ImsConfig not ready"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {v4}, Ljava/lang/RuntimeException;->printStackTrace()V

    .end local v4    # "e":Ljava/lang/RuntimeException;
    goto :goto_0

    .line 132
    :catch_1
    move-exception v4

    .line 133
    .local v4, "e":Lcom/android/ims/ImsException;
    const-string v5, "Volte not updated, ImsConfig null"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {v4}, Lcom/android/ims/ImsException;->printStackTrace()V

    .line 138
    .end local v4    # "e":Lcom/android/ims/ImsException;
    :cond_3
    :goto_0
    goto :goto_1

    .line 140
    :cond_4
    const-string v4, "Volte not updated, ImsManager null"

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isFeatureProvisionedOnDevice returns "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return v3
.end method
