.class public Lcom/android/server/SystemConfigExtImpl;
.super Ljava/lang/Object;
.source "SystemConfigExtImpl.java"

# interfaces
.implements Lcom/android/server/ISystemConfigExt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SystemConfigExtImpl$CustomFeatureInfo;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z

.field private static final blacklist DEBUG_LOAD_FEATURE:Z

.field private static final blacklist PERMISSION_XML_ROM:Ljava/lang/String; = "/system_ext/etc/permissions/com.oppo.rom.xml"

.field private static final blacklist PROPERTY_DEF_VALUE_ROM_FEATURE:Ljava/lang/String; = "allnet"

.field private static final blacklist PROPERTY_DEF_VALUE_ROM_TEST_FEATURE:Ljava/lang/String; = "allnetcmccdeeptest"

.field private static final blacklist PROPERTY_NAME_ROM_FEATURE:Ljava/lang/String; = "ro.rom.featrue"

.field private static final blacklist PROPERTY_NAME_ROM_TEST_FEATURE:Ljava/lang/String; = "ro.rom.test.featrue"

.field private static final blacklist TAG:Ljava/lang/String; = "SystemConfig"

.field private static final blacklist customDirectoryArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist mCustomAvailableFeatures:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/SystemConfigExtImpl$CustomFeatureInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist mCustomUnavailableFeatures:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/FeaturePriority;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sFeatureDirPriorityMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/FeaturePriority;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mSystemConfig:Lcom/android/server/SystemConfig;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 4

    .line 53
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/SystemConfigExtImpl;->DEBUG:Z

    .line 54
    const-string v0, "persist.debug.loadfeature"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/SystemConfigExtImpl;->DEBUG_LOAD_FEATURE:Z

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/io/File;

    .line 62
    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyPreloadDirectory()Ljava/io/File;

    move-result-object v3

    aput-object v3, v2, v1

    .line 63
    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyHeytapDirectory()Ljava/io/File;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v2, v3

    .line 64
    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyStockDirectory()Ljava/io/File;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v2, v3

    .line 65
    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyProductDirectory()Ljava/io/File;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v2, v3

    .line 66
    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyRegionDirectory()Ljava/io/File;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v2, v3

    .line 67
    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyCarrierDirectory()Ljava/io/File;

    move-result-object v1

    const/4 v3, 0x5

    aput-object v1, v2, v3

    .line 68
    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyCompanyDirectory()Ljava/io/File;

    move-result-object v1

    const/4 v3, 0x6

    aput-object v1, v2, v3

    .line 69
    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyEngineeringDirectory()Ljava/io/File;

    move-result-object v1

    const/4 v3, 0x7

    aput-object v1, v2, v3

    .line 70
    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyBigballDirectory()Ljava/io/File;

    move-result-object v1

    const/16 v3, 0x8

    aput-object v1, v2, v3

    .line 61
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/SystemConfigExtImpl;->customDirectoryArrayList:Ljava/util/ArrayList;

    .line 361
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/SystemConfigExtImpl;->sFeatureDirPriorityMap:Ljava/util/HashMap;

    .line 363
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/server/FeaturePriority;->PRIORITY_SYSTEM:Lcom/android/server/FeaturePriority;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    sget-object v0, Lcom/android/server/SystemConfigExtImpl;->sFeatureDirPriorityMap:Ljava/util/HashMap;

    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/server/FeaturePriority;->PRIORITY_SYSTEM:Lcom/android/server/FeaturePriority;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    sget-object v0, Lcom/android/server/SystemConfigExtImpl;->sFeatureDirPriorityMap:Ljava/util/HashMap;

    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/server/FeaturePriority;->PRIORITY_SYSTEM:Lcom/android/server/FeaturePriority;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    sget-object v0, Lcom/android/server/SystemConfigExtImpl;->sFeatureDirPriorityMap:Ljava/util/HashMap;

    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/server/FeaturePriority;->PRIORITY_SYSTEM:Lcom/android/server/FeaturePriority;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    sget-object v0, Lcom/android/server/SystemConfigExtImpl;->sFeatureDirPriorityMap:Ljava/util/HashMap;

    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/server/FeaturePriority;->PRIORITY_SYSTEM:Lcom/android/server/FeaturePriority;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    sget-object v0, Lcom/android/server/SystemConfigExtImpl;->sFeatureDirPriorityMap:Ljava/util/HashMap;

    invoke-static {}, Landroid/os/Environment;->getSystemExtDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/server/FeaturePriority;->PRIORITY_SYSTEM:Lcom/android/server/FeaturePriority;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    sget-object v0, Lcom/android/server/SystemConfigExtImpl;->sFeatureDirPriorityMap:Ljava/util/HashMap;

    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyPreloadDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/server/FeaturePriority;->PRIORITY_STOCK:Lcom/android/server/FeaturePriority;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    sget-object v0, Lcom/android/server/SystemConfigExtImpl;->sFeatureDirPriorityMap:Ljava/util/HashMap;

    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyStockDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/server/FeaturePriority;->PRIORITY_STOCK:Lcom/android/server/FeaturePriority;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    sget-object v0, Lcom/android/server/SystemConfigExtImpl;->sFeatureDirPriorityMap:Ljava/util/HashMap;

    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyHeytapDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/server/FeaturePriority;->PRIORITY_STOCK:Lcom/android/server/FeaturePriority;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    sget-object v0, Lcom/android/server/SystemConfigExtImpl;->sFeatureDirPriorityMap:Ljava/util/HashMap;

    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyProductDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/server/FeaturePriority;->PRIORITY_PRODUCT:Lcom/android/server/FeaturePriority;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    sget-object v0, Lcom/android/server/SystemConfigExtImpl;->sFeatureDirPriorityMap:Ljava/util/HashMap;

    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyRegionDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/server/FeaturePriority;->PRIORITY_REGION:Lcom/android/server/FeaturePriority;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    sget-object v0, Lcom/android/server/SystemConfigExtImpl;->sFeatureDirPriorityMap:Ljava/util/HashMap;

    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyCarrierDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/server/FeaturePriority;->PRIORITY_CARRIER:Lcom/android/server/FeaturePriority;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    sget-object v0, Lcom/android/server/SystemConfigExtImpl;->sFeatureDirPriorityMap:Ljava/util/HashMap;

    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyCompanyDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/server/FeaturePriority;->PRIORITY_COMPANY:Lcom/android/server/FeaturePriority;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    sget-object v0, Lcom/android/server/SystemConfigExtImpl;->sFeatureDirPriorityMap:Ljava/util/HashMap;

    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyEngineeringDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/server/FeaturePriority;->PRIORITY_ENGINEER:Lcom/android/server/FeaturePriority;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/SystemConfigExtImpl;->mCustomAvailableFeatures:Landroid/util/ArrayMap;

    .line 392
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/SystemConfigExtImpl;->mCustomUnavailableFeatures:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "config"    # Ljava/lang/Object;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    move-object v0, p1

    check-cast v0, Lcom/android/server/SystemConfig;

    iput-object v0, p0, Lcom/android/server/SystemConfigExtImpl;->mSystemConfig:Lcom/android/server/SystemConfig;

    .line 81
    return-void
.end method

.method private blacklist addCustomFeature(Ljava/lang/String;ILcom/android/server/FeaturePriority;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # I
    .param p3, "priority"    # Lcom/android/server/FeaturePriority;

    .line 418
    sget-object v0, Lcom/android/server/SystemConfigExtImpl;->mCustomAvailableFeatures:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/SystemConfigExtImpl$CustomFeatureInfo;

    .line 419
    .local v1, "fi":Lcom/android/server/SystemConfigExtImpl$CustomFeatureInfo;
    if-nez v1, :cond_0

    .line 420
    new-instance v2, Lcom/android/server/SystemConfigExtImpl$CustomFeatureInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/SystemConfigExtImpl$CustomFeatureInfo;-><init>(Lcom/android/server/SystemConfigExtImpl$CustomFeatureInfo-IA;)V

    move-object v1, v2

    .line 421
    iput-object p1, v1, Lcom/android/server/SystemConfigExtImpl$CustomFeatureInfo;->name:Ljava/lang/String;

    .line 422
    iput p2, v1, Lcom/android/server/SystemConfigExtImpl$CustomFeatureInfo;->version:I

    .line 423
    iput-object p3, v1, Lcom/android/server/SystemConfigExtImpl$CustomFeatureInfo;->priority:Lcom/android/server/FeaturePriority;

    .line 424
    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addCustomFeature name="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/SystemConfigExtImpl$CustomFeatureInfo;->priority:Lcom/android/server/FeaturePriority;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SystemConfig"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 427
    :cond_0
    iget v0, v1, Lcom/android/server/SystemConfigExtImpl$CustomFeatureInfo;->version:I

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/android/server/SystemConfigExtImpl$CustomFeatureInfo;->version:I

    .line 429
    :goto_0
    return-void
.end method

.method private blacklist addCustomUnAvailableFeature(Ljava/lang/String;Lcom/android/server/FeaturePriority;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "priority"    # Lcom/android/server/FeaturePriority;

    .line 432
    sget-object v0, Lcom/android/server/SystemConfigExtImpl;->mCustomUnavailableFeatures:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/FeaturePriority;

    .line 433
    .local v1, "existPriority":Lcom/android/server/FeaturePriority;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addCustomUnAvailableFeature name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", existPriority="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SystemConfig"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    if-eqz v1, :cond_0

    invoke-virtual {p2, v1}, Lcom/android/server/FeaturePriority;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 435
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    :cond_1
    return-void
.end method

.method private blacklist determineIfOplusCustomPartition(Ljava/io/File;)Z
    .locals 7
    .param p1, "file"    # Ljava/io/File;

    .line 263
    const/4 v0, 0x0

    .line 264
    .local v0, "result":Z
    if-eqz p1, :cond_4

    .line 265
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    .line 266
    .local v1, "filePath":Ljava/nio/file/Path;
    const-string v2, "ro.sys.sim.switch.apk.scan.system"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/OplusSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "SystemConfig"

    if-eqz v2, :cond_1

    .line 267
    const-string v2, "PROPETY_SIM_SWITCH_APK_SCAN_SYSTEM is true in determineIfOplusCustomPartition"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    sget-object v2, Lcom/android/server/SystemConfigExtImpl;->customDirectoryArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 269
    .local v4, "customFile":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/apps_extension/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/nio/file/Path;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 270
    const/4 v2, 0x0

    return v2

    .line 272
    .end local v4    # "customFile":Ljava/io/File;
    :cond_0
    goto :goto_0

    .line 274
    :cond_1
    sget-object v2, Lcom/android/server/SystemConfigExtImpl;->customDirectoryArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 275
    .restart local v4    # "customFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/nio/file/Path;->startsWith(Ljava/nio/file/Path;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 276
    const/4 v0, 0x1

    .line 278
    .end local v4    # "customFile":Ljava/io/File;
    :cond_2
    goto :goto_1

    .line 279
    :cond_3
    sget-boolean v2, Lcom/android/server/SystemConfigExtImpl;->DEBUG_LOAD_FEATURE:Z

    if-eqz v2, :cond_4

    .line 280
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scaning "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    .end local v1    # "filePath":Ljava/nio/file/Path;
    :cond_4
    return v0
.end method

.method private blacklist filterRomFeatureFile(Ljava/io/File;)Z
    .locals 6
    .param p1, "file"    # Ljava/io/File;

    .line 233
    sget-boolean v0, Lcom/android/server/SystemConfigExtImpl;->DEBUG_LOAD_FEATURE:Z

    const-string v1, "SystemConfig"

    if-eqz v0, :cond_0

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "filterRomFeatureFile "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_0
    const-string v0, "ro.rom.featrue"

    const-string v2, "allnet"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "romFeature":Ljava/lang/String;
    const-string v2, "ro.rom.test.featrue"

    const-string v3, "allnetcmccdeeptest"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 241
    .local v2, "romTestFeature":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/system/etc/permissions/com.oppo.rom."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 242
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".xml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 243
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/system_ext/etc/permissions/com.oppo.rom.xml"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 244
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scan feature file : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",ignore!!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const/4 v1, 0x1

    return v1

    .line 248
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist getFeaturePriorityFromPath(Ljava/lang/String;)Lcom/android/server/FeaturePriority;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .line 440
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 444
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 445
    .local v1, "splits":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 446
    sget-object v0, Lcom/android/server/FeaturePriority;->PRIORITY_SYSTEM:Lcom/android/server/FeaturePriority;

    return-object v0

    .line 448
    :cond_1
    const/4 v2, 0x1

    aget-object v2, v1, v2

    .line 449
    .local v2, "root":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, "prefix":Ljava/lang/String;
    sget-object v3, Lcom/android/server/SystemConfigExtImpl;->sFeatureDirPriorityMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 452
    sget-object v3, Lcom/android/server/SystemConfigExtImpl;->sFeatureDirPriorityMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/FeaturePriority;

    return-object v3

    .line 454
    :cond_2
    sget-object v3, Lcom/android/server/FeaturePriority;->PRIORITY_SYSTEM:Lcom/android/server/FeaturePriority;

    return-object v3

    .line 441
    .end local v0    # "prefix":Ljava/lang/String;
    .end local v1    # "splits":[Ljava/lang/String;
    .end local v2    # "root":Ljava/lang/String;
    :cond_3
    :goto_0
    sget-object v0, Lcom/android/server/FeaturePriority;->PRIORITY_SYSTEM:Lcom/android/server/FeaturePriority;

    return-object v0
.end method

.method private blacklist readOplusCustomFeatures()V
    .locals 8

    .line 94
    invoke-static {}, Lcom/android/server/SystemConfig;->getStaticWrapper()Lcom/android/server/ISystemConfigStaticWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/ISystemConfigStaticWrapper;->getAllowAllFlag()I

    move-result v0

    .line 95
    .local v0, "readFlag":I
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 96
    .local v1, "customDirectorySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/io/File;>;"
    sget-object v2, Lcom/android/server/SystemConfigExtImpl;->customDirectoryArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 97
    .local v3, "customFile":Ljava/io/File;
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 98
    .end local v3    # "customFile":Ljava/io/File;
    goto :goto_0

    .line 99
    :cond_0
    const-string v2, "sys.sim.switch.first"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/OplusSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 100
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/apps_extension/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2, v3}, Landroid/os/OplusSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SimSwitchFirstTime"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "simSwitchFirstTimePath":Ljava/lang/String;
    sget-object v3, Lcom/android/server/SystemConfigExtImpl;->customDirectoryArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 102
    .local v4, "parentFile":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    .local v5, "subdirectory":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 104
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    .end local v4    # "parentFile":Ljava/io/File;
    .end local v5    # "subdirectory":Ljava/io/File;
    :cond_1
    goto :goto_1

    .line 108
    .end local v2    # "simSwitchFirstTimePath":Ljava/lang/String;
    :cond_2
    const-string v2, "etc"

    const-string v3, "sysconfig"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v0, v3}, Lcom/android/server/SystemConfigExtImpl;->readTargetPathFeatures(Ljava/util/Set;I[Ljava/lang/String;)V

    .line 109
    invoke-static {}, Lcom/android/server/SystemConfig;->getStaticWrapper()Lcom/android/server/ISystemConfigStaticWrapper;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/ISystemConfigStaticWrapper;->getAllowPermissionsFlag()I

    move-result v3

    .line 110
    invoke-static {}, Lcom/android/server/SystemConfig;->getStaticWrapper()Lcom/android/server/ISystemConfigStaticWrapper;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/ISystemConfigStaticWrapper;->getAllowPrivAppPermissionsFlag()I

    move-result v4

    or-int/2addr v3, v4

    .line 111
    invoke-static {}, Lcom/android/server/SystemConfig;->getStaticWrapper()Lcom/android/server/ISystemConfigStaticWrapper;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/ISystemConfigStaticWrapper;->getAllowFeaturesFlag()I

    move-result v4

    or-int v0, v3, v4

    .line 112
    const-string v3, "permissions"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/SystemConfigExtImpl;->readTargetPathFeatures(Ljava/util/Set;I[Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method private blacklist readOplusFeature(Ljava/io/File;)Landroid/util/ArrayMap;
    .locals 12
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/FeatureInfo;",
            ">;"
        }
    .end annotation

    .line 160
    const-string v0, "Got exception parsing permissions."

    sget-boolean v1, Lcom/android/server/SystemConfigExtImpl;->DEBUG:Z

    const-string v2, "SystemConfig"

    if-eqz v1, :cond_0

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readOplusFeature "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_0
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 164
    .local v1, "featureInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/FeatureInfo;>;"
    const/4 v3, 0x0

    .line 166
    .local v3, "permReader":Ljava/io/FileReader;
    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v3, v5

    .line 170
    nop

    .line 172
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 173
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 176
    :goto_0
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    move v7, v6

    .local v7, "type":I
    const/4 v8, 0x1

    const/4 v9, 0x2

    if-eq v6, v9, :cond_1

    if-eq v7, v8, :cond_1

    goto :goto_0

    .line 181
    :cond_1
    if-ne v7, v9, :cond_5

    .line 186
    :goto_1
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 187
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    if-ne v6, v8, :cond_2

    .line 188
    nop

    .line 215
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "type":I
    goto/16 :goto_3

    .line 191
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "type":I
    :cond_2
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 192
    .local v6, "name":Ljava/lang/String;
    const-string v9, "feature"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 193
    const-string v9, "name"

    invoke-interface {v5, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 194
    .local v9, "fname":Ljava/lang/String;
    if-nez v9, :cond_3

    .line 195
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "<feature> without name in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 196
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 195
    invoke-static {v2, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 198
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Got feature "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    new-instance v10, Landroid/content/pm/FeatureInfo;

    invoke-direct {v10}, Landroid/content/pm/FeatureInfo;-><init>()V

    .line 200
    .local v10, "fi":Landroid/content/pm/FeatureInfo;
    iput-object v9, v10, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    .line 201
    invoke-virtual {v1, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    .end local v10    # "fi":Landroid/content/pm/FeatureInfo;
    :goto_2
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 204
    goto :goto_1

    .line 206
    .end local v9    # "fname":Ljava/lang/String;
    :cond_4
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 207
    goto :goto_1

    .line 182
    .end local v6    # "name":Ljava/lang/String;
    :cond_5
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v6, "No start tag found"

    invoke-direct {v4, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v1    # "featureInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/FeatureInfo;>;"
    .end local v3    # "permReader":Ljava/io/FileReader;
    .end local p0    # "this":Lcom/android/server/SystemConfigExtImpl;
    .end local p1    # "file":Ljava/io/File;
    throw v4
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "type":I
    .restart local v1    # "featureInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/FeatureInfo;>;"
    .restart local v3    # "permReader":Ljava/io/FileReader;
    .restart local p0    # "this":Lcom/android/server/SystemConfigExtImpl;
    .restart local p1    # "file":Ljava/io/File;
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 212
    :catch_0
    move-exception v4

    .line 213
    .local v4, "e":Ljava/io/IOException;
    :try_start_2
    invoke-static {v2, v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 215
    nop

    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 210
    :catch_1
    move-exception v4

    .line 211
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-static {v2, v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 215
    nop

    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 216
    nop

    .line 217
    return-object v1

    .line 215
    :goto_4
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 216
    throw v0

    .line 167
    :catch_2
    move-exception v0

    .line 168
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t find or open permissions file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return-object v4
.end method

.method private varargs blacklist readTargetPathFeatures(Ljava/util/Set;I[Ljava/lang/String;)V
    .locals 5
    .param p2, "flag"    # I
    .param p3, "subDirectory"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/io/File;",
            ">;I[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 116
    .local p1, "parentDirectory":Ljava/util/Set;, "Ljava/util/Set<Ljava/io/File;>;"
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 117
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    if-eqz p1, :cond_2

    .line 118
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 119
    .local v2, "perDirectory":Ljava/io/File;
    sget-boolean v3, Lcom/android/server/SystemConfigExtImpl;->DEBUG_LOAD_FEATURE:Z

    if-eqz v3, :cond_0

    .line 120
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scaning  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SystemConfig"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 123
    iget-object v3, p0, Lcom/android/server/SystemConfigExtImpl;->mSystemConfig:Lcom/android/server/SystemConfig;

    invoke-static {v2, p3}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v0, v4, p2}, Lcom/android/server/SystemConfig;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/File;I)V

    .line 125
    .end local v2    # "perDirectory":Ljava/io/File;
    :cond_1
    goto :goto_0

    .line 127
    :cond_2
    return-void
.end method

.method private blacklist removeFeatureWithPriority(Ljava/lang/String;)Z
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "trying to removeFeatureWithPriority for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemConfig"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    sget-object v0, Lcom/android/server/SystemConfigExtImpl;->mCustomAvailableFeatures:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/SystemConfigExtImpl$CustomFeatureInfo;

    .line 397
    .local v2, "fi":Lcom/android/server/SystemConfigExtImpl$CustomFeatureInfo;
    if-eqz v2, :cond_2

    .line 398
    sget-object v3, Lcom/android/server/SystemConfigExtImpl;->mCustomUnavailableFeatures:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/FeaturePriority;

    .line 399
    .local v3, "unavailablePriority":Lcom/android/server/FeaturePriority;
    const-string v4, ", unavailablePriority="

    const-string v5, ",priority="

    if-eqz v3, :cond_1

    iget-object v6, v2, Lcom/android/server/SystemConfigExtImpl$CustomFeatureInfo;->priority:Lcom/android/server/FeaturePriority;

    invoke-virtual {v3, v6}, Lcom/android/server/FeaturePriority;->compareTo(Ljava/lang/Enum;)I

    move-result v6

    if-ltz v6, :cond_1

    .line 400
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removed unavailable feature "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, v2, Lcom/android/server/SystemConfigExtImpl$CustomFeatureInfo;->priority:Lcom/android/server/FeaturePriority;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 404
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCustomAvailableFeatures.remove "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " failed"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    .end local v3    # "unavailablePriority":Lcom/android/server/FeaturePriority;
    :goto_0
    goto :goto_1

    .line 407
    .restart local v3    # "unavailablePriority":Lcom/android/server/FeaturePriority;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "can\'t remove unavailable feature "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, v2, Lcom/android/server/SystemConfigExtImpl$CustomFeatureInfo;->priority:Lcom/android/server/FeaturePriority;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const/4 v0, 0x0

    return v0

    .line 412
    .end local v3    # "unavailablePriority":Lcom/android/server/FeaturePriority;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeFeatureWithPriority can\'t find featureinfo for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :goto_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public blacklist addPowerSaveWhitelistExceptIdleForCota(Ljava/lang/String;)V
    .locals 5
    .param p1, "pkgname"    # Ljava/lang/String;

    .line 342
    const-string v0, "persist.sys.load.system.config.cota"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/OplusSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 343
    invoke-static {}, Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager;->getInstance()Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager;

    move-result-object v0

    .line 344
    .local v0, "oplusDevicepolicyManager":Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager;
    const-string v1, "addPowerSaveWhitelistExceptIdleForCota"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager;->getList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    .line 345
    .local v3, "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v3, :cond_0

    .line 346
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v4

    .line 348
    :cond_0
    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 349
    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    :cond_1
    invoke-virtual {v0, v1, v3, v2}, Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager;->setList(Ljava/lang/String;Ljava/util/List;I)Z

    .line 353
    .end local v0    # "oplusDevicepolicyManager":Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager;
    .end local v3    # "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    return-void
.end method

.method public blacklist addPowerSaveWhitelistForCota(Ljava/lang/String;)V
    .locals 5
    .param p1, "pkgname"    # Ljava/lang/String;

    .line 327
    const-string v0, "persist.sys.load.system.config.cota"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/OplusSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 328
    invoke-static {}, Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager;->getInstance()Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager;

    move-result-object v0

    .line 329
    .local v0, "oplusDevicepolicyManager":Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager;
    const-string v1, "addPowerSaveWhitelistForCota"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager;->getList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    .line 330
    .local v3, "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v3, :cond_0

    .line 331
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v4

    .line 333
    :cond_0
    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 334
    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    :cond_1
    invoke-virtual {v0, v1, v3, v2}, Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager;->setList(Ljava/lang/String;Ljava/util/List;I)Z

    .line 338
    .end local v0    # "oplusDevicepolicyManager":Landroid/os/oplusdevicepolicy/OplusDevicepolicyManager;
    .end local v3    # "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    return-void
.end method

.method public blacklist filterFileInReadPermissions(Ljava/io/File;)Z
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .line 226
    invoke-direct {p0, p1}, Lcom/android/server/SystemConfigExtImpl;->filterRomFeatureFile(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public blacklist interceptRemoveFeatureInRead(Ljava/lang/String;)Z
    .locals 1
    .param p1, "featureName"    # Ljava/lang/String;

    .line 291
    invoke-direct {p0, p1}, Lcom/android/server/SystemConfigExtImpl;->removeFeatureWithPriority(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public blacklist isFilePartitionWithProductFlag(Ljava/io/File;)Z
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .line 256
    invoke-direct {p0, p1}, Lcom/android/server/SystemConfigExtImpl;->determineIfOplusCustomPartition(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public blacklist loadOplusAvailableFeatures(Ljava/lang/String;)Landroid/util/ArrayMap;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/FeatureInfo;",
            ">;"
        }
    .end annotation

    .line 135
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "etc"

    const-string v2, "oppoRegionFeatures"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 136
    .local v0, "featureDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "SystemConfig"

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 140
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_1

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Directory "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " cannot be read"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return-object v2

    .line 144
    :cond_1
    const/4 v1, 0x0

    .line 145
    .local v1, "loadFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_3

    aget-object v7, v4, v6

    .line 147
    .local v7, "f":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 148
    move-object v1, v7

    .line 149
    goto :goto_1

    .line 145
    .end local v7    # "f":Ljava/io/File;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 152
    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 153
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "path not exist : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-object v2

    .line 156
    :cond_4
    invoke-direct {p0, v1}, Lcom/android/server/SystemConfigExtImpl;->readOplusFeature(Ljava/io/File;)Landroid/util/ArrayMap;

    move-result-object v2

    return-object v2

    .line 137
    .end local v1    # "loadFile":Ljava/io/File;
    :cond_5
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No directory "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", skipping"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-object v2
.end method

.method public blacklist onAddFeatureInRead(Ljava/lang/String;ILjava/io/File;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # I
    .param p3, "file"    # Ljava/io/File;

    .line 299
    invoke-virtual {p3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/SystemConfigExtImpl;->getFeaturePriorityFromPath(Ljava/lang/String;)Lcom/android/server/FeaturePriority;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/SystemConfigExtImpl;->addCustomFeature(Ljava/lang/String;ILcom/android/server/FeaturePriority;)V

    .line 301
    return-void
.end method

.method public blacklist onAddUnAvailableFeatureInRead(Ljava/lang/String;Ljava/io/File;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;

    .line 307
    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/SystemConfigExtImpl;->getFeaturePriorityFromPath(Ljava/lang/String;)Lcom/android/server/FeaturePriority;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/SystemConfigExtImpl;->addCustomUnAvailableFeature(Ljava/lang/String;Lcom/android/server/FeaturePriority;)V

    .line 309
    return-void
.end method

.method public blacklist readConfigInConstructor()V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/android/server/SystemConfigExtImpl;->readOplusCustomFeatures()V

    .line 89
    return-void
.end method

.method public blacklist skipTagExceptionAndReturn(Ljava/lang/String;Ljava/io/File;)Z
    .locals 2
    .param p1, "tagName"    # Ljava/lang/String;
    .param p2, "permFile"    # Ljava/io/File;

    .line 314
    const-string v0, "oplus-config"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "packages"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 320
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 315
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/android/server/SystemConfigExtImpl;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "skip oplus tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemConfig"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_2
    const/4 v0, 0x1

    return v0
.end method
