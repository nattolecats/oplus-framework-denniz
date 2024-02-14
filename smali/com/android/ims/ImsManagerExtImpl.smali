.class public Lcom/android/ims/ImsManagerExtImpl;
.super Ljava/lang/Object;
.source "ImsManagerExtImpl.java"

# interfaces
.implements Lcom/android/ims/IImsManagerExt;


# static fields
.field private static final blacklist CONFIG_SUPPORT_VIWIFI_BOOL:Ljava/lang/String; = "config_oplus_support_viwifi_bool"

.field private static final blacklist DBG:Z

.field private static final blacklist SDEBUG:Z

.field private static final blacklist SECURE_DBG:Z

.field private static final blacklist SWITCH_LOG:Z

.field private static final blacklist TAG:Ljava/lang/String; = "ImsManagerExtImpl"


# instance fields
.field private blacklist mConfigManager:Landroid/telephony/CarrierConfigManager;

.field private blacklist mContext:Landroid/content/Context;

.field public blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mImsManager:Lcom/android/ims/ImsManager;

.field private blacklist mPhoneId:I

.field private blacklist mSesImsManagerExt:Lcom/android/ims/OplusSesImsManagerExt;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 32
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/ims/ImsManagerExtImpl;->SWITCH_LOG:Z

    .line 33
    const-string v2, "persist.radio.securitylog.debug"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/ims/ImsManagerExtImpl;->SECURE_DBG:Z

    .line 34
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    sput-boolean v1, Lcom/android/ims/ImsManagerExtImpl;->SDEBUG:Z

    .line 35
    sput-boolean v1, Lcom/android/ims/ImsManagerExtImpl;->DBG:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;ILcom/android/ims/ImsManager;Landroid/telephony/CarrierConfigManager;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .param p3, "imsManager"    # Lcom/android/ims/ImsManager;
    .param p4, "carrierConfigManager"    # Landroid/telephony/CarrierConfigManager;
    .param p5, "executor"    # Ljava/util/concurrent/Executor;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ims/ImsManagerExtImpl;->mSesImsManagerExt:Lcom/android/ims/OplusSesImsManagerExt;

    .line 59
    iput-object p1, p0, Lcom/android/ims/ImsManagerExtImpl;->mContext:Landroid/content/Context;

    .line 60
    iput p2, p0, Lcom/android/ims/ImsManagerExtImpl;->mPhoneId:I

    .line 61
    iput-object p3, p0, Lcom/android/ims/ImsManagerExtImpl;->mImsManager:Lcom/android/ims/ImsManager;

    .line 62
    if-nez p3, :cond_0

    .line 63
    invoke-static {p1, p2}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/ImsManagerExtImpl;->mImsManager:Lcom/android/ims/ImsManager;

    .line 65
    :cond_0
    iput-object p4, p0, Lcom/android/ims/ImsManagerExtImpl;->mConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 66
    if-nez p4, :cond_1

    .line 67
    const-string v0, "carrier_config"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    iput-object v0, p0, Lcom/android/ims/ImsManagerExtImpl;->mConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 70
    :cond_1
    iput-object p5, p0, Lcom/android/ims/ImsManagerExtImpl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 73
    new-instance v0, Lcom/android/ims/OplusSesImsManagerExt;

    iget-object v1, p0, Lcom/android/ims/ImsManagerExtImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/ims/OplusSesImsManagerExt;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/ims/ImsManagerExtImpl;->mSesImsManagerExt:Lcom/android/ims/OplusSesImsManagerExt;

    .line 75
    const-string v0, "OplusImsManagerExt init!!"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManagerExtImpl;->log(Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 7
    .param p1, "base"    # Ljava/lang/Object;

    .line 52
    move-object v0, p1

    check-cast v0, Lcom/android/ims/ImsManager;

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->getWrapper()Lcom/android/ims/IImsManagerWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/ims/IImsManagerWrapper;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v0, p1

    check-cast v0, Lcom/android/ims/ImsManager;

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->getWrapper()Lcom/android/ims/IImsManagerWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/ims/IImsManagerWrapper;->getPhoneId()I

    move-result v3

    move-object v4, p1

    check-cast v4, Lcom/android/ims/ImsManager;

    move-object v0, p1

    check-cast v0, Lcom/android/ims/ImsManager;

    .line 53
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->getWrapper()Lcom/android/ims/IImsManagerWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/ims/IImsManagerWrapper;->getCarrierConfigManager()Landroid/telephony/CarrierConfigManager;

    move-result-object v5

    move-object v0, p1

    check-cast v0, Lcom/android/ims/ImsManager;

    .line 54
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->getWrapper()Lcom/android/ims/IImsManagerWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/ims/IImsManagerWrapper;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    .line 52
    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/ims/ImsManagerExtImpl;-><init>(Landroid/content/Context;ILcom/android/ims/ImsManager;Landroid/telephony/CarrierConfigManager;Ljava/util/concurrent/Executor;)V

    .line 55
    return-void
.end method

.method public static blacklist getSubId(I)I
    .locals 4
    .param p0, "phoneId"    # I

    .line 276
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 277
    .local v0, "subIds":[I
    const/4 v1, -0x1

    .line 278
    .local v1, "subId":I
    if-eqz v0, :cond_0

    array-length v2, v0

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 279
    const/4 v2, 0x0

    aget v1, v0, v2

    .line 281
    :cond_0
    return v1
.end method

.method private blacklist log(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsManagerExtImpl ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/ims/ImsManagerExtImpl;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsManagerExtImpl ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/ims/ImsManagerExtImpl;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    return-void
.end method


# virtual methods
.method public blacklist getBooleanCarrierConfigForSlot(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .line 227
    iget v0, p0, Lcom/android/ims/ImsManagerExtImpl;->mPhoneId:I

    invoke-static {v0}, Lcom/android/ims/ImsManagerExtImpl;->getSubId(I)I

    move-result v0

    .line 228
    .local v0, "subId":I
    const/4 v1, 0x0

    .line 229
    .local v1, "b":Landroid/os/PersistableBundle;
    iget-object v2, p0, Lcom/android/ims/ImsManagerExtImpl;->mConfigManager:Landroid/telephony/CarrierConfigManager;

    if-eqz v2, :cond_0

    .line 231
    invoke-virtual {v2, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 233
    :cond_0
    if-eqz v1, :cond_1

    .line 234
    invoke-virtual {v1, p1, p2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    return v2

    .line 237
    :cond_1
    return p2
.end method

.method public blacklist isFeatureEnabledByPlatformExt(I)Z
    .locals 4
    .param p1, "feature"    # I

    .line 252
    const/4 v0, 0x1

    .line 253
    .local v0, "isEnabled":Z
    iget-object v1, p0, Lcom/android/ims/ImsManagerExtImpl;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid: context="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ims/ImsManagerExtImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManagerExtImpl;->loge(Ljava/lang/String;)V

    .line 255
    return v0

    .line 257
    :cond_0
    iget-object v2, p0, Lcom/android/ims/ImsManagerExtImpl;->mSesImsManagerExt:Lcom/android/ims/OplusSesImsManagerExt;

    if-nez v2, :cond_1

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOp015ImsManagerExt == null, return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManagerExtImpl;->loge(Ljava/lang/String;)V

    .line 259
    return v0

    .line 261
    :cond_1
    iget v3, p0, Lcom/android/ims/ImsManagerExtImpl;->mPhoneId:I

    invoke-virtual {v2, v1, p1, v3}, Lcom/android/ims/OplusSesImsManagerExt;->isFeatureEnabledByPlatform(Landroid/content/Context;II)Z

    move-result v0

    .line 263
    return v0
.end method

.method public blacklist isViwifEnabledByPlatform()Z
    .locals 2

    .line 242
    const-string v0, "config_oplus_support_viwifi_bool"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/ims/ImsManagerExtImpl;->getBooleanCarrierConfigForSlot(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method synthetic blacklist lambda$updateImsUserAgent$0$com-android-ims-ImsManagerExtImpl(Ljava/lang/String;)V
    .locals 2
    .param p1, "imsUserAgentFinal"    # Ljava/lang/String;

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsManagerExtImpl;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Lcom/android/ims/ImsConfig;->setProvisionedStringValue(ILjava/lang/String;)I
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManagerExtImpl;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 216
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 217
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {v0}, Lcom/android/ims/ImsException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/ImsManagerExtImpl;->loge(Ljava/lang/String;)V

    .line 220
    .end local v0    # "e":Lcom/android/ims/ImsException;
    :goto_0
    nop

    .line 221
    :goto_1
    return-void
.end method

.method public blacklist setShowConfListWithoutCep(Lcom/android/ims/ImsManager;Lcom/android/ims/ImsCall;)V
    .locals 2
    .param p1, "mgr"    # Lcom/android/ims/ImsManager;
    .param p2, "imsCall"    # Lcom/android/ims/ImsCall;

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setShowConfListWithoutCep: imsCall = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManagerExtImpl;->log(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p1}, Lcom/android/ims/ImsManager;->getWrapper()Lcom/android/ims/IImsManagerWrapper;

    move-result-object v0

    const-string v1, "carrier_show_ims_conference_list_without_cep_config"

    invoke-interface {v0, v1}, Lcom/android/ims/IImsManagerWrapper;->getBooleanCarrierConfig(Ljava/lang/String;)Z

    move-result v0

    .line 272
    .local v0, "withoutCep":Z
    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->getWrapper()Lcom/android/ims/IImsCallWrapper;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/ims/IImsCallWrapper;->setShowConfListWithoutCep(Z)V

    .line 273
    return-void
.end method

.method public blacklist updateImsUserAgent()V
    .locals 29

    .line 88
    move-object/from16 v0, p0

    const-string v1, ""

    .line 91
    .local v1, "imsUserAgent":Ljava/lang/String;
    const/4 v2, 0x0

    .line 93
    .local v2, "b":Landroid/os/PersistableBundle;
    iget-object v3, v0, Lcom/android/ims/ImsManagerExtImpl;->mConfigManager:Landroid/telephony/CarrierConfigManager;

    if-eqz v3, :cond_0

    .line 95
    iget v4, v0, Lcom/android/ims/ImsManagerExtImpl;->mPhoneId:I

    invoke-static {v4}, Lcom/android/ims/ImsManagerExtImpl;->getSubId(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 97
    :cond_0
    if-eqz v2, :cond_1

    .line 98
    const-string v3, "carrier_ims_user_agent"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    :cond_1
    sget-boolean v3, Lcom/android/ims/ImsManagerExtImpl;->SDEBUG:Z

    if-eqz v3, :cond_2

    .line 102
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateImsUserAgent imsUserAgent = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/android/ims/ImsManagerExtImpl;->log(Ljava/lang/String;)V

    .line 105
    :cond_2
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v8, v0

    move-object/from16 v20, v1

    move-object/from16 v17, v2

    goto/16 :goto_6

    .line 108
    :cond_3
    const-string v4, "ro.product.model"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 109
    .local v4, "model":Ljava/lang/String;
    const-string v6, ""

    .line 110
    .local v6, "androidVer":Ljava/lang/String;
    const-string v7, "ro.build.display.full_id"

    invoke-static {v7, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 113
    .local v7, "displayVersion":Ljava/lang/String;
    const-string v8, "ro.build.display.id"

    const-string v9, " "

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 115
    .local v8, "displayId":Ljava/lang/String;
    const-string v9, "A.01"

    .line 116
    .local v9, "softVersion":Ljava/lang/String;
    const-string v10, "20000101"

    .line 117
    .local v10, "date":Ljava/lang/String;
    const-string v11, ""

    .line 118
    .local v11, "IMEISV":Ljava/lang/String;
    const-string v12, "ro.build.product"

    invoke-static {v12, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 119
    .local v12, "productName":Ljava/lang/String;
    const-string v13, "ro.build.version.ota"

    invoke-static {v13, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 122
    .local v5, "buildVersion":Ljava/lang/String;
    const-string v13, "ro.build.date.Ymd"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 123
    .local v13, "buildDate":Ljava/lang/String;
    const-string v14, "ro.build.date.YmdHM"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 124
    .local v14, "buildDateInHM":Ljava/lang/String;
    const-string v15, "ro.build.version.release"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 125
    .local v15, "buildVersionRelease":Ljava/lang/String;
    const-string v16, "ro.product.brand"

    move-object/from16 v17, v2

    .end local v2    # "b":Landroid/os/PersistableBundle;
    .local v17, "b":Landroid/os/PersistableBundle;
    invoke-static/range {v16 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, "deviceOemName":Ljava/lang/String;
    const-string v16, "ro.rom.version"

    move-object/from16 v18, v6

    .end local v6    # "androidVer":Ljava/lang/String;
    .local v18, "androidVer":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 127
    .local v6, "romVersion":Ljava/lang/String;
    const-string v16, ""

    .line 128
    .local v16, "mccmnc":Ljava/lang/String;
    move-object/from16 v19, v9

    .end local v9    # "softVersion":Ljava/lang/String;
    .local v19, "softVersion":Ljava/lang/String;
    iget v9, v0, Lcom/android/ims/ImsManagerExtImpl;->mPhoneId:I

    invoke-static {v9}, Lcom/android/ims/ImsManagerExtImpl;->getSubId(I)I

    move-result v9

    .line 130
    .local v9, "subId":I
    move-object/from16 v20, v10

    .end local v10    # "date":Ljava/lang/String;
    .local v20, "date":Ljava/lang/String;
    const/16 v10, 0x20

    move-object/from16 v21, v11

    .end local v11    # "IMEISV":Ljava/lang/String;
    .local v21, "IMEISV":Ljava/lang/String;
    const/16 v11, 0x5f

    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    .line 131
    const/4 v10, 0x2

    invoke-virtual {v14, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 132
    const/16 v10, 0x2d

    invoke-virtual {v5, v11, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    .line 137
    .local v10, "buildVersionOtaReplace":Ljava/lang/String;
    const/4 v11, 0x0

    move/from16 v23, v3

    const-string v3, "persist.version.confidential"

    invoke-static {v3, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v11, "Android"

    move-object/from16 v24, v8

    .end local v8    # "displayId":Ljava/lang/String;
    .local v24, "displayId":Ljava/lang/String;
    const/4 v8, 0x1

    if-ne v3, v8, :cond_4

    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v11, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v8, "ro.product.androidver"

    invoke-static {v8, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v18    # "androidVer":Ljava/lang/String;
    .local v3, "androidVer":Ljava/lang/String;
    goto :goto_0

    .line 142
    .end local v3    # "androidVer":Ljava/lang/String;
    .restart local v18    # "androidVer":Ljava/lang/String;
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 146
    .end local v18    # "androidVer":Ljava/lang/String;
    .restart local v3    # "androidVer":Ljava/lang/String;
    :goto_0
    iget-object v8, v0, Lcom/android/ims/ImsManagerExtImpl;->mContext:Landroid/content/Context;

    .line 147
    const-string v11, "phone"

    invoke-virtual {v8, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 148
    .local v8, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v8, :cond_5

    .line 149
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getImei()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 152
    .end local v21    # "IMEISV":Ljava/lang/String;
    .restart local v11    # "IMEISV":Ljava/lang/String;
    invoke-virtual {v8, v9}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    goto :goto_1

    .line 148
    .end local v11    # "IMEISV":Ljava/lang/String;
    .restart local v21    # "IMEISV":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, v16

    move-object/from16 v11, v21

    .line 156
    .end local v16    # "mccmnc":Ljava/lang/String;
    .end local v21    # "IMEISV":Ljava/lang/String;
    .local v0, "mccmnc":Ljava/lang/String;
    .restart local v11    # "IMEISV":Ljava/lang/String;
    :goto_1
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_7

    .line 157
    const-string v16, "_([A-Z]\\.\\d\\d)_([0-9]*\\d)"

    move-object/from16 v18, v8

    .end local v8    # "tm":Landroid/telephony/TelephonyManager;
    .local v18, "tm":Landroid/telephony/TelephonyManager;
    invoke-static/range {v16 .. v16}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    .line 158
    .local v8, "pattern":Ljava/util/regex/Pattern;
    move/from16 v16, v9

    .end local v9    # "subId":I
    .local v16, "subId":I
    invoke-virtual {v8, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 159
    .local v9, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v21

    if-eqz v21, :cond_6

    .line 160
    move-object/from16 v21, v7

    const/4 v7, 0x1

    .end local v7    # "displayVersion":Ljava/lang/String;
    .local v21, "displayVersion":Ljava/lang/String;
    invoke-virtual {v9, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 161
    .end local v19    # "softVersion":Ljava/lang/String;
    .local v7, "softVersion":Ljava/lang/String;
    move-object/from16 v19, v7

    const/4 v7, 0x2

    .end local v7    # "softVersion":Ljava/lang/String;
    .restart local v19    # "softVersion":Ljava/lang/String;
    invoke-virtual {v9, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v9, v19

    .end local v20    # "date":Ljava/lang/String;
    .local v7, "date":Ljava/lang/String;
    goto :goto_3

    .line 159
    .end local v21    # "displayVersion":Ljava/lang/String;
    .local v7, "displayVersion":Ljava/lang/String;
    .restart local v20    # "date":Ljava/lang/String;
    :cond_6
    move-object/from16 v21, v7

    .end local v7    # "displayVersion":Ljava/lang/String;
    .restart local v21    # "displayVersion":Ljava/lang/String;
    goto :goto_2

    .line 156
    .end local v16    # "subId":I
    .end local v18    # "tm":Landroid/telephony/TelephonyManager;
    .end local v21    # "displayVersion":Ljava/lang/String;
    .restart local v7    # "displayVersion":Ljava/lang/String;
    .local v8, "tm":Landroid/telephony/TelephonyManager;
    .local v9, "subId":I
    :cond_7
    move-object/from16 v21, v7

    move-object/from16 v18, v8

    move/from16 v16, v9

    .line 167
    .end local v7    # "displayVersion":Ljava/lang/String;
    .end local v8    # "tm":Landroid/telephony/TelephonyManager;
    .end local v9    # "subId":I
    .restart local v16    # "subId":I
    .restart local v18    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v21    # "displayVersion":Ljava/lang/String;
    :goto_2
    move-object/from16 v9, v19

    move-object/from16 v7, v20

    .end local v19    # "softVersion":Ljava/lang/String;
    .end local v20    # "date":Ljava/lang/String;
    .local v7, "date":Ljava/lang/String;
    .local v9, "softVersion":Ljava/lang/String;
    :goto_3
    sget-boolean v8, Lcom/android/internal/telephony/OplusFeature;->OPLUS_FEATURE_UST_UA:Z

    move-object/from16 v19, v0

    .end local v0    # "mccmnc":Ljava/lang/String;
    .local v19, "mccmnc":Ljava/lang/String;
    const-string v0, "[B]"

    move-object/from16 v20, v2

    .end local v2    # "deviceOemName":Ljava/lang/String;
    .local v20, "deviceOemName":Ljava/lang/String;
    const-string v2, "[D]"

    move-object/from16 v22, v14

    .end local v14    # "buildDateInHM":Ljava/lang/String;
    .local v22, "buildDateInHM":Ljava/lang/String;
    const-string v14, "[S]"

    move-object/from16 v25, v10

    .end local v10    # "buildVersionOtaReplace":Ljava/lang/String;
    .local v25, "buildVersionOtaReplace":Ljava/lang/String;
    const-string v10, "[A]"

    move-object/from16 v26, v15

    .end local v15    # "buildVersionRelease":Ljava/lang/String;
    .local v26, "buildVersionRelease":Ljava/lang/String;
    const-string v15, "[M]"

    if-eqz v8, :cond_8

    .line 168
    invoke-virtual {v1, v15, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 169
    invoke-virtual {v8, v0, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-virtual {v0, v10, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-virtual {v0, v14, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-virtual {v0, v2, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v14, v13

    move-object/from16 v2, v20

    move-object/from16 v15, v22

    move-object/from16 v13, v25

    move-object/from16 v10, v26

    move-object/from16 v20, v1

    move-object/from16 v1, v24

    .local v0, "imsUserAgentFinal":Ljava/lang/String;
    goto/16 :goto_4

    .line 176
    .end local v0    # "imsUserAgentFinal":Ljava/lang/String;
    :cond_8
    sget-boolean v8, Lcom/android/internal/telephony/OplusFeature;->OPLUS_FEATURE_USV_UA:Z

    move-object/from16 v27, v0

    const-string v0, "[P]"

    move-object/from16 v28, v13

    .end local v13    # "buildDate":Ljava/lang/String;
    .local v28, "buildDate":Ljava/lang/String;
    const-string v13, "[V]"

    if-eqz v8, :cond_9

    .line 177
    invoke-virtual {v1, v0, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-virtual {v0, v13, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-virtual {v0, v15, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-virtual {v0, v10, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-virtual {v0, v14, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-virtual {v0, v2, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v20

    move-object/from16 v15, v22

    move-object/from16 v13, v25

    move-object/from16 v10, v26

    move-object/from16 v14, v28

    move-object/from16 v20, v1

    move-object/from16 v1, v24

    .restart local v0    # "imsUserAgentFinal":Ljava/lang/String;
    goto :goto_4

    .line 188
    .end local v0    # "imsUserAgentFinal":Ljava/lang/String;
    :cond_9
    invoke-virtual {v1, v15, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 189
    invoke-virtual {v8, v10, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 190
    invoke-virtual {v8, v14, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 191
    invoke-virtual {v8, v2, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 192
    const-string v8, "[I]"

    invoke-virtual {v2, v8, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 193
    const-string v8, "[R]"

    invoke-virtual {v2, v8, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 194
    const-string v8, "[E]"

    move-object/from16 v10, v26

    .end local v26    # "buildVersionRelease":Ljava/lang/String;
    .local v10, "buildVersionRelease":Ljava/lang/String;
    invoke-virtual {v2, v8, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 195
    invoke-virtual {v2, v13, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 196
    const-string v8, "[O]"

    move-object/from16 v13, v25

    .end local v25    # "buildVersionOtaReplace":Ljava/lang/String;
    .local v13, "buildVersionOtaReplace":Ljava/lang/String;
    invoke-virtual {v2, v8, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 197
    const-string v8, "[T]"

    move-object/from16 v14, v28

    .end local v28    # "buildDate":Ljava/lang/String;
    .local v14, "buildDate":Ljava/lang/String;
    invoke-virtual {v2, v8, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 198
    const-string v8, "[H]"

    move-object/from16 v15, v22

    .end local v22    # "buildDateInHM":Ljava/lang/String;
    .local v15, "buildDateInHM":Ljava/lang/String;
    invoke-virtual {v2, v8, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 199
    invoke-virtual {v2, v0, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 200
    move-object/from16 v2, v20

    move-object/from16 v8, v27

    .end local v20    # "deviceOemName":Ljava/lang/String;
    .restart local v2    # "deviceOemName":Ljava/lang/String;
    invoke-virtual {v0, v8, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 201
    const-string v8, "[N]"

    move-object/from16 v20, v1

    move-object/from16 v1, v19

    .end local v19    # "mccmnc":Ljava/lang/String;
    .local v1, "mccmnc":Ljava/lang/String;
    .local v20, "imsUserAgent":Ljava/lang/String;
    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 204
    const-string v8, "[L]"

    move-object/from16 v1, v24

    .end local v24    # "displayId":Ljava/lang/String;
    .local v1, "displayId":Ljava/lang/String;
    .restart local v19    # "mccmnc":Ljava/lang/String;
    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 208
    .restart local v0    # "imsUserAgentFinal":Ljava/lang/String;
    :goto_4
    if-eqz v23, :cond_a

    .line 209
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v1

    .end local v1    # "displayId":Ljava/lang/String;
    .restart local v24    # "displayId":Ljava/lang/String;
    const-string v1, "updateImsUserAgent imsUserAgentFinal = "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v8, p0

    invoke-direct {v8, v1}, Lcom/android/ims/ImsManagerExtImpl;->log(Ljava/lang/String;)V

    goto :goto_5

    .line 208
    .end local v24    # "displayId":Ljava/lang/String;
    .restart local v1    # "displayId":Ljava/lang/String;
    :cond_a
    move-object/from16 v8, p0

    move-object/from16 v24, v1

    .line 212
    .end local v1    # "displayId":Ljava/lang/String;
    .restart local v24    # "displayId":Ljava/lang/String;
    :goto_5
    iget-object v1, v8, Lcom/android/ims/ImsManagerExtImpl;->mExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v22, v2

    .end local v2    # "deviceOemName":Ljava/lang/String;
    .local v22, "deviceOemName":Ljava/lang/String;
    new-instance v2, Lcom/android/ims/ImsManagerExtImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2, v8, v0}, Lcom/android/ims/ImsManagerExtImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/ims/ImsManagerExtImpl;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 222
    return-void

    .line 105
    .end local v0    # "imsUserAgentFinal":Ljava/lang/String;
    .end local v3    # "androidVer":Ljava/lang/String;
    .end local v4    # "model":Ljava/lang/String;
    .end local v5    # "buildVersion":Ljava/lang/String;
    .end local v6    # "romVersion":Ljava/lang/String;
    .end local v7    # "date":Ljava/lang/String;
    .end local v9    # "softVersion":Ljava/lang/String;
    .end local v10    # "buildVersionRelease":Ljava/lang/String;
    .end local v11    # "IMEISV":Ljava/lang/String;
    .end local v12    # "productName":Ljava/lang/String;
    .end local v13    # "buildVersionOtaReplace":Ljava/lang/String;
    .end local v14    # "buildDate":Ljava/lang/String;
    .end local v15    # "buildDateInHM":Ljava/lang/String;
    .end local v16    # "subId":I
    .end local v17    # "b":Landroid/os/PersistableBundle;
    .end local v18    # "tm":Landroid/telephony/TelephonyManager;
    .end local v19    # "mccmnc":Ljava/lang/String;
    .end local v20    # "imsUserAgent":Ljava/lang/String;
    .end local v21    # "displayVersion":Ljava/lang/String;
    .end local v22    # "deviceOemName":Ljava/lang/String;
    .end local v24    # "displayId":Ljava/lang/String;
    .local v1, "imsUserAgent":Ljava/lang/String;
    .local v2, "b":Landroid/os/PersistableBundle;
    :cond_b
    move-object v8, v0

    move-object/from16 v20, v1

    move-object/from16 v17, v2

    .line 106
    .end local v1    # "imsUserAgent":Ljava/lang/String;
    .end local v2    # "b":Landroid/os/PersistableBundle;
    .restart local v17    # "b":Landroid/os/PersistableBundle;
    .restart local v20    # "imsUserAgent":Ljava/lang/String;
    :goto_6
    return-void
.end method
