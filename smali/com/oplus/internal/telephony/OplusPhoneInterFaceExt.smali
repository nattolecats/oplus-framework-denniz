.class public Lcom/oplus/internal/telephony/OplusPhoneInterFaceExt;
.super Ljava/lang/Object;
.source "OplusPhoneInterFaceExt.java"


# static fields
.field public static final blacklist ICCTYPE_CSIM:Ljava/lang/String; = "CSIM"

.field public static final blacklist ICCTYPE_ISIM:Ljava/lang/String; = "ISIM"

.field public static final blacklist ICCTYPE_RUIM:Ljava/lang/String; = "RUIM"

.field public static final blacklist ICCTYPE_SIM:Ljava/lang/String; = "SIM"

.field public static final blacklist ICCTYPE_UNKNOWN:Ljava/lang/String; = "UNKNOWN"

.field public static final blacklist ICCTYPE_USIM:Ljava/lang/String; = "USIM"

.field private static final blacklist PROPERTY_RIL_CDMA_CARD_TYPE:[Ljava/lang/String;

.field private static final blacklist PROPERTY_RIL_CT3G:[Ljava/lang/String;

.field private static final blacklist PROPERTY_SIM_SLOT_LOCK_POLICY:Ljava/lang/String; = "vendor.gsm.sim.slot.lock.policy"

.field private static final blacklist PROPERTY_SIM_SLOT_LOCK_SERVICE_CAPABILITY:[Ljava/lang/String;

.field private static final blacklist PROPERTY_SML_MODE:Ljava/lang/String; = "ro.vendor.sim_me_lock_mode"

.field private static final blacklist TAG:Ljava/lang/String; = "OplusPhoneInterFaceExt"

.field private static blacklist sInstance:Lcom/oplus/internal/telephony/OplusPhoneInterFaceExt;


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mIsSmlLockMode:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 4

    .line 36
    new-instance v0, Lcom/oplus/internal/telephony/OplusPhoneInterFaceExt;

    invoke-direct {v0}, Lcom/oplus/internal/telephony/OplusPhoneInterFaceExt;-><init>()V

    sput-object v0, Lcom/oplus/internal/telephony/OplusPhoneInterFaceExt;->sInstance:Lcom/oplus/internal/telephony/OplusPhoneInterFaceExt;

    .line 52
    const-string v0, "vendor.gsm.sim.slot.lock.service.capability"

    const-string v1, "vendor.gsm.sim.slot.lock.service.capability.2"

    const-string v2, "vendor.gsm.sim.slot.lock.service.capability.3"

    const-string v3, "vendor.gsm.sim.slot.lock.service.capability.4"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/internal/telephony/OplusPhoneInterFaceExt;->PROPERTY_SIM_SLOT_LOCK_SERVICE_CAPABILITY:[Ljava/lang/String;

    .line 72
    const-string v0, "vendor.gsm.ril.ct3g"

    const-string v1, "vendor.gsm.ril.ct3g.2"

    const-string v2, "vendor.gsm.ril.ct3g.3"

    const-string v3, "vendor.gsm.ril.ct3g.4"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/internal/telephony/OplusPhoneInterFaceExt;->PROPERTY_RIL_CT3G:[Ljava/lang/String;

    .line 82
    const-string v0, "vendor.ril.cdma.card.type.1"

    const-string v1, "vendor.ril.cdma.card.type.2"

    const-string v2, "vendor.ril.cdma.card.type.3"

    const-string v3, "vendor.ril.cdma.card.type.4"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/internal/telephony/OplusPhoneInterFaceExt;->PROPERTY_RIL_CDMA_CARD_TYPE:[Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 2

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "ro.vendor.sim_me_lock_mode"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/internal/telephony/OplusPhoneInterFaceExt;->mIsSmlLockMode:Z

    .line 93
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "ro.vendor.sim_me_lock_mode"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/internal/telephony/OplusPhoneInterFaceExt;->mIsSmlLockMode:Z

    .line 89
    iput-object p1, p0, Lcom/oplus/internal/telephony/OplusPhoneInterFaceExt;->mContext:Landroid/content/Context;

    .line 90
    return-void
.end method

.method public static blacklist getDefault()Lcom/oplus/internal/telephony/OplusPhoneInterFaceExt;
    .locals 1

    .line 96
    sget-object v0, Lcom/oplus/internal/telephony/OplusPhoneInterFaceExt;->sInstance:Lcom/oplus/internal/telephony/OplusPhoneInterFaceExt;

    return-object v0
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 364
    const-string v0, "OplusPhoneInterFaceExt"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 367
    const-string v0, "OplusPhoneInterFaceExt"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    return-void
.end method


# virtual methods
.method public blacklist getCallingPackage()Ljava/lang/String;
    .locals 2

    .line 359
    iget-object v0, p0, Lcom/oplus/internal/telephony/OplusPhoneInterFaceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public blacklist getCdmaCardType(I)Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;
    .locals 4
    .param p1, "slotId"    # I

    .line 343
    if-ltz p1, :cond_2

    sget-object v0, Lcom/oplus/internal/telephony/OplusPhoneInterFaceExt;->PROPERTY_RIL_CT3G:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 347
    :cond_0
    sget-object v0, Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;->UNKNOW_CARD:Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;

    .line 348
    .local v0, "mCdmaCardType":Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;
    sget-object v1, Lcom/oplus/internal/telephony/OplusPhoneInterFaceExt;->PROPERTY_RIL_CDMA_CARD_TYPE:[Ljava/lang/String;

    aget-object v1, v1, p1

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 349
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 350
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 351
    .local v2, "cardtype":I
    invoke-static {v2}, Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;->getCardTypeFromInt(I)Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;

    move-result-object v0

    .line 353
    .end local v2    # "cardtype":I
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCdmaCardType slotId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mCdmaCardType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/oplus/internal/telephony/OplusPhoneInterFaceExt;->logd(Ljava/lang/String;)V

    .line 355
    return-object v0

    .line 344
    .end local v0    # "mCdmaCardType":Lcom/oplus/internal/telephony/IccCardConstantsExt$CardType;
    .end local v1    # "result":Ljava/lang/String;
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCdmaCardType: invalid slotId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusPhoneInterFaceExt"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getEsimGpio(I)I
    .locals 6
    .param p1, "phoneId"    # I

    .line 184
    iget-object v0, p0, Lcom/oplus/internal/telephony/OplusPhoneInterFaceExt;->mContext:Landroid/content/Context;

    .line 185
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 186
    invoke-virtual {p0}, Lcom/oplus/internal/telephony/OplusPhoneInterFaceExt;->getCallingPackage()Ljava/lang/String;

    move-result-object v3

    .line 184
    const/4 v4, 0x0

    const-string v5, "getEsimGpio"

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/TelephonyPermissions;->checkReadPhoneStateOnAnyActiveSub(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    const/4 v0, -0x1

    return v0

    .line 190
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_1

    .line 195
    sget-object v0, Lcom/android/internal/telephony/IOplusPhone;->DEFAULT:Lcom/android/internal/telephony/IOplusPhone;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/OplusTelephonyFactory;->getFeatureFromCache(ILcom/android/internal/telephony/common/IOplusCommonFeature;)Lcom/android/internal/telephony/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IOplusPhone;

    .line 196
    .local v0, "mInterfaceImpl":Lcom/android/internal/telephony/IOplusPhone;
    invoke-interface {v0}, Lcom/android/internal/telephony/IOplusPhone;->getEsimGpio()I

    move-result v1

    return v1

    .line 191
    .end local v0    # "mInterfaceImpl":Lcom/android/internal/telephony/IOplusPhone;
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEsimGpio : Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oplus/internal/telephony/OplusPhoneInterFaceExt;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not belong to phone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getIccCardType(I)Ljava/lang/String;
    .locals 6
    .param p1, "phoneId"    # I

    .line 167
    iget-object v0, p0, Lcom/oplus/internal/telephony/OplusPhoneInterFaceExt;->mContext:Landroid/content/Context;

    .line 168
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 169
    invoke-virtual {p0}, Lcom/oplus/internal/telephony/OplusPhoneInterFaceExt;->getCallingPackage()Ljava/lang/String;

    move-result-object v3

    .line 167
    const/4 v4, 0x0

    const-string v5, "getIccCardType"

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/TelephonyPermissions;->checkReadPhoneStateOnAnyActiveSub(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    const-string v0, ""

    return-object v0

    .line 173
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_1

    .line 178
    sget-object v0, Lcom/android/internal/telephony/IOplusGsmCdmaPhone;->DEFAULT:Lcom/android/internal/telephony/IOplusGsmCdmaPhone;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/OplusTelephonyFactory;->getFeatureFromCache(ILcom/android/internal/telephony/common/IOplusCommonFeature;)Lcom/android/internal/telephony/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IOplusGsmCdmaPhone;

    .line 179
    .local v0, "interfaceImpl":Lcom/android/internal/telephony/IOplusGsmCdmaPhone;
    invoke-interface {v0}, Lcom/android/internal/telephony/IOplusGsmCdmaPhone;->getIccCardType()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 174
    .end local v0    # "interfaceImpl":Lcom/android/internal/telephony/IOplusGsmCdmaPhone;
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIccCardType : Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oplus/internal/telephony/OplusPhoneInterFaceExt;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not belong to phone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getLteCdmaImsi(I)[Ljava/lang/String;
    .locals 3
    .param p1, "phoneId"    # I

    .line 253
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_1

    .line 259
    iget-object v0, p0, Lcom/oplus/internal/telephony/OplusPhoneInterFaceExt;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    const-string v0, "OplusPhoneInterFaceExt"

    const-string v1, "READ_PRIVILEGED_PHONE_STATE. permission needed"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const/4 v0, 0x0

    return-object v0

    .line 264
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/IOplusPhone;->DEFAULT:Lcom/android/internal/telephony/IOplusPhone;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/OplusTelephonyFactory;->getFeatureFromCache(ILcom/android/internal/telephony/common/IOplusCommonFeature;)Lcom/android/internal/telephony/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IOplusPhone;

    .line 265
    .local v0, "mInterfaceImpl":Lcom/android/internal/telephony/IOplusPhone;
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IOplusPhone;->getLteCdmaImsi(I)[Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 254
    .end local v0    # "mInterfaceImpl":Lcom/android/internal/telephony/IOplusPhone;
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLteCdmaImsi : Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oplus/internal/telephony/OplusPhoneInterFaceExt;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not belong to phone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getPreferedOperatorList(ILandroid/os/Message;)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 121
    iget-object v0, p0, Lcom/oplus/internal/telephony/OplusPhoneInterFaceExt;->mContext:Landroid/content/Context;

    .line 122
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 123
    invoke-virtual {p0}, Lcom/oplus/internal/telephony/OplusPhoneInterFaceExt;->getCallingPackage()Ljava/lang/String;

    move-result-object v3

    .line 121
    const/4 v4, 0x0

    const-string v5, "getPreferedOperatorList"

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/TelephonyPermissions;->checkReadPhoneStateOnAnyActiveSub(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "not permissions"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p2, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    move-result-object v0

    .line 125
    .local v0, "ar":Landroid/os/AsyncResult;
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 128
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_1

    .line 133
    const-string v0, "OplusPhoneInterFaceExt"

    const-string v1, "getPreferedOperatorList enter"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    sget-object v0, Lcom/android/internal/telephony/uicc/IOplusSIMRecords;->DEFAULT:Lcom/android/internal/telephony/uicc/IOplusSIMRecords;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/OplusTelephonyFactory;->getFeatureFromCache(ILcom/android/internal/telephony/common/IOplusCommonFeature;)Lcom/android/internal/telephony/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IOplusSIMRecords;

    .line 135
    .local v0, "interfaceImpl":Lcom/android/internal/telephony/uicc/IOplusSIMRecords;
    invoke-interface {v0, p2}, Lcom/android/internal/telephony/uicc/IOplusSIMRecords;->getPreferedOperatorList(Landroid/os/Message;)V

    .line 136
    return-void

    .line 129
    .end local v0    # "interfaceImpl":Lcom/android/internal/telephony/uicc/IOplusSIMRecords;
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreferedOperatorList : Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oplus/internal/telephony/OplusPhoneInterFaceExt;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not belong to phone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getShouldServiceCapability(I)I
    .locals 3
    .param p1, "slotId"    # I

    .line 321
    iget-boolean v0, p0, Lcom/oplus/internal/telephony/OplusPhoneInterFaceExt;->mIsSmlLockMode:Z

    if-eqz v0, :cond_2

    .line 322
    if-ltz p1, :cond_1

    sget-object v0, Lcom/oplus/internal/telephony/OplusPhoneInterFaceExt;->PROPERTY_SIM_SLOT_LOCK_SERVICE_CAPABILITY:[Ljava/lang/String;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 327
    :cond_0
    aget-object v0, v0, p1

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 330
    .local v0, "capability":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getShouldServiceCapability: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",slotId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oplus/internal/telephony/OplusPhoneInterFaceExt;->logd(Ljava/lang/String;)V

    .line 331
    return v0

    .line 323
    .end local v0    # "capability":I
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getShouldServiceCapability: invalid slotId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/internal/telephony/OplusPhoneInterFaceExt;->loge(Ljava/lang/String;)V

    .line 324
    const/4 v0, 0x4

    return v0

    .line 333
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSimLockPolicy()I
    .locals 3

    .line 290
    iget-boolean v0, p0, Lcom/oplus/internal/telephony/OplusPhoneInterFaceExt;->mIsSmlLockMode:Z

    if-eqz v0, :cond_0

    .line 291
    const/4 v0, -0x1

    const-string v1, "vendor.gsm.sim.slot.lock.policy"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 293
    .local v0, "policy":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSimLockPolicy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusPhoneInterFaceExt"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    return v0

    .line 296
    .end local v0    # "policy":I
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isTestCard(I)Z
    .locals 6
    .param p1, "slotId"    # I

    .line 102
    iget-object v0, p0, Lcom/oplus/internal/telephony/OplusPhoneInterFaceExt;->mContext:Landroid/content/Context;

    .line 103
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 104
    invoke-virtual {p0}, Lcom/oplus/internal/telephony/OplusPhoneInterFaceExt;->getCallingPackage()Ljava/lang/String;

    move-result-object v3

    .line 102
    const/4 v4, 0x0

    const-string v5, "isTestCard"

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/TelephonyPermissions;->checkReadPhoneStateOnAnyActiveSub(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 105
    return v1

    .line 107
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v2, 0x3e9

    if-ne v0, v2, :cond_2

    .line 111
    invoke-static {}, Lcom/android/internal/telephony/OplusTelephonyFactory;->getInstance()Lcom/android/internal/telephony/OplusTelephonyFactory;

    sget-object v0, Lcom/android/internal/telephony/IOplusPhone;->DEFAULT:Lcom/android/internal/telephony/IOplusPhone;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/OplusTelephonyFactory;->getFeatureFromCache(ILcom/android/internal/telephony/common/IOplusCommonFeature;)Lcom/android/internal/telephony/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IOplusPhone;

    .line 112
    .local v0, "tmpPhone":Lcom/android/internal/telephony/IOplusPhone;
    if-eqz v0, :cond_1

    .line 113
    invoke-interface {v0}, Lcom/android/internal/telephony/IOplusPhone;->isTestCard()Z

    move-result v1

    return v1

    .line 115
    :cond_1
    return v1

    .line 108
    .end local v0    # "tmpPhone":Lcom/android/internal/telephony/IOplusPhone;
    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isTestCard : Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oplus/internal/telephony/OplusPhoneInterFaceExt;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not belong to phone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setEsimGpio(II)I
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "operation"    # I

    .line 201
    iget-object v0, p0, Lcom/oplus/internal/telephony/OplusPhoneInterFaceExt;->mContext:Landroid/content/Context;

    .line 202
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 203
    invoke-virtual {p0}, Lcom/oplus/internal/telephony/OplusPhoneInterFaceExt;->getCallingPackage()Ljava/lang/String;

    move-result-object v3

    .line 201
    const/4 v4, 0x0

    const-string v5, "setEsimGpio"

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/TelephonyPermissions;->checkReadPhoneStateOnAnyActiveSub(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    const/4 v0, -0x1

    return v0

    .line 207
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_1

    .line 212
    sget-object v0, Lcom/android/internal/telephony/IOplusPhone;->DEFAULT:Lcom/android/internal/telephony/IOplusPhone;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/OplusTelephonyFactory;->getFeatureFromCache(ILcom/android/internal/telephony/common/IOplusCommonFeature;)Lcom/android/internal/telephony/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IOplusPhone;

    .line 213
    .local v0, "mInterfaceImpl":Lcom/android/internal/telephony/IOplusPhone;
    invoke-interface {v0, p2}, Lcom/android/internal/telephony/IOplusPhone;->setEsimGpio(I)I

    move-result v1

    return v1

    .line 208
    .end local v0    # "mInterfaceImpl":Lcom/android/internal/telephony/IOplusPhone;
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEsimGpio : Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oplus/internal/telephony/OplusPhoneInterFaceExt;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not belong to phone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setHotswap(I)I
    .locals 6
    .param p1, "phoneId"    # I

    .line 218
    iget-object v0, p0, Lcom/oplus/internal/telephony/OplusPhoneInterFaceExt;->mContext:Landroid/content/Context;

    .line 219
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 220
    invoke-virtual {p0}, Lcom/oplus/internal/telephony/OplusPhoneInterFaceExt;->getCallingPackage()Ljava/lang/String;

    move-result-object v3

    .line 218
    const/4 v4, 0x0

    const-string v5, "setHotswap"

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/TelephonyPermissions;->checkReadPhoneStateOnAnyActiveSub(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    const/4 v0, -0x1

    return v0

    .line 224
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_1

    .line 229
    sget-object v0, Lcom/android/internal/telephony/IOplusPhone;->DEFAULT:Lcom/android/internal/telephony/IOplusPhone;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/OplusTelephonyFactory;->getFeatureFromCache(ILcom/android/internal/telephony/common/IOplusCommonFeature;)Lcom/android/internal/telephony/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IOplusPhone;

    .line 230
    .local v0, "mInterfaceImpl":Lcom/android/internal/telephony/IOplusPhone;
    invoke-interface {v0}, Lcom/android/internal/telephony/IOplusPhone;->setHotswap()I

    move-result v1

    return v1

    .line 225
    .end local v0    # "mInterfaceImpl":Lcom/android/internal/telephony/IOplusPhone;
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHotswap : Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oplus/internal/telephony/OplusPhoneInterFaceExt;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not belong to phone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setPOLEntry(ILcom/android/internal/telephony/gsm/NetworkInfoWithAcT;Landroid/os/Message;)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "networkWithAct"    # Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;
    .param p3, "onComplete"    # Landroid/os/Message;

    .line 140
    iget-object v0, p0, Lcom/oplus/internal/telephony/OplusPhoneInterFaceExt;->mContext:Landroid/content/Context;

    .line 141
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 142
    invoke-virtual {p0}, Lcom/oplus/internal/telephony/OplusPhoneInterFaceExt;->getCallingPackage()Ljava/lang/String;

    move-result-object v3

    .line 140
    const/4 v4, 0x0

    const-string v5, "setPOLEntry"

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/TelephonyPermissions;->checkReadPhoneStateOnAnyActiveSub(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "not permissions"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p3, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    move-result-object v0

    .line 144
    .local v0, "ar":Landroid/os/AsyncResult;
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 147
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_1

    .line 152
    sget-object v0, Lcom/android/internal/telephony/uicc/IOplusSIMRecords;->DEFAULT:Lcom/android/internal/telephony/uicc/IOplusSIMRecords;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/OplusTelephonyFactory;->getFeatureFromCache(ILcom/android/internal/telephony/common/IOplusCommonFeature;)Lcom/android/internal/telephony/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IOplusSIMRecords;

    .line 153
    .local v0, "interfaceImpl":Lcom/android/internal/telephony/uicc/IOplusSIMRecords;
    invoke-interface {v0, p2, p3}, Lcom/android/internal/telephony/uicc/IOplusSIMRecords;->setPOLEntry(Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;Landroid/os/Message;)V

    .line 154
    return-void

    .line 148
    .end local v0    # "interfaceImpl":Lcom/android/internal/telephony/uicc/IOplusSIMRecords;
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPOLEntry : Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oplus/internal/telephony/OplusPhoneInterFaceExt;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not belong to phone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setUimPower(II)I
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "operation"    # I

    .line 235
    iget-object v0, p0, Lcom/oplus/internal/telephony/OplusPhoneInterFaceExt;->mContext:Landroid/content/Context;

    .line 236
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 237
    invoke-virtual {p0}, Lcom/oplus/internal/telephony/OplusPhoneInterFaceExt;->getCallingPackage()Ljava/lang/String;

    move-result-object v3

    .line 235
    const/4 v4, 0x0

    const-string v5, "setUimPower"

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/TelephonyPermissions;->checkReadPhoneStateOnAnyActiveSub(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    const/4 v0, -0x1

    return v0

    .line 241
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_1

    .line 246
    sget-object v0, Lcom/android/internal/telephony/IOplusPhone;->DEFAULT:Lcom/android/internal/telephony/IOplusPhone;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/OplusTelephonyFactory;->getFeatureFromCache(ILcom/android/internal/telephony/common/IOplusCommonFeature;)Lcom/android/internal/telephony/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IOplusPhone;

    .line 247
    .local v0, "mInterfaceImpl":Lcom/android/internal/telephony/IOplusPhone;
    invoke-interface {v0, p2}, Lcom/android/internal/telephony/IOplusPhone;->setUimPower(I)I

    move-result v1

    return v1

    .line 242
    .end local v0    # "mInterfaceImpl":Lcom/android/internal/telephony/IOplusPhone;
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUimPower : Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oplus/internal/telephony/OplusPhoneInterFaceExt;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not belong to phone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
