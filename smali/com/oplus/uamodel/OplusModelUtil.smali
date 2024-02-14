.class public Lcom/oplus/uamodel/OplusModelUtil;
.super Ljava/lang/Object;
.source "OplusModelUtil.java"


# static fields
.field private static final blacklist BARCE_CUSTOM:Ljava/lang/String;

.field private static final blacklist BUILD_DEVICE:Ljava/lang/String;

.field private static final blacklist BUILD_MODEL:Ljava/lang/String;

.field private static final blacklist CONFIDENTIAL_PROP:Ljava/lang/String;

.field private static final blacklist GUNDAM:Ljava/lang/String;

.field private static final blacklist LITTLE_TAIL_MODEL:Ljava/lang/String;

.field private static final blacklist LOWER_CASE_MODEL_NAME:Ljava/lang/String; = "pfdm00"

.field private static final blacklist MANUFACTURER:Ljava/lang/String;

.field private static final blacklist MODEL_DEVICE_LIST_EARLY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist MODEL_NAME_ADAPTED_LIST:I = 0x2e4

.field private static final blacklist MODEL_NAME_BETA:Ljava/lang/String; = "F19"

.field private static final blacklist MODEL_NAME_BLADE_A:Ljava/lang/String; = "10T 5G"

.field private static final blacklist MODEL_NAME_CHAKA_PK:Ljava/lang/String; = "Reno5 Pro"

.field private static final blacklist MODEL_NAME_CUSTOM_LIST:I = 0x2e2

.field private static final blacklist MODEL_NAME_ELSA_EEA:Ljava/lang/String; = "A94 5G"

.field private static final blacklist MODEL_NAME_HIMA_EEA:Ljava/lang/String; = "Find X3 Neo 5G"

.field private static final blacklist MODEL_NAME_KUNLUN_EEA:Ljava/lang/String; = "Find X3 Lite 5G"

.field private static final blacklist MODEL_NAME_MARKET_LIST:I = 0x2e3

.field private static final blacklist MODEL_NAME_NFC_COMPATIBLE:I = 0x2e1

.field private static final blacklist MODEL_NAME_PANTHER:Ljava/lang/String; = "F21 Pro"

.field private static final blacklist MODEL_NAME_ZHAOYUN:Ljava/lang/String; = "A57s"

.field private static final blacklist ONLY_WHITELIST_FEATURE:Ljava/lang/String; = "ONLY_WHITELIST_FEATURE"

.field private static final blacklist OPLUS_CONFIDENTIAL_MODEL:Ljava/lang/String;

.field private static final blacklist OPLUS_MARKET_NAME:Ljava/lang/String;

.field private static final blacklist OPLUS_MODEL:Ljava/lang/String;

.field private static final blacklist TAG:Ljava/lang/String; = "UAmodel"

.field private static final blacklist THEME:Ljava/lang/String;

.field private static final blacklist UAMODELLIST_ANTUTU:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist UAMODELLIST_ANTUTU_EARLY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist UAMODELLIST_BENCHMARK_CUSTOMIZED:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist UAMODELLIST_LITTLETAIL_CUSTOMIZED:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist UAMODELLIST_LITTLETAIL_CUSTOMIZED_EARLY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist UAMODELLIST_LITTLETAIL_CUSTOMIZED_LAST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist UAMODELLIST_LITTLETAIL_EARLY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist UAMODELLIST_LITTLETAIL_SPECIALMODEL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist UAMODELLIST_OPLUSCONFIDENTIALMODEL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist UAMODELLIST_SPECIALCASE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mOplusModel:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 21

    .line 27
    sget-object v0, Landroid/os/OplusPropertyList;->PRODUCT_LITTLETAIL_MODEL:Ljava/lang/String;

    sput-object v0, Lcom/oplus/uamodel/OplusModelUtil;->LITTLE_TAIL_MODEL:Ljava/lang/String;

    .line 28
    sget-object v0, Landroid/os/OplusPropertyList;->PRODUCT_OPLUS_MODEL:Ljava/lang/String;

    sput-object v0, Lcom/oplus/uamodel/OplusModelUtil;->OPLUS_MODEL:Ljava/lang/String;

    .line 29
    sget-object v0, Landroid/os/OplusPropertyList;->ODM_PREV_PRODUCT_NAME:Ljava/lang/String;

    sput-object v0, Lcom/oplus/uamodel/OplusModelUtil;->OPLUS_CONFIDENTIAL_MODEL:Ljava/lang/String;

    .line 30
    sget-object v0, Landroid/os/OplusPropertyList;->VERSION_CONFIDENTIAL:Ljava/lang/String;

    sput-object v0, Lcom/oplus/uamodel/OplusModelUtil;->CONFIDENTIAL_PROP:Ljava/lang/String;

    .line 31
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/oplus/uamodel/OplusModelUtil;->BUILD_MODEL:Ljava/lang/String;

    .line 32
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sput-object v0, Lcom/oplus/uamodel/OplusModelUtil;->BUILD_DEVICE:Ljava/lang/String;

    .line 33
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sput-object v0, Lcom/oplus/uamodel/OplusModelUtil;->MANUFACTURER:Ljava/lang/String;

    .line 34
    sget-object v0, Landroid/os/OplusPropertyList;->OPLUS_VENDOR_MARKET_NAME:Ljava/lang/String;

    sput-object v0, Lcom/oplus/uamodel/OplusModelUtil;->OPLUS_MARKET_NAME:Ljava/lang/String;

    .line 43
    const-string v0, "ro.hw.phone.color"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/uamodel/OplusModelUtil;->THEME:Ljava/lang/String;

    .line 44
    const-string v0, "ro.product.oplus.custom.Barce"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/uamodel/OplusModelUtil;->BARCE_CUSTOM:Ljava/lang/String;

    .line 45
    const-string v0, "ro.vendor.oplus.gundam"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/uamodel/OplusModelUtil;->GUNDAM:Ljava/lang/String;

    .line 59
    const-string v1, "com.antutu.ABenchMark"

    const-string v2, "com.antutu.aibenchmark"

    const-string v3, "com.antutu.ABenchMark.lite"

    const-string v4, "com.uzywpq.cqlzahm"

    const-string v5, "com.antutu.benchmark.full"

    const-string v6, "club.antutu.benchmark"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/oplus/uamodel/OplusModelUtil;->UAMODELLIST_ANTUTU:Ljava/util/List;

    .line 67
    const-string v0, "com.facebook.katana"

    const-string v1, "flar2.devcheck"

    const-string v2, "com.finalwire.aida64"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/oplus/uamodel/OplusModelUtil;->UAMODELLIST_SPECIALCASE:Ljava/util/List;

    .line 72
    const-string v0, "com.ludashi.benchmark"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/oplus/uamodel/OplusModelUtil;->UAMODELLIST_BENCHMARK_CUSTOMIZED:Ljava/util/List;

    .line 75
    const-string v1, "com.tencent.mobileqq"

    const-string v2, "com.sina.weibo"

    const-string v3, "com.ruanmei.ithome"

    const-string v4, "com.qzone"

    const-string v5, "com.tencent.karaoke"

    const-string v6, "com.netease.newsreader.activity"

    const-string v7, "com.android.sina.weibo.ua"

    const-string v8, "com.sinamobile.uagenerator"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/oplus/uamodel/OplusModelUtil;->UAMODELLIST_LITTLETAIL_CUSTOMIZED:Ljava/util/List;

    .line 85
    const-string v1, "com.xunmeng.pinduoduo"

    const-string v2, "com.xunmeng.merchant"

    const-string v3, "com.wuba.zhuanzhuan"

    const-string v4, "com.huodao.hdphone"

    const-string v5, "aihuishou.aihuishouapp"

    const-string v6, "com.tencent.mm"

    const-string v7, "com.oppo.community"

    const-string v8, "com.oppo.store"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/oplus/uamodel/OplusModelUtil;->UAMODELLIST_LITTLETAIL_CUSTOMIZED_LAST:Ljava/util/List;

    .line 95
    const-string v1, "com.sina.weibo"

    const-string v2, "com.android.sina.weibo.ua"

    const-string v3, "com.tencent.mobileqq"

    const-string v4, "com.qzone"

    const-string v5, "com.netease.newsreader.activity"

    const-string v6, "com.heytap.reader"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/oplus/uamodel/OplusModelUtil;->UAMODELLIST_LITTLETAIL_SPECIALMODEL:Ljava/util/List;

    .line 103
    const-string v0, "com.tencent.mm"

    const-string v1, "com.tencent.mobileqq"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/oplus/uamodel/OplusModelUtil;->UAMODELLIST_OPLUSCONFIDENTIALMODEL:Ljava/util/List;

    .line 107
    const-string v1, "com.tencent.mobileqq"

    const-string v2, "com.sina.weibo"

    const-string v3, "com.ruanmei.ithome"

    const-string v4, "com.qzone"

    const-string v5, "com.tencent.karaoke"

    const-string v6, "com.android.sina.weibo.ua"

    const-string v7, "com.sinamobile.uagenerator"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/oplus/uamodel/OplusModelUtil;->UAMODELLIST_LITTLETAIL_CUSTOMIZED_EARLY:Ljava/util/List;

    .line 116
    const-string v1, "com.antutu.ABenchMark"

    const-string v2, "com.ss.android.ugc.aweme"

    const-string v3, "com.ss.android.ugc.live"

    const-string v4, "com.ss.android.ugc.aweme.lite"

    const-string v5, "com.ss.android.article.video"

    const-string v6, "com.oppo.usercenter"

    const-string v7, "com.heytap.vip"

    const-string v8, "com.oplus.vip"

    const-string v9, "com.heytap.usercenter"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/oplus/uamodel/OplusModelUtil;->UAMODELLIST_ANTUTU_EARLY:Ljava/util/List;

    .line 127
    const-string v1, "com.sinamobile.uagenerator"

    const-string v2, "com.sina.weibo"

    const-string v3, "com.android.sina.weibo.ua"

    const-string v4, "com.tencent.mobileqq"

    const-string v5, "com.qzone"

    const-string v6, "com.netease.newsreader.activity"

    const-string v7, "com.ludashi.benchmark"

    const-string v8, "com.ruanmei.ithome"

    const-string v9, "com.tencent.karaoke"

    const-string v10, "com.qiyi.video"

    const-string v11, "com.taobao.taobao"

    const-string v12, "com.tmall.wireless"

    const-string v13, "tv.pps.mobile"

    const-string v14, "aihuishou.aihuishouapp"

    const-string v15, "com.xunmeng.pinduoduo"

    const-string v16, "com.xunmeng.merchant"

    const-string v17, "com.wuba.zhuanzhuan"

    const-string v18, "com.huodao.hdphone"

    const-string v19, "com.oppo.store"

    const-string v20, "com.oppo.community"

    filled-new-array/range {v1 .. v20}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/oplus/uamodel/OplusModelUtil;->UAMODELLIST_LITTLETAIL_EARLY:Ljava/util/List;

    .line 149
    const-string v1, "RMX3370"

    const-string v2, "RE5473"

    const-string v3, "RMX3371"

    const-string v4, "RE54E4L1"

    const-string v5, "RMX3562"

    const-string v6, "RE5489"

    const-string v7, "RMX3478"

    const-string v8, "PDVM00"

    const-string v9, "OP4AB5"

    const-string v10, "PEMM00"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/oplus/uamodel/OplusModelUtil;->MODEL_DEVICE_LIST_EARLY:Ljava/util/List;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/uamodel/OplusModelUtil;->mOplusModel:Ljava/lang/String;

    return-void
.end method

.method private blacklist setBarceCustomList(Ljava/lang/String;Landroid/content/pm/OplusPackageManager;)Z
    .locals 4
    .param p1, "uaPackageName"    # Ljava/lang/String;
    .param p2, "pm"    # Landroid/content/pm/OplusPackageManager;

    .line 249
    const/4 v0, 0x0

    .line 250
    .local v0, "result":Z
    sget-object v1, Lcom/oplus/uamodel/OplusModelUtil;->BARCE_CUSTOM:Ljava/lang/String;

    const-string v2, "Barce"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/oplus/uamodel/OplusModelUtil;->OPLUS_MODEL:Ljava/lang/String;

    .line 251
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/oplus/uamodel/OplusModelUtil;->BUILD_MODEL:Ljava/lang/String;

    .line 252
    const-string v3, "PCCM00"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 253
    sget-object v2, Lcom/oplus/uamodel/OplusModelUtil;->UAMODELLIST_LITTLETAIL_CUSTOMIZED:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 254
    iput-object v1, p0, Lcom/oplus/uamodel/OplusModelUtil;->mOplusModel:Ljava/lang/String;

    .line 255
    const/4 v0, 0x1

    .line 257
    :cond_0
    const/16 v2, 0x2e2

    if-eqz p2, :cond_1

    invoke-virtual {p2, v2, p1}, Landroid/content/pm/OplusPackageManager;->inCptWhiteList(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 258
    iput-object v1, p0, Lcom/oplus/uamodel/OplusModelUtil;->mOplusModel:Ljava/lang/String;

    .line 259
    const/4 v0, 0x1

    .line 261
    :cond_1
    if-eqz p2, :cond_2

    const-string v1, "ONLY_WHITELIST_FEATURE"

    invoke-virtual {p2, v2, v1}, Landroid/content/pm/OplusPackageManager;->inCptWhiteList(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 262
    invoke-virtual {p2, v2, p1}, Landroid/content/pm/OplusPackageManager;->inCptWhiteList(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 263
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v1, p0, Lcom/oplus/uamodel/OplusModelUtil;->mOplusModel:Ljava/lang/String;

    .line 264
    const/4 v0, 0x0

    .line 267
    :cond_2
    return v0
.end method

.method private blacklist setCommonLittleTailCptWhiteList(Ljava/lang/String;Landroid/content/pm/OplusPackageManager;)I
    .locals 8
    .param p1, "uaPackageName"    # Ljava/lang/String;
    .param p2, "pm"    # Landroid/content/pm/OplusPackageManager;

    .line 405
    const/4 v0, 0x0

    .line 406
    .local v0, "result":I
    sget-object v1, Lcom/oplus/uamodel/OplusModelUtil;->CONFIDENTIAL_PROP:Ljava/lang/String;

    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz p2, :cond_7

    .line 407
    sget-object v1, Lcom/oplus/uamodel/OplusModelUtil;->LITTLE_TAIL_MODEL:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v4, 0x2e4

    if-nez v3, :cond_0

    invoke-virtual {p2, v4, p1}, Landroid/content/pm/OplusPackageManager;->inCptWhiteList(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 408
    iput-object v1, p0, Lcom/oplus/uamodel/OplusModelUtil;->mOplusModel:Ljava/lang/String;

    .line 409
    const/4 v0, 0x1

    .line 411
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v5, 0x2e3

    if-nez v3, :cond_1

    sget-object v3, Lcom/oplus/uamodel/OplusModelUtil;->OPLUS_MARKET_NAME:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 412
    invoke-virtual {p2, v5, p1}, Landroid/content/pm/OplusPackageManager;->inCptWhiteList(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 413
    iput-object v3, p0, Lcom/oplus/uamodel/OplusModelUtil;->mOplusModel:Ljava/lang/String;

    .line 414
    const/4 v0, 0x1

    .line 416
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v6, "ONLY_WHITELIST_FEATURE"

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/oplus/uamodel/OplusModelUtil;->mOplusModel:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 417
    invoke-virtual {p2, v4, v6}, Landroid/content/pm/OplusPackageManager;->inCptWhiteList(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 418
    invoke-virtual {p2, v4, p1}, Landroid/content/pm/OplusPackageManager;->inCptWhiteList(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 419
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v3, p0, Lcom/oplus/uamodel/OplusModelUtil;->mOplusModel:Ljava/lang/String;

    .line 420
    const/4 v0, 0x2

    .line 422
    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/oplus/uamodel/OplusModelUtil;->OPLUS_MARKET_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/oplus/uamodel/OplusModelUtil;->mOplusModel:Ljava/lang/String;

    .line 423
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 424
    invoke-virtual {p2, v5, v6}, Landroid/content/pm/OplusPackageManager;->inCptWhiteList(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 425
    invoke-virtual {p2, v5, p1}, Landroid/content/pm/OplusPackageManager;->inCptWhiteList(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 426
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v1, p0, Lcom/oplus/uamodel/OplusModelUtil;->mOplusModel:Ljava/lang/String;

    .line 427
    const/4 v0, 0x2

    .line 430
    :cond_3
    sget-object v1, Lcom/oplus/uamodel/OplusModelUtil;->OPLUS_MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p2, v4, p1}, Landroid/content/pm/OplusPackageManager;->inCptWhiteList(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 431
    iput-object v1, p0, Lcom/oplus/uamodel/OplusModelUtil;->mOplusModel:Ljava/lang/String;

    .line 432
    const/4 v0, 0x1

    .line 434
    :cond_4
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    sget-object v3, Lcom/oplus/uamodel/OplusModelUtil;->OPLUS_MARKET_NAME:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 435
    invoke-virtual {p2, v5, p1}, Landroid/content/pm/OplusPackageManager;->inCptWhiteList(ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 436
    iput-object v3, p0, Lcom/oplus/uamodel/OplusModelUtil;->mOplusModel:Ljava/lang/String;

    .line 437
    const/4 v0, 0x1

    .line 439
    :cond_5
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/oplus/uamodel/OplusModelUtil;->mOplusModel:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 440
    invoke-virtual {p2, v4, v6}, Landroid/content/pm/OplusPackageManager;->inCptWhiteList(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 441
    invoke-virtual {p2, v4, p1}, Landroid/content/pm/OplusPackageManager;->inCptWhiteList(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 442
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v3, p0, Lcom/oplus/uamodel/OplusModelUtil;->mOplusModel:Ljava/lang/String;

    .line 443
    const/4 v0, 0x2

    .line 445
    :cond_6
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lcom/oplus/uamodel/OplusModelUtil;->OPLUS_MARKET_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/oplus/uamodel/OplusModelUtil;->mOplusModel:Ljava/lang/String;

    .line 446
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 447
    invoke-virtual {p2, v5, v6}, Landroid/content/pm/OplusPackageManager;->inCptWhiteList(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 448
    invoke-virtual {p2, v5, p1}, Landroid/content/pm/OplusPackageManager;->inCptWhiteList(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 449
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v1, p0, Lcom/oplus/uamodel/OplusModelUtil;->mOplusModel:Ljava/lang/String;

    .line 450
    const/4 v0, 0x2

    .line 453
    :cond_7
    return v0
.end method

.method private blacklist setCommonLittleTailmodel(Ljava/lang/String;)Z
    .locals 4
    .param p1, "uaPackageName"    # Ljava/lang/String;

    .line 386
    const/4 v0, 0x0

    .line 387
    .local v0, "result":Z
    sget-object v1, Lcom/oplus/uamodel/OplusModelUtil;->CONFIDENTIAL_PROP:Ljava/lang/String;

    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 388
    sget-object v1, Lcom/oplus/uamodel/OplusModelUtil;->LITTLE_TAIL_MODEL:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/oplus/uamodel/OplusModelUtil;->UAMODELLIST_LITTLETAIL_CUSTOMIZED:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 389
    iput-object v1, p0, Lcom/oplus/uamodel/OplusModelUtil;->mOplusModel:Ljava/lang/String;

    .line 390
    const/4 v0, 0x1

    .line 392
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/oplus/uamodel/OplusModelUtil;->UAMODELLIST_BENCHMARK_CUSTOMIZED:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 393
    iput-object v1, p0, Lcom/oplus/uamodel/OplusModelUtil;->mOplusModel:Ljava/lang/String;

    .line 394
    const/4 v0, 0x1

    .line 396
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/oplus/uamodel/OplusModelUtil;->OPLUS_MARKET_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/oplus/uamodel/OplusModelUtil;->UAMODELLIST_ANTUTU:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 397
    iput-object v1, p0, Lcom/oplus/uamodel/OplusModelUtil;->mOplusModel:Ljava/lang/String;

    .line 398
    const/4 v0, 0x1

    .line 401
    :cond_2
    return v0
.end method

.method private blacklist setConfidentialModelCustomList(Ljava/lang/String;)Z
    .locals 4
    .param p1, "uaPackageName"    # Ljava/lang/String;

    .line 344
    const/4 v0, 0x0

    .line 345
    .local v0, "result":Z
    sget-object v1, Lcom/oplus/uamodel/OplusModelUtil;->OPLUS_CONFIDENTIAL_MODEL:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/oplus/uamodel/OplusModelUtil;->CONFIDENTIAL_PROP:Ljava/lang/String;

    .line 346
    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/oplus/uamodel/OplusModelUtil;->UAMODELLIST_OPLUSCONFIDENTIALMODEL:Ljava/util/List;

    .line 347
    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 348
    iput-object v1, p0, Lcom/oplus/uamodel/OplusModelUtil;->mOplusModel:Ljava/lang/String;

    .line 349
    const/4 v0, 0x1

    .line 351
    :cond_0
    return v0
.end method

.method private blacklist setEarlyCustomList(Ljava/lang/String;)Z
    .locals 4
    .param p1, "uaPackageName"    # Ljava/lang/String;

    .line 178
    const/4 v0, 0x0

    .line 179
    .local v0, "result":Z
    sget-object v1, Lcom/oplus/uamodel/OplusModelUtil;->MODEL_DEVICE_LIST_EARLY:Ljava/util/List;

    sget-object v2, Lcom/oplus/uamodel/OplusModelUtil;->BUILD_MODEL:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/oplus/uamodel/OplusModelUtil;->BUILD_DEVICE:Ljava/lang/String;

    .line 180
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 181
    :cond_0
    sget-object v1, Lcom/oplus/uamodel/OplusModelUtil;->OPLUS_MODEL:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/oplus/uamodel/OplusModelUtil;->UAMODELLIST_LITTLETAIL_EARLY:Ljava/util/List;

    .line 182
    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 183
    iput-object v1, p0, Lcom/oplus/uamodel/OplusModelUtil;->mOplusModel:Ljava/lang/String;

    .line 184
    const/4 v0, 0x1

    goto :goto_0

    .line 185
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/oplus/uamodel/OplusModelUtil;->OPLUS_MARKET_NAME:Ljava/lang/String;

    .line 186
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/oplus/uamodel/OplusModelUtil;->UAMODELLIST_ANTUTU_EARLY:Ljava/util/List;

    .line 187
    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 188
    iput-object v1, p0, Lcom/oplus/uamodel/OplusModelUtil;->mOplusModel:Ljava/lang/String;

    .line 189
    const/4 v0, 0x1

    .line 192
    :cond_2
    :goto_0
    return v0
.end method

.method private blacklist setExpCustomList(Ljava/lang/String;Landroid/content/pm/OplusPackageManager;)Z
    .locals 8
    .param p1, "uaPackageName"    # Ljava/lang/String;
    .param p2, "pm"    # Landroid/content/pm/OplusPackageManager;

    .line 271
    const/4 v0, 0x0

    .line 272
    .local v0, "result":Z
    const/4 v1, 0x0

    .line 273
    .local v1, "requestedModel":Z
    const/4 v2, 0x0

    .line 274
    .local v2, "requestedSpecialCase":Z
    sget-object v3, Lcom/oplus/uamodel/OplusModelUtil;->OPLUS_MARKET_NAME:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/oplus/uamodel/OplusModelUtil;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "Find X3 Lite 5G"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/oplus/uamodel/OplusModelUtil;->BUILD_MODEL:Ljava/lang/String;

    const-string v7, "CPH2145"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 275
    const/4 v1, 0x1

    .line 277
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "Find X3 Neo 5G"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/oplus/uamodel/OplusModelUtil;->BUILD_MODEL:Ljava/lang/String;

    const-string v7, "CPH2207"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 278
    const/4 v1, 0x1

    .line 280
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "A94 5G"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/oplus/uamodel/OplusModelUtil;->BUILD_MODEL:Ljava/lang/String;

    const-string v7, "CPH2211"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 281
    const/4 v1, 0x1

    .line 283
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "Reno5 Pro"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/oplus/uamodel/OplusModelUtil;->BUILD_MODEL:Ljava/lang/String;

    const-string v7, "CPH2201"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 284
    const/4 v1, 0x1

    .line 286
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "F21 Pro"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/oplus/uamodel/OplusModelUtil;->BUILD_MODEL:Ljava/lang/String;

    const-string v7, "CPH2363"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 287
    const/4 v1, 0x1

    .line 289
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "A57s"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Lcom/oplus/uamodel/OplusModelUtil;->BUILD_MODEL:Ljava/lang/String;

    const-string v7, "CPH2385"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 290
    const/4 v1, 0x1

    .line 292
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "F19"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v4, Lcom/oplus/uamodel/OplusModelUtil;->BUILD_MODEL:Ljava/lang/String;

    const-string v7, "CPH2219"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 293
    const/4 v1, 0x1

    .line 295
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "10T 5G"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v4, Lcom/oplus/uamodel/OplusModelUtil;->BUILD_MODEL:Ljava/lang/String;

    const-string v5, "RMX3612"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 296
    const/4 v1, 0x1

    .line 297
    const/4 v2, 0x1

    .line 300
    :cond_7
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    if-eqz v1, :cond_8

    sget-object v5, Lcom/oplus/uamodel/OplusModelUtil;->UAMODELLIST_ANTUTU:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 301
    iput-object v3, p0, Lcom/oplus/uamodel/OplusModelUtil;->mOplusModel:Ljava/lang/String;

    .line 302
    const/4 v0, 0x1

    .line 304
    :cond_8
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    if-eqz v2, :cond_9

    sget-object v5, Lcom/oplus/uamodel/OplusModelUtil;->UAMODELLIST_SPECIALCASE:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 305
    iput-object v3, p0, Lcom/oplus/uamodel/OplusModelUtil;->mOplusModel:Ljava/lang/String;

    .line 306
    const/4 v0, 0x1

    .line 308
    :cond_9
    const/16 v5, 0x2e2

    if-eqz v1, :cond_a

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    if-eqz p2, :cond_a

    .line 309
    invoke-virtual {p2, v5, p1}, Landroid/content/pm/OplusPackageManager;->inCptWhiteList(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 310
    iput-object v3, p0, Lcom/oplus/uamodel/OplusModelUtil;->mOplusModel:Ljava/lang/String;

    .line 311
    const/4 v0, 0x1

    .line 313
    :cond_a
    if-eqz v1, :cond_b

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    if-eqz p2, :cond_b

    .line 314
    const-string v3, "ONLY_WHITELIST_FEATURE"

    invoke-virtual {p2, v5, v3}, Landroid/content/pm/OplusPackageManager;->inCptWhiteList(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 315
    invoke-virtual {p2, v5, p1}, Landroid/content/pm/OplusPackageManager;->inCptWhiteList(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 316
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v3, p0, Lcom/oplus/uamodel/OplusModelUtil;->mOplusModel:Ljava/lang/String;

    .line 317
    const/4 v0, 0x0

    .line 319
    :cond_b
    return v0
.end method

.method private blacklist setGUNDAMCustomList(Ljava/lang/String;Landroid/content/pm/OplusPackageManager;)Z
    .locals 4
    .param p1, "uaPackageName"    # Ljava/lang/String;
    .param p2, "pm"    # Landroid/content/pm/OplusPackageManager;

    .line 227
    const/4 v0, 0x0

    .line 228
    .local v0, "result":Z
    sget-object v1, Lcom/oplus/uamodel/OplusModelUtil;->GUNDAM:Ljava/lang/String;

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/oplus/uamodel/OplusModelUtil;->OPLUS_MODEL:Ljava/lang/String;

    .line 229
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/oplus/uamodel/OplusModelUtil;->BUILD_MODEL:Ljava/lang/String;

    .line 230
    const-string v3, "PCLM10"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 231
    sget-object v2, Lcom/oplus/uamodel/OplusModelUtil;->UAMODELLIST_LITTLETAIL_CUSTOMIZED:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    iput-object v1, p0, Lcom/oplus/uamodel/OplusModelUtil;->mOplusModel:Ljava/lang/String;

    .line 233
    const/4 v0, 0x1

    .line 235
    :cond_0
    const/16 v2, 0x2e2

    if-eqz p2, :cond_1

    invoke-virtual {p2, v2, p1}, Landroid/content/pm/OplusPackageManager;->inCptWhiteList(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 236
    iput-object v1, p0, Lcom/oplus/uamodel/OplusModelUtil;->mOplusModel:Ljava/lang/String;

    .line 237
    const/4 v0, 0x1

    .line 239
    :cond_1
    if-eqz p2, :cond_2

    const-string v1, "ONLY_WHITELIST_FEATURE"

    invoke-virtual {p2, v2, v1}, Landroid/content/pm/OplusPackageManager;->inCptWhiteList(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 240
    invoke-virtual {p2, v2, p1}, Landroid/content/pm/OplusPackageManager;->inCptWhiteList(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 241
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v1, p0, Lcom/oplus/uamodel/OplusModelUtil;->mOplusModel:Ljava/lang/String;

    .line 242
    const/4 v0, 0x0

    .line 245
    :cond_2
    return v0
.end method

.method private blacklist setLastModelCustomList(Ljava/lang/String;)Z
    .locals 4
    .param p1, "uaPackageName"    # Ljava/lang/String;

    .line 333
    const/4 v0, 0x0

    .line 334
    .local v0, "result":Z
    sget-object v1, Lcom/oplus/uamodel/OplusModelUtil;->LITTLE_TAIL_MODEL:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/oplus/uamodel/OplusModelUtil;->BUILD_MODEL:Ljava/lang/String;

    .line 335
    const-string v3, "PERM10"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/oplus/uamodel/OplusModelUtil;->UAMODELLIST_LITTLETAIL_CUSTOMIZED_LAST:Ljava/util/List;

    .line 336
    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 337
    iput-object v1, p0, Lcom/oplus/uamodel/OplusModelUtil;->mOplusModel:Ljava/lang/String;

    .line 338
    const/4 v0, 0x1

    .line 340
    :cond_0
    return v0
.end method

.method private blacklist setLowerCaseModelCustomList(Ljava/lang/String;Landroid/content/pm/OplusPackageManager;)Z
    .locals 3
    .param p1, "uaPackageName"    # Ljava/lang/String;
    .param p2, "pm"    # Landroid/content/pm/OplusPackageManager;

    .line 168
    const/4 v0, 0x0

    .line 169
    .local v0, "result":Z
    sget-object v1, Lcom/oplus/uamodel/OplusModelUtil;->BUILD_MODEL:Ljava/lang/String;

    const-string v2, "PFDM00"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    const/16 v1, 0x2e1

    invoke-virtual {p2, v1, p1}, Landroid/content/pm/OplusPackageManager;->inCptWhiteList(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    const-string v1, "pfdm00"

    iput-object v1, p0, Lcom/oplus/uamodel/OplusModelUtil;->mOplusModel:Ljava/lang/String;

    .line 171
    const/4 v0, 0x1

    .line 173
    :cond_0
    return v0
.end method

.method private blacklist setSinglemodel(Ljava/lang/String;Landroid/content/pm/OplusPackageManager;)Z
    .locals 3
    .param p1, "uaPackageName"    # Ljava/lang/String;
    .param p2, "pm"    # Landroid/content/pm/OplusPackageManager;

    .line 355
    const/4 v0, 0x0

    .line 356
    .local v0, "result":Z
    sget-object v1, Lcom/oplus/uamodel/OplusModelUtil;->CONFIDENTIAL_PROP:Ljava/lang/String;

    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 357
    invoke-direct {p0, p1, p2}, Lcom/oplus/uamodel/OplusModelUtil;->setExpCustomList(Ljava/lang/String;Landroid/content/pm/OplusPackageManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 358
    const/4 v0, 0x1

    .line 360
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/oplus/uamodel/OplusModelUtil;->setGUNDAMCustomList(Ljava/lang/String;Landroid/content/pm/OplusPackageManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 361
    const/4 v0, 0x1

    .line 363
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/oplus/uamodel/OplusModelUtil;->setBarceCustomList(Ljava/lang/String;Landroid/content/pm/OplusPackageManager;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 364
    const/4 v0, 0x1

    .line 366
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/oplus/uamodel/OplusModelUtil;->setThemeCustomList(Ljava/lang/String;Landroid/content/pm/OplusPackageManager;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 367
    const/4 v0, 0x1

    .line 369
    :cond_3
    invoke-direct {p0, p1}, Lcom/oplus/uamodel/OplusModelUtil;->setSpecialModelCustomList(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 370
    const/4 v0, 0x1

    .line 372
    :cond_4
    invoke-direct {p0, p1}, Lcom/oplus/uamodel/OplusModelUtil;->setLastModelCustomList(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 373
    const/4 v0, 0x1

    .line 375
    :cond_5
    invoke-direct {p0, p1}, Lcom/oplus/uamodel/OplusModelUtil;->setEarlyCustomList(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 376
    const/4 v0, 0x1

    .line 378
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/oplus/uamodel/OplusModelUtil;->setLowerCaseModelCustomList(Ljava/lang/String;Landroid/content/pm/OplusPackageManager;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 379
    const/4 v0, 0x1

    .line 382
    :cond_7
    return v0
.end method

.method private blacklist setSpecialModelCustomList(Ljava/lang/String;)Z
    .locals 4
    .param p1, "uaPackageName"    # Ljava/lang/String;

    .line 323
    const/4 v0, 0x0

    .line 324
    .local v0, "result":Z
    sget-object v1, Lcom/oplus/uamodel/OplusModelUtil;->OPLUS_MODEL:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/oplus/uamodel/OplusModelUtil;->BUILD_MODEL:Ljava/lang/String;

    .line 325
    const-string v3, "PDRM00"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/oplus/uamodel/OplusModelUtil;->UAMODELLIST_LITTLETAIL_SPECIALMODEL:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 326
    iput-object v1, p0, Lcom/oplus/uamodel/OplusModelUtil;->mOplusModel:Ljava/lang/String;

    .line 327
    const/4 v0, 0x1

    .line 329
    :cond_0
    return v0
.end method

.method private blacklist setThemeCustomList(Ljava/lang/String;Landroid/content/pm/OplusPackageManager;)Z
    .locals 6
    .param p1, "uaPackageName"    # Ljava/lang/String;
    .param p2, "pm"    # Landroid/content/pm/OplusPackageManager;

    .line 196
    const/4 v0, 0x0

    .line 197
    .local v0, "result":Z
    const/4 v1, 0x0

    .line 198
    .local v1, "requestedModel":Z
    sget-object v2, Lcom/oplus/uamodel/OplusModelUtil;->BUILD_MODEL:Ljava/lang/String;

    const-string v3, "PDEM10"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/oplus/uamodel/OplusModelUtil;->THEME:Ljava/lang/String;

    const-string v4, "00FFF008"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 199
    const/4 v1, 0x1

    .line 201
    :cond_0
    const-string v3, "PDEM30"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/oplus/uamodel/OplusModelUtil;->THEME:Ljava/lang/String;

    const-string v4, "00FFF002"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 202
    const/4 v1, 0x1

    .line 204
    :cond_1
    const-string v3, "PDHM00"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/oplus/uamodel/OplusModelUtil;->THEME:Ljava/lang/String;

    const-string v3, "00FFF003"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 205
    const/4 v1, 0x1

    .line 207
    :cond_2
    const-string v2, ""

    if-eqz v1, :cond_3

    sget-object v3, Lcom/oplus/uamodel/OplusModelUtil;->OPLUS_MODEL:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/oplus/uamodel/OplusModelUtil;->UAMODELLIST_LITTLETAIL_CUSTOMIZED_EARLY:Ljava/util/List;

    .line 208
    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 209
    iput-object v3, p0, Lcom/oplus/uamodel/OplusModelUtil;->mOplusModel:Ljava/lang/String;

    .line 210
    const/4 v0, 0x1

    .line 212
    :cond_3
    const/16 v3, 0x2e2

    if-eqz v1, :cond_4

    sget-object v4, Lcom/oplus/uamodel/OplusModelUtil;->OPLUS_MODEL:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    if-eqz p2, :cond_4

    .line 213
    invoke-virtual {p2, v3, p1}, Landroid/content/pm/OplusPackageManager;->inCptWhiteList(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 214
    iput-object v4, p0, Lcom/oplus/uamodel/OplusModelUtil;->mOplusModel:Ljava/lang/String;

    .line 215
    const/4 v0, 0x1

    .line 217
    :cond_4
    if-eqz v1, :cond_5

    sget-object v4, Lcom/oplus/uamodel/OplusModelUtil;->OPLUS_MODEL:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz p2, :cond_5

    .line 218
    const-string v2, "ONLY_WHITELIST_FEATURE"

    invoke-virtual {p2, v3, v2}, Landroid/content/pm/OplusPackageManager;->inCptWhiteList(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 219
    invoke-virtual {p2, v3, p1}, Landroid/content/pm/OplusPackageManager;->inCptWhiteList(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 220
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v2, p0, Lcom/oplus/uamodel/OplusModelUtil;->mOplusModel:Ljava/lang/String;

    .line 221
    const/4 v0, 0x0

    .line 223
    :cond_5
    return v0
.end method


# virtual methods
.method public blacklist changeToSpecialModel()V
    .locals 3

    .line 478
    :try_start_0
    const-class v0, Landroid/os/Build;

    const-string v1, "MODEL"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 479
    .local v0, "field":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 480
    const-class v1, Landroid/os/Build;

    iget-object v2, p0, Lcom/oplus/uamodel/OplusModelUtil;->mOplusModel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    .end local v0    # "field":Ljava/lang/reflect/Field;
    goto :goto_0

    .line 481
    :catch_0
    move-exception v0

    .line 483
    :goto_0
    return-void
.end method

.method public blacklist setModelOk(Ljava/lang/String;)Z
    .locals 4
    .param p1, "uaPackageName"    # Ljava/lang/String;

    .line 457
    const/4 v0, 0x0

    .line 458
    .local v0, "canSetUaModel":Z
    new-instance v1, Landroid/content/pm/OplusPackageManager;

    invoke-direct {v1}, Landroid/content/pm/OplusPackageManager;-><init>()V

    .line 459
    .local v1, "pm":Landroid/content/pm/OplusPackageManager;
    invoke-direct {p0, p1}, Lcom/oplus/uamodel/OplusModelUtil;->setConfidentialModelCustomList(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 460
    const/4 v0, 0x1

    .line 462
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/oplus/uamodel/OplusModelUtil;->setSinglemodel(Ljava/lang/String;Landroid/content/pm/OplusPackageManager;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 463
    const/4 v0, 0x1

    .line 465
    :cond_1
    invoke-direct {p0, p1}, Lcom/oplus/uamodel/OplusModelUtil;->setCommonLittleTailmodel(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 466
    const/4 v0, 0x1

    .line 468
    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/oplus/uamodel/OplusModelUtil;->setCommonLittleTailCptWhiteList(Ljava/lang/String;Landroid/content/pm/OplusPackageManager;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 469
    const/4 v0, 0x1

    goto :goto_0

    .line 470
    :cond_3
    invoke-direct {p0, p1, v1}, Lcom/oplus/uamodel/OplusModelUtil;->setCommonLittleTailCptWhiteList(Ljava/lang/String;Landroid/content/pm/OplusPackageManager;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 471
    const/4 v0, 0x0

    .line 473
    :cond_4
    :goto_0
    return v0
.end method
