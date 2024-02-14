.class public Landroid/content/pm/PackagePartitionsExtImpl;
.super Ljava/lang/Object;
.source "PackagePartitionsExtImpl.java"

# interfaces
.implements Landroid/content/pm/IPackagePartitionsExt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackagePartitionsExtImpl$LazyHolder;
    }
.end annotation


# static fields
.field private static final blacklist ACTION_COTA_MOUNTED:Ljava/lang/String; = "cotaMounted"

.field private static final blacklist ACTION_SIM_SWITCH_CURRENT:Ljava/lang/String; = "simSwitchCurrent"

.field private static final blacklist ACTION_SIM_SWITCH_FIRST:Ljava/lang/String; = "simSwitchFirst"

.field private static final blacklist ACTION_SIM_SWITCH_SSV:Ljava/lang/String; = "operatorSwitch"

.field private static final blacklist CUSTOM_IMAGES_NOTOVERLAID:I = 0x0

.field private static final blacklist CUSTOM_IMAGES_OVERLAID:I = 0x1

.field private static final blacklist CUSTOM_IMAGES_UNINITIATED:I = 0x2

.field private static final blacklist CUSTOM_PARTITIONS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackagePartitions$SystemPartition;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DIRS_NON_OVERLAIED_APPS_IN_CUSTOM_PARTITIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DIRS_SYSTEM_APK_WHEN_SIM_SWITCH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist MAP_FOR_CUSTOM_IMAGES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist NON_OVERLAIED_APPS_FOLDER_NAME:Ljava/lang/String; = "/non_overlay"

.field private static final blacklist PARTITION_NAME_MY_BIGBALL:Ljava/lang/String; = "my_bigball"

.field private static final blacklist PARTITION_NAME_MY_CARRIER:Ljava/lang/String; = "my_carrier"

.field private static final blacklist PARTITION_NAME_MY_COMPANY:Ljava/lang/String; = "my_company"

.field private static final blacklist PARTITION_NAME_MY_ENGINEERING:Ljava/lang/String; = "my_engineering"

.field private static final blacklist PARTITION_NAME_MY_HEYTAP:Ljava/lang/String; = "my_heytap"

.field private static final blacklist PARTITION_NAME_MY_PRELOAD:Ljava/lang/String; = "my_preload"

.field private static final blacklist PARTITION_NAME_MY_PRODUCT:Ljava/lang/String; = "my_product"

.field private static final blacklist PARTITION_NAME_MY_REGION:Ljava/lang/String; = "my_region"

.field private static final blacklist PARTITION_NAME_MY_STOCK:Ljava/lang/String; = "my_stock"

.field private static blacklist sNotOverlaidPartitionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackagePartitions$SystemPartition;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sProductOverlaid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 18

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x9

    new-array v2, v1, [Landroid/content/pm/PackagePartitions$SystemPartition;

    .line 59
    invoke-static {}, Landroid/content/pm/PackagePartitions;->getWrapper()Landroid/content/pm/IPackagePartitionsWrapper;

    move-result-object v3

    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyCompanyDirectory()Ljava/io/File;

    move-result-object v4

    const/4 v5, 0x4

    const-string v6, "my_company"

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-interface/range {v3 .. v8}, Landroid/content/pm/IPackagePartitionsWrapper;->newSystemPartitionInstance(Ljava/io/File;ILjava/lang/String;ZZ)Landroid/content/pm/PackagePartitions$SystemPartition;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 61
    invoke-static {}, Landroid/content/pm/PackagePartitions;->getWrapper()Landroid/content/pm/IPackagePartitionsWrapper;

    move-result-object v5

    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyCarrierDirectory()Ljava/io/File;

    move-result-object v6

    const/4 v7, 0x4

    const-string v8, "my_carrier"

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-interface/range {v5 .. v10}, Landroid/content/pm/IPackagePartitionsWrapper;->newSystemPartitionInstance(Ljava/io/File;ILjava/lang/String;ZZ)Landroid/content/pm/PackagePartitions$SystemPartition;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 63
    invoke-static {}, Landroid/content/pm/PackagePartitions;->getWrapper()Landroid/content/pm/IPackagePartitionsWrapper;

    move-result-object v6

    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyRegionDirectory()Ljava/io/File;

    move-result-object v7

    const/4 v8, 0x4

    const-string v9, "my_region"

    const/4 v11, 0x1

    invoke-interface/range {v6 .. v11}, Landroid/content/pm/IPackagePartitionsWrapper;->newSystemPartitionInstance(Ljava/io/File;ILjava/lang/String;ZZ)Landroid/content/pm/PackagePartitions$SystemPartition;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    .line 65
    invoke-static {}, Landroid/content/pm/PackagePartitions;->getWrapper()Landroid/content/pm/IPackagePartitionsWrapper;

    move-result-object v7

    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyPreloadDirectory()Ljava/io/File;

    move-result-object v8

    const/4 v9, 0x4

    const-string v10, "my_preload"

    const/4 v12, 0x1

    invoke-interface/range {v7 .. v12}, Landroid/content/pm/IPackagePartitionsWrapper;->newSystemPartitionInstance(Ljava/io/File;ILjava/lang/String;ZZ)Landroid/content/pm/PackagePartitions$SystemPartition;

    move-result-object v3

    const/4 v7, 0x3

    aput-object v3, v2, v7

    .line 67
    invoke-static {}, Landroid/content/pm/PackagePartitions;->getWrapper()Landroid/content/pm/IPackagePartitionsWrapper;

    move-result-object v8

    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyBigballDirectory()Ljava/io/File;

    move-result-object v9

    const/4 v10, 0x4

    const-string v11, "my_bigball"

    const/4 v13, 0x1

    invoke-interface/range {v8 .. v13}, Landroid/content/pm/IPackagePartitionsWrapper;->newSystemPartitionInstance(Ljava/io/File;ILjava/lang/String;ZZ)Landroid/content/pm/PackagePartitions$SystemPartition;

    move-result-object v3

    const/4 v8, 0x4

    aput-object v3, v2, v8

    .line 69
    invoke-static {}, Landroid/content/pm/PackagePartitions;->getWrapper()Landroid/content/pm/IPackagePartitionsWrapper;

    move-result-object v9

    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyProductDirectory()Ljava/io/File;

    move-result-object v10

    const/4 v11, 0x4

    const-string v12, "my_product"

    const/4 v14, 0x1

    invoke-interface/range {v9 .. v14}, Landroid/content/pm/IPackagePartitionsWrapper;->newSystemPartitionInstance(Ljava/io/File;ILjava/lang/String;ZZ)Landroid/content/pm/PackagePartitions$SystemPartition;

    move-result-object v3

    const/4 v9, 0x5

    aput-object v3, v2, v9

    .line 71
    invoke-static {}, Landroid/content/pm/PackagePartitions;->getWrapper()Landroid/content/pm/IPackagePartitionsWrapper;

    move-result-object v10

    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyHeytapDirectory()Ljava/io/File;

    move-result-object v11

    const/4 v12, 0x4

    const-string v13, "my_heytap"

    const/4 v15, 0x1

    invoke-interface/range {v10 .. v15}, Landroid/content/pm/IPackagePartitionsWrapper;->newSystemPartitionInstance(Ljava/io/File;ILjava/lang/String;ZZ)Landroid/content/pm/PackagePartitions$SystemPartition;

    move-result-object v3

    const/4 v10, 0x6

    aput-object v3, v2, v10

    .line 73
    invoke-static {}, Landroid/content/pm/PackagePartitions;->getWrapper()Landroid/content/pm/IPackagePartitionsWrapper;

    move-result-object v11

    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyStockDirectory()Ljava/io/File;

    move-result-object v12

    const/4 v13, 0x4

    const-string v14, "my_stock"

    const/16 v16, 0x1

    invoke-interface/range {v11 .. v16}, Landroid/content/pm/IPackagePartitionsWrapper;->newSystemPartitionInstance(Ljava/io/File;ILjava/lang/String;ZZ)Landroid/content/pm/PackagePartitions$SystemPartition;

    move-result-object v3

    const/4 v11, 0x7

    aput-object v3, v2, v11

    .line 75
    invoke-static {}, Landroid/content/pm/PackagePartitions;->getWrapper()Landroid/content/pm/IPackagePartitionsWrapper;

    move-result-object v12

    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyEngineeringDirectory()Ljava/io/File;

    move-result-object v13

    const/4 v14, 0x4

    const-string v15, "my_engineering"

    const/16 v17, 0x1

    invoke-interface/range {v12 .. v17}, Landroid/content/pm/IPackagePartitionsWrapper;->newSystemPartitionInstance(Ljava/io/File;ILjava/lang/String;ZZ)Landroid/content/pm/PackagePartitions$SystemPartition;

    move-result-object v3

    const/16 v12, 0x8

    aput-object v3, v2, v12

    .line 58
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/content/pm/PackagePartitionsExtImpl;->CUSTOM_PARTITIONS:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Landroid/content/pm/PackagePartitionsExtImpl;->MAP_FOR_CUSTOM_IMAGES:Ljava/util/HashMap;

    .line 80
    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyCompanyDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "my_company"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyCarrierDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "my_carrier"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyBigballDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "my_bigball"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyRegionDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "my_region"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyPreloadDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "my_preload"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyProductDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "my_product"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyHeytapDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "my_heytap"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyStockDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "my_stock"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyEngineeringDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "my_engineering"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    new-array v2, v1, [Ljava/lang/String;

    .line 93
    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyCompanyDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 94
    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyCarrierDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 95
    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyBigballDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 96
    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyRegionDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 97
    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyPreloadDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    .line 98
    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyProductDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    .line 99
    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyHeytapDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v10

    .line 100
    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyStockDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v11

    .line 101
    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyEngineeringDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v12

    .line 92
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/content/pm/PackagePartitionsExtImpl;->DIRS_SYSTEM_APK_WHEN_SIM_SWITCH:Ljava/util/List;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyCompanyDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/non_overlay"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyCarrierDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyBigballDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyRegionDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyPreloadDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyProductDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyHeytapDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyStockDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v11

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyEngineeringDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v12

    .line 107
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/content/pm/PackagePartitionsExtImpl;->DIRS_NON_OVERLAIED_APPS_IN_CUSTOM_PARTITIONS:Ljava/util/List;

    .line 121
    sput v6, Landroid/content/pm/PackagePartitionsExtImpl;->sProductOverlaid:I

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/content/pm/PackagePartitionsExtImpl;->sNotOverlaidPartitionList:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/pm/PackagePartitionsExtImpl-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/pm/PackagePartitionsExtImpl;-><init>()V

    return-void
.end method

.method public static blacklist getExtensionSimSwitchDirs(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "carrierName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 289
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 290
    .local v0, "outApkPath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "cotaMounted"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 291
    const-string v1, "sys.cotaimg.verify"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/OplusSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 292
    .local v1, "cotaMountStatus":Ljava/lang/String;
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 293
    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyCarrierDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    .end local v1    # "cotaMountStatus":Ljava/lang/String;
    :cond_0
    goto/16 :goto_3

    :cond_1
    const-string v1, "simSwitchFirst"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "PackagePartitionsExtImpl"

    const-string v3, "/apps_extension/"

    if-eqz v1, :cond_4

    .line 296
    sget-object v1, Landroid/content/pm/PackagePartitionsExtImpl;->DIRS_SYSTEM_APK_WHEN_SIM_SWITCH:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 297
    .local v4, "apkDir":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "SimSwitchFirstTime"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 298
    .local v5, "simSwitchDir":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 299
    .local v6, "folder":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Ljava/io/File;->canRead()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 300
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " getExtensionSimSwitchDirs first dir "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    .end local v4    # "apkDir":Ljava/lang/String;
    .end local v5    # "simSwitchDir":Ljava/lang/String;
    .end local v6    # "folder":Ljava/io/File;
    :cond_2
    goto :goto_0

    :cond_3
    goto/16 :goto_3

    .line 304
    :cond_4
    const-string v1, "simSwitchCurrent"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 305
    sget-object v1, Landroid/content/pm/PackagePartitionsExtImpl;->DIRS_SYSTEM_APK_WHEN_SIM_SWITCH:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 306
    .restart local v4    # "apkDir":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "SimSwitchCurrentTime"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 307
    .restart local v5    # "simSwitchDir":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 308
    .restart local v6    # "folder":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v6}, Ljava/io/File;->canRead()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 309
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " getExtensionSimSwitchDirs current dir "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    .end local v4    # "apkDir":Ljava/lang/String;
    .end local v5    # "simSwitchDir":Ljava/lang/String;
    .end local v6    # "folder":Ljava/io/File;
    :cond_5
    goto :goto_1

    :cond_6
    goto :goto_3

    .line 313
    :cond_7
    const-string v1, "operatorSwitch"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 314
    sget-object v1, Landroid/content/pm/PackagePartitionsExtImpl;->DIRS_SYSTEM_APK_WHEN_SIM_SWITCH:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 315
    .restart local v4    # "apkDir":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 316
    .restart local v5    # "simSwitchDir":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 317
    .restart local v6    # "folder":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v6}, Ljava/io/File;->canRead()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 318
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " getExtensionSimSwitchDirs ssv dir "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    .end local v4    # "apkDir":Ljava/lang/String;
    .end local v5    # "simSwitchDir":Ljava/lang/String;
    .end local v6    # "folder":Ljava/io/File;
    :cond_8
    goto :goto_2

    .line 323
    :cond_9
    :goto_3
    return-object v0
.end method

.method private static blacklist getExtensionSimSwitchPartiton()Ljava/util/ArrayList;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackagePartitions$SystemPartition;",
            ">;"
        }
    .end annotation

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .local v0, "simSwitchPartiton":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackagePartitions$SystemPartition;>;"
    const/4 v1, 0x0

    .line 228
    .local v1, "systemPartition":Landroid/content/pm/PackagePartitions$SystemPartition;
    const-string v2, "sys.cotaimg.verify"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/OplusSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 229
    .local v2, "cotaMountStatus":Ljava/lang/String;
    const-string v3, "ro.sys.sim.switch.apk.scan.system"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/OplusSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 230
    .local v3, "apkScanSystem":Ljava/lang/String;
    const/4 v4, 0x4

    .line 231
    .local v4, "partitionScan":I
    const-string v5, "true"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "PackagePartitionsExtImpl"

    if-eqz v5, :cond_0

    .line 232
    const/4 v4, 0x0

    .line 233
    const-string v5, " apkScanSystem is true "

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_0
    const-string v5, "1"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 237
    new-instance v8, Ljava/io/File;

    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyCarrierDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 238
    .local v8, "folder":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v8}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 239
    invoke-static {}, Landroid/content/pm/PackagePartitions;->getWrapper()Landroid/content/pm/IPackagePartitionsWrapper;

    move-result-object v7

    const/4 v9, 0x4

    const/4 v11, 0x1

    const/4 v12, 0x1

    const-string v10, "my_carrier"

    invoke-interface/range {v7 .. v12}, Landroid/content/pm/IPackagePartitionsWrapper;->newSystemPartitionInstance(Ljava/io/File;ILjava/lang/String;ZZ)Landroid/content/pm/PackagePartitions$SystemPartition;

    move-result-object v1

    .line 240
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    .end local v8    # "folder":Ljava/io/File;
    :cond_1
    const-string v5, "sys.sim.switch.first.public"

    const-string v7, ""

    invoke-static {v5, v7}, Landroid/os/OplusSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 245
    .local v5, "simSwitchFirstPublicName":Ljava/lang/String;
    const-string v8, "sys.sim.switch.first"

    invoke-static {v8, v7}, Landroid/os/OplusSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 246
    .local v13, "simSwitchFirstName":Ljava/lang/String;
    const-string v8, "sys.sim.switch.current"

    invoke-static {v8, v7}, Landroid/os/OplusSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 247
    .local v14, "simSwitchCurrentName":Ljava/lang/String;
    const-string v7, "persist.sys.oplus.operator.opta"

    const-string v15, "default"

    invoke-static {v7, v15}, Landroid/os/OplusSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 248
    .local v12, "simSwitchOpta":Ljava/lang/String;
    const-string v7, "persist.sys.oplus.operator.optb"

    invoke-static {v7, v15}, Landroid/os/OplusSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 249
    .local v11, "simSwitchOptb":Ljava/lang/String;
    sget-object v7, Landroid/content/pm/PackagePartitionsExtImpl;->DIRS_SYSTEM_APK_WHEN_SIM_SWITCH:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Ljava/lang/String;

    .line 250
    .local v10, "apkDir":Ljava/lang/String;
    invoke-static {v10}, Landroid/content/pm/PackagePartitionsExtImpl;->getPartitionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 251
    .local v17, "partitionName":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const-string v9, "SimSwitchFirstTime"

    const-string v8, "/apps_extension/"

    if-nez v7, :cond_3

    .line 252
    new-instance v7, Ljava/io/File;

    move-object/from16 v18, v1

    .end local v1    # "systemPartition":Landroid/content/pm/PackagePartitions$SystemPartition;
    .local v18, "systemPartition":Landroid/content/pm/PackagePartitions$SystemPartition;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v19, v2

    .end local v2    # "cotaMountStatus":Ljava/lang/String;
    .local v19, "cotaMountStatus":Ljava/lang/String;
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v8

    move-object v8, v7

    .line 253
    .restart local v8    # "folder":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v8}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 254
    invoke-static {}, Landroid/content/pm/PackagePartitions;->getWrapper()Landroid/content/pm/IPackagePartitionsWrapper;

    move-result-object v7

    const/4 v2, 0x1

    const/16 v20, 0x1

    move-object/from16 v21, v9

    move v9, v4

    move-object/from16 v22, v10

    .end local v10    # "apkDir":Ljava/lang/String;
    .local v22, "apkDir":Ljava/lang/String;
    move-object/from16 v10, v17

    move-object/from16 v23, v3

    move-object v3, v11

    .end local v11    # "simSwitchOptb":Ljava/lang/String;
    .local v3, "simSwitchOptb":Ljava/lang/String;
    .local v23, "apkScanSystem":Ljava/lang/String;
    move v11, v2

    move-object v2, v12

    .end local v12    # "simSwitchOpta":Ljava/lang/String;
    .local v2, "simSwitchOpta":Ljava/lang/String;
    move/from16 v12, v20

    invoke-interface/range {v7 .. v12}, Landroid/content/pm/IPackagePartitionsWrapper;->newSystemPartitionInstance(Ljava/io/File;ILjava/lang/String;ZZ)Landroid/content/pm/PackagePartitions$SystemPartition;

    move-result-object v7

    .line 255
    .end local v18    # "systemPartition":Landroid/content/pm/PackagePartitions$SystemPartition;
    .local v7, "systemPartition":Landroid/content/pm/PackagePartitions$SystemPartition;
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " SimSwitch first public dir "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v18, v7

    goto :goto_1

    .line 253
    .end local v2    # "simSwitchOpta":Ljava/lang/String;
    .end local v7    # "systemPartition":Landroid/content/pm/PackagePartitions$SystemPartition;
    .end local v22    # "apkDir":Ljava/lang/String;
    .end local v23    # "apkScanSystem":Ljava/lang/String;
    .local v3, "apkScanSystem":Ljava/lang/String;
    .restart local v10    # "apkDir":Ljava/lang/String;
    .restart local v11    # "simSwitchOptb":Ljava/lang/String;
    .restart local v12    # "simSwitchOpta":Ljava/lang/String;
    .restart local v18    # "systemPartition":Landroid/content/pm/PackagePartitions$SystemPartition;
    :cond_2
    move-object/from16 v23, v3

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    move-object v3, v11

    move-object v2, v12

    .end local v10    # "apkDir":Ljava/lang/String;
    .end local v11    # "simSwitchOptb":Ljava/lang/String;
    .end local v12    # "simSwitchOpta":Ljava/lang/String;
    .restart local v2    # "simSwitchOpta":Ljava/lang/String;
    .local v3, "simSwitchOptb":Ljava/lang/String;
    .restart local v22    # "apkDir":Ljava/lang/String;
    .restart local v23    # "apkScanSystem":Ljava/lang/String;
    goto :goto_1

    .line 251
    .end local v8    # "folder":Ljava/io/File;
    .end local v18    # "systemPartition":Landroid/content/pm/PackagePartitions$SystemPartition;
    .end local v19    # "cotaMountStatus":Ljava/lang/String;
    .end local v22    # "apkDir":Ljava/lang/String;
    .end local v23    # "apkScanSystem":Ljava/lang/String;
    .restart local v1    # "systemPartition":Landroid/content/pm/PackagePartitions$SystemPartition;
    .local v2, "cotaMountStatus":Ljava/lang/String;
    .local v3, "apkScanSystem":Ljava/lang/String;
    .restart local v10    # "apkDir":Ljava/lang/String;
    .restart local v11    # "simSwitchOptb":Ljava/lang/String;
    .restart local v12    # "simSwitchOpta":Ljava/lang/String;
    :cond_3
    move-object/from16 v18, v1

    move-object/from16 v19, v2

    move-object/from16 v23, v3

    move-object v1, v8

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    move-object v3, v11

    move-object v2, v12

    .line 259
    .end local v1    # "systemPartition":Landroid/content/pm/PackagePartitions$SystemPartition;
    .end local v10    # "apkDir":Ljava/lang/String;
    .end local v11    # "simSwitchOptb":Ljava/lang/String;
    .end local v12    # "simSwitchOpta":Ljava/lang/String;
    .local v2, "simSwitchOpta":Ljava/lang/String;
    .local v3, "simSwitchOptb":Ljava/lang/String;
    .restart local v18    # "systemPartition":Landroid/content/pm/PackagePartitions$SystemPartition;
    .restart local v19    # "cotaMountStatus":Ljava/lang/String;
    .restart local v22    # "apkDir":Ljava/lang/String;
    .restart local v23    # "apkScanSystem":Ljava/lang/String;
    :goto_1
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 260
    new-instance v8, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v12, v22

    .end local v22    # "apkDir":Ljava/lang/String;
    .local v12, "apkDir":Ljava/lang/String;
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v9, v21

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 261
    .restart local v8    # "folder":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v8}, Ljava/io/File;->canRead()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 262
    invoke-static {}, Landroid/content/pm/PackagePartitions;->getWrapper()Landroid/content/pm/IPackagePartitionsWrapper;

    move-result-object v7

    const/4 v11, 0x1

    const/16 v20, 0x1

    move v9, v4

    move-object/from16 v10, v17

    move-object/from16 v21, v5

    move-object v5, v12

    .end local v12    # "apkDir":Ljava/lang/String;
    .local v5, "apkDir":Ljava/lang/String;
    .local v21, "simSwitchFirstPublicName":Ljava/lang/String;
    move/from16 v12, v20

    invoke-interface/range {v7 .. v12}, Landroid/content/pm/IPackagePartitionsWrapper;->newSystemPartitionInstance(Ljava/io/File;ILjava/lang/String;ZZ)Landroid/content/pm/PackagePartitions$SystemPartition;

    move-result-object v7

    .line 263
    .end local v18    # "systemPartition":Landroid/content/pm/PackagePartitions$SystemPartition;
    .restart local v7    # "systemPartition":Landroid/content/pm/PackagePartitions$SystemPartition;
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " SimSwitch first dir "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v18, v7

    goto :goto_2

    .line 261
    .end local v7    # "systemPartition":Landroid/content/pm/PackagePartitions$SystemPartition;
    .end local v21    # "simSwitchFirstPublicName":Ljava/lang/String;
    .local v5, "simSwitchFirstPublicName":Ljava/lang/String;
    .restart local v12    # "apkDir":Ljava/lang/String;
    .restart local v18    # "systemPartition":Landroid/content/pm/PackagePartitions$SystemPartition;
    :cond_4
    move-object/from16 v21, v5

    move-object v5, v12

    .end local v12    # "apkDir":Ljava/lang/String;
    .local v5, "apkDir":Ljava/lang/String;
    .restart local v21    # "simSwitchFirstPublicName":Ljava/lang/String;
    goto :goto_2

    .line 259
    .end local v8    # "folder":Ljava/io/File;
    .end local v21    # "simSwitchFirstPublicName":Ljava/lang/String;
    .local v5, "simSwitchFirstPublicName":Ljava/lang/String;
    .restart local v22    # "apkDir":Ljava/lang/String;
    :cond_5
    move-object/from16 v21, v5

    move-object/from16 v5, v22

    .line 267
    .end local v22    # "apkDir":Ljava/lang/String;
    .local v5, "apkDir":Ljava/lang/String;
    .restart local v21    # "simSwitchFirstPublicName":Ljava/lang/String;
    :goto_2
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 268
    new-instance v8, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "SimSwitchCurrentTime"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 269
    .restart local v8    # "folder":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v8}, Ljava/io/File;->canRead()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 270
    invoke-static {}, Landroid/content/pm/PackagePartitions;->getWrapper()Landroid/content/pm/IPackagePartitionsWrapper;

    move-result-object v7

    const/4 v11, 0x1

    const/4 v12, 0x1

    move v9, v4

    move-object/from16 v10, v17

    invoke-interface/range {v7 .. v12}, Landroid/content/pm/IPackagePartitionsWrapper;->newSystemPartitionInstance(Ljava/io/File;ILjava/lang/String;ZZ)Landroid/content/pm/PackagePartitions$SystemPartition;

    move-result-object v7

    .line 271
    .end local v18    # "systemPartition":Landroid/content/pm/PackagePartitions$SystemPartition;
    .restart local v7    # "systemPartition":Landroid/content/pm/PackagePartitions$SystemPartition;
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " SimSwitch current dir "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v18, v7

    .line 275
    .end local v7    # "systemPartition":Landroid/content/pm/PackagePartitions$SystemPartition;
    .end local v8    # "folder":Ljava/io/File;
    .restart local v18    # "systemPartition":Landroid/content/pm/PackagePartitions$SystemPartition;
    :cond_6
    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 276
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 277
    .local v12, "simSwitchCarrier":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 278
    .restart local v8    # "folder":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v8}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 279
    invoke-static {}, Landroid/content/pm/PackagePartitions;->getWrapper()Landroid/content/pm/IPackagePartitionsWrapper;

    move-result-object v7

    const/4 v11, 0x1

    const/4 v1, 0x1

    move v9, v4

    move-object/from16 v10, v17

    move-object/from16 v20, v12

    .end local v12    # "simSwitchCarrier":Ljava/lang/String;
    .local v20, "simSwitchCarrier":Ljava/lang/String;
    move v12, v1

    invoke-interface/range {v7 .. v12}, Landroid/content/pm/IPackagePartitionsWrapper;->newSystemPartitionInstance(Ljava/io/File;ILjava/lang/String;ZZ)Landroid/content/pm/PackagePartitions$SystemPartition;

    move-result-object v1

    .line 280
    .end local v18    # "systemPartition":Landroid/content/pm/PackagePartitions$SystemPartition;
    .restart local v1    # "systemPartition":Landroid/content/pm/PackagePartitions$SystemPartition;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " old ssv dir "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 278
    .end local v1    # "systemPartition":Landroid/content/pm/PackagePartitions$SystemPartition;
    .end local v20    # "simSwitchCarrier":Ljava/lang/String;
    .restart local v12    # "simSwitchCarrier":Ljava/lang/String;
    .restart local v18    # "systemPartition":Landroid/content/pm/PackagePartitions$SystemPartition;
    :cond_7
    move-object/from16 v20, v12

    .line 284
    .end local v5    # "apkDir":Ljava/lang/String;
    .end local v8    # "folder":Ljava/io/File;
    .end local v12    # "simSwitchCarrier":Ljava/lang/String;
    .end local v17    # "partitionName":Ljava/lang/String;
    :cond_8
    move-object/from16 v1, v18

    .end local v18    # "systemPartition":Landroid/content/pm/PackagePartitions$SystemPartition;
    .restart local v1    # "systemPartition":Landroid/content/pm/PackagePartitions$SystemPartition;
    :goto_3
    move-object v12, v2

    move-object v11, v3

    move-object/from16 v2, v19

    move-object/from16 v5, v21

    move-object/from16 v3, v23

    goto/16 :goto_0

    .line 285
    .end local v19    # "cotaMountStatus":Ljava/lang/String;
    .end local v21    # "simSwitchFirstPublicName":Ljava/lang/String;
    .end local v23    # "apkScanSystem":Ljava/lang/String;
    .local v2, "cotaMountStatus":Ljava/lang/String;
    .local v3, "apkScanSystem":Ljava/lang/String;
    .local v5, "simSwitchFirstPublicName":Ljava/lang/String;
    .restart local v11    # "simSwitchOptb":Ljava/lang/String;
    .local v12, "simSwitchOpta":Ljava/lang/String;
    :cond_9
    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Landroid/content/pm/PackagePartitionsExtImpl;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .line 135
    invoke-static {}, Landroid/content/pm/PackagePartitionsExtImpl$LazyHolder;->-$$Nest$sfgetINSTANCE()Landroid/content/pm/PackagePartitionsExtImpl;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getNonOverlaidAppsPartitons()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackagePartitions$SystemPartition;",
            ">;"
        }
    .end annotation

    .line 327
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 328
    .local v0, "nonOverlaidAppsPartitons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackagePartitions$SystemPartition;>;"
    const/4 v1, 0x0

    .line 330
    .local v1, "systemPartition":Landroid/content/pm/PackagePartitions$SystemPartition;
    sget-object v2, Landroid/content/pm/PackagePartitionsExtImpl;->DIRS_NON_OVERLAIED_APPS_IN_CUSTOM_PARTITIONS:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 331
    .local v3, "apkDir":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 332
    .local v5, "folder":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 334
    invoke-static {v3}, Landroid/content/pm/PackagePartitionsExtImpl;->getPartitionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 335
    .local v10, "partitionName":Ljava/lang/String;
    invoke-static {}, Landroid/content/pm/PackagePartitions;->getWrapper()Landroid/content/pm/IPackagePartitionsWrapper;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v7, v10

    invoke-interface/range {v4 .. v9}, Landroid/content/pm/IPackagePartitionsWrapper;->newSystemPartitionInstance(Ljava/io/File;ILjava/lang/String;ZZ)Landroid/content/pm/PackagePartitions$SystemPartition;

    move-result-object v1

    .line 336
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " non overlaied app dir "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", partitionName "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "PackagePartitionsExtImpl"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    .end local v3    # "apkDir":Ljava/lang/String;
    .end local v5    # "folder":Ljava/io/File;
    .end local v10    # "partitionName":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 340
    :cond_1
    return-object v0
.end method

.method private static blacklist getPartitionName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "apkDir"    # Ljava/lang/String;

    .line 344
    const-string v0, "default"

    .line 345
    .local v0, "partitionName":Ljava/lang/String;
    sget-object v1, Landroid/content/pm/PackagePartitionsExtImpl;->MAP_FOR_CUSTOM_IMAGES:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 346
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/io/File;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    .line 347
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 348
    goto :goto_1

    .line 350
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/io/File;>;"
    :cond_0
    goto :goto_0

    .line 351
    :cond_1
    :goto_1
    return-object v0
.end method

.method private static blacklist productOverlaid(Ljava/util/ArrayList;)I
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackagePartitions$SystemPartition;",
            ">;)I"
        }
    .end annotation

    .line 139
    .local p0, "notOverlaidPartitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackagePartitions$SystemPartition;>;"
    const-string v1, "PackagePartitionsExtImpl"

    const/4 v2, 0x0

    .line 140
    .local v2, "systemPartition":Landroid/content/pm/PackagePartitions$SystemPartition;
    const/4 v3, 0x0

    .line 141
    .local v3, "overlaidStatus":I
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/proc/mounts"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v4, v0

    .line 142
    .local v4, "br":Ljava/io/BufferedReader;
    :try_start_1
    const-string v0, ""

    .line 143
    .local v0, "line":Ljava/lang/String;
    const/4 v5, 0x3

    .line 144
    .local v5, "minLength":I
    const/4 v6, 0x0

    .line 145
    .local v6, "indexSource":I
    const/4 v7, 0x1

    .line 146
    .local v7, "indexMountPoint":I
    const/4 v8, 0x3

    .line 147
    .local v8, "indexMountFlag":I
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    move-object v0, v9

    if-eqz v9, :cond_4

    .line 148
    const-string v9, " "

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 149
    .local v9, "fields":[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v10, v9, v10

    .line 150
    .local v10, "source":Ljava/lang/String;
    const/4 v11, 0x1

    aget-object v11, v9, v11

    .line 151
    .local v11, "target":Ljava/lang/String;
    array-length v12, v9

    if-le v12, v5, :cond_3

    .line 152
    const/4 v12, 0x3

    aget-object v12, v9, v12

    .line 153
    .local v12, "optionParam":Ljava/lang/String;
    const-string v13, "overlay-overlay"

    invoke-virtual {v10, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    const-string v13, "/product/priv-app"

    invoke-virtual {v11, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-eqz v13, :cond_2

    .line 154
    const/4 v3, 0x1

    .line 156
    :try_start_2
    sget-object v13, Landroid/content/pm/PackagePartitionsExtImpl;->MAP_FOR_CUSTOM_IMAGES:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :goto_1
    :try_start_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 157
    .local v14, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/io/File;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 158
    .local v15, "img":Ljava/lang/String;
    invoke-virtual {v12, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_0

    .line 159
    move-object/from16 v22, v0

    .end local v0    # "line":Ljava/lang/String;
    .local v22, "line":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object/from16 v23, v2

    .end local v2    # "systemPartition":Landroid/content/pm/PackagePartitions$SystemPartition;
    .local v23, "systemPartition":Landroid/content/pm/PackagePartitions$SystemPartition;
    :try_start_4
    const-string v2, " is not overlaid and scan as before"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Ljava/io/File;

    .line 161
    .local v17, "partition":Ljava/io/File;
    invoke-static {}, Landroid/content/pm/PackagePartitions;->getWrapper()Landroid/content/pm/IPackagePartitionsWrapper;

    move-result-object v16

    const/16 v18, 0x4

    const/16 v20, 0x1

    const/16 v21, 0x1

    move-object/from16 v19, v15

    invoke-interface/range {v16 .. v21}, Landroid/content/pm/IPackagePartitionsWrapper;->newSystemPartitionInstance(Ljava/io/File;ILjava/lang/String;ZZ)Landroid/content/pm/PackagePartitions$SystemPartition;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v2, v0

    .line 163
    .end local v23    # "systemPartition":Landroid/content/pm/PackagePartitions$SystemPartition;
    .restart local v2    # "systemPartition":Landroid/content/pm/PackagePartitions$SystemPartition;
    move/from16 v16, v3

    move-object/from16 v3, p0

    .end local v3    # "overlaidStatus":I
    .local v16, "overlaidStatus":I
    :try_start_5
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 141
    .end local v5    # "minLength":I
    .end local v6    # "indexSource":I
    .end local v7    # "indexMountPoint":I
    .end local v8    # "indexMountFlag":I
    .end local v9    # "fields":[Ljava/lang/String;
    .end local v10    # "source":Ljava/lang/String;
    .end local v11    # "target":Ljava/lang/String;
    .end local v12    # "optionParam":Ljava/lang/String;
    .end local v14    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/io/File;>;"
    .end local v15    # "img":Ljava/lang/String;
    .end local v17    # "partition":Ljava/io/File;
    .end local v22    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object v5, v0

    goto/16 :goto_5

    .end local v2    # "systemPartition":Landroid/content/pm/PackagePartitions$SystemPartition;
    .end local v16    # "overlaidStatus":I
    .restart local v3    # "overlaidStatus":I
    .restart local v23    # "systemPartition":Landroid/content/pm/PackagePartitions$SystemPartition;
    :catchall_1
    move-exception v0

    move/from16 v16, v3

    move-object/from16 v3, p0

    move-object v5, v0

    move-object/from16 v2, v23

    .end local v3    # "overlaidStatus":I
    .restart local v16    # "overlaidStatus":I
    goto/16 :goto_5

    .line 158
    .end local v16    # "overlaidStatus":I
    .end local v23    # "systemPartition":Landroid/content/pm/PackagePartitions$SystemPartition;
    .restart local v0    # "line":Ljava/lang/String;
    .restart local v2    # "systemPartition":Landroid/content/pm/PackagePartitions$SystemPartition;
    .restart local v3    # "overlaidStatus":I
    .restart local v5    # "minLength":I
    .restart local v6    # "indexSource":I
    .restart local v7    # "indexMountPoint":I
    .restart local v8    # "indexMountFlag":I
    .restart local v9    # "fields":[Ljava/lang/String;
    .restart local v10    # "source":Ljava/lang/String;
    .restart local v11    # "target":Ljava/lang/String;
    .restart local v12    # "optionParam":Ljava/lang/String;
    .restart local v14    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/io/File;>;"
    .restart local v15    # "img":Ljava/lang/String;
    :cond_0
    move-object/from16 v22, v0

    move-object/from16 v23, v2

    move/from16 v16, v3

    move-object/from16 v3, p0

    .line 165
    .end local v0    # "line":Ljava/lang/String;
    .end local v3    # "overlaidStatus":I
    .end local v14    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/io/File;>;"
    .end local v15    # "img":Ljava/lang/String;
    .restart local v16    # "overlaidStatus":I
    .restart local v22    # "line":Ljava/lang/String;
    :goto_2
    move/from16 v3, v16

    move-object/from16 v0, v22

    goto :goto_1

    .line 166
    .end local v16    # "overlaidStatus":I
    .end local v22    # "line":Ljava/lang/String;
    .restart local v0    # "line":Ljava/lang/String;
    .restart local v3    # "overlaidStatus":I
    :cond_1
    move-object/from16 v22, v0

    move-object/from16 v23, v2

    move/from16 v16, v3

    move-object/from16 v3, p0

    .end local v0    # "line":Ljava/lang/String;
    .end local v2    # "systemPartition":Landroid/content/pm/PackagePartitions$SystemPartition;
    .end local v3    # "overlaidStatus":I
    .restart local v16    # "overlaidStatus":I
    .restart local v22    # "line":Ljava/lang/String;
    .restart local v23    # "systemPartition":Landroid/content/pm/PackagePartitions$SystemPartition;
    goto :goto_4

    .line 141
    .end local v5    # "minLength":I
    .end local v6    # "indexSource":I
    .end local v7    # "indexMountPoint":I
    .end local v8    # "indexMountFlag":I
    .end local v9    # "fields":[Ljava/lang/String;
    .end local v10    # "source":Ljava/lang/String;
    .end local v11    # "target":Ljava/lang/String;
    .end local v12    # "optionParam":Ljava/lang/String;
    .end local v16    # "overlaidStatus":I
    .end local v22    # "line":Ljava/lang/String;
    .end local v23    # "systemPartition":Landroid/content/pm/PackagePartitions$SystemPartition;
    .restart local v2    # "systemPartition":Landroid/content/pm/PackagePartitions$SystemPartition;
    .restart local v3    # "overlaidStatus":I
    :catchall_2
    move-exception v0

    move-object/from16 v23, v2

    move/from16 v16, v3

    move-object/from16 v3, p0

    move-object v5, v0

    .end local v2    # "systemPartition":Landroid/content/pm/PackagePartitions$SystemPartition;
    .end local v3    # "overlaidStatus":I
    .restart local v16    # "overlaidStatus":I
    .restart local v23    # "systemPartition":Landroid/content/pm/PackagePartitions$SystemPartition;
    goto :goto_5

    .end local v16    # "overlaidStatus":I
    .end local v23    # "systemPartition":Landroid/content/pm/PackagePartitions$SystemPartition;
    .restart local v2    # "systemPartition":Landroid/content/pm/PackagePartitions$SystemPartition;
    .restart local v3    # "overlaidStatus":I
    :catchall_3
    move-exception v0

    move/from16 v16, v3

    move-object/from16 v3, p0

    move-object v5, v0

    .end local v3    # "overlaidStatus":I
    .restart local v16    # "overlaidStatus":I
    goto :goto_5

    .line 153
    .end local v16    # "overlaidStatus":I
    .restart local v0    # "line":Ljava/lang/String;
    .restart local v3    # "overlaidStatus":I
    .restart local v5    # "minLength":I
    .restart local v6    # "indexSource":I
    .restart local v7    # "indexMountPoint":I
    .restart local v8    # "indexMountFlag":I
    .restart local v9    # "fields":[Ljava/lang/String;
    .restart local v10    # "source":Ljava/lang/String;
    .restart local v11    # "target":Ljava/lang/String;
    .restart local v12    # "optionParam":Ljava/lang/String;
    :cond_2
    move-object/from16 v22, v0

    move v13, v3

    move-object/from16 v3, p0

    .end local v0    # "line":Ljava/lang/String;
    .end local v3    # "overlaidStatus":I
    .local v13, "overlaidStatus":I
    .restart local v22    # "line":Ljava/lang/String;
    goto :goto_3

    .line 151
    .end local v12    # "optionParam":Ljava/lang/String;
    .end local v13    # "overlaidStatus":I
    .end local v22    # "line":Ljava/lang/String;
    .restart local v0    # "line":Ljava/lang/String;
    .restart local v3    # "overlaidStatus":I
    :cond_3
    move-object/from16 v22, v0

    move v13, v3

    move-object/from16 v3, p0

    .line 169
    .end local v0    # "line":Ljava/lang/String;
    .end local v3    # "overlaidStatus":I
    .end local v9    # "fields":[Ljava/lang/String;
    .end local v10    # "source":Ljava/lang/String;
    .end local v11    # "target":Ljava/lang/String;
    .restart local v13    # "overlaidStatus":I
    .restart local v22    # "line":Ljava/lang/String;
    :goto_3
    move v3, v13

    move-object/from16 v0, v22

    goto/16 :goto_0

    .line 147
    .end local v13    # "overlaidStatus":I
    .end local v22    # "line":Ljava/lang/String;
    .restart local v0    # "line":Ljava/lang/String;
    .restart local v3    # "overlaidStatus":I
    :cond_4
    move-object/from16 v22, v0

    move v13, v3

    move-object/from16 v3, p0

    .end local v0    # "line":Ljava/lang/String;
    .end local v3    # "overlaidStatus":I
    .restart local v13    # "overlaidStatus":I
    .restart local v22    # "line":Ljava/lang/String;
    move/from16 v16, v13

    .line 171
    .end local v5    # "minLength":I
    .end local v6    # "indexSource":I
    .end local v7    # "indexMountPoint":I
    .end local v8    # "indexMountFlag":I
    .end local v13    # "overlaidStatus":I
    .end local v22    # "line":Ljava/lang/String;
    .restart local v16    # "overlaidStatus":I
    :goto_4
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 173
    .end local v4    # "br":Ljava/io/BufferedReader;
    move/from16 v13, v16

    goto :goto_8

    .line 171
    :catch_0
    move-exception v0

    move/from16 v13, v16

    goto :goto_7

    .line 141
    .end local v16    # "overlaidStatus":I
    .restart local v3    # "overlaidStatus":I
    .restart local v4    # "br":Ljava/io/BufferedReader;
    :catchall_4
    move-exception v0

    move v13, v3

    move-object/from16 v3, p0

    move-object v5, v0

    move/from16 v16, v13

    .end local v3    # "overlaidStatus":I
    .restart local v16    # "overlaidStatus":I
    :goto_5
    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception v0

    move-object v6, v0

    :try_start_8
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "systemPartition":Landroid/content/pm/PackagePartitions$SystemPartition;
    .end local v16    # "overlaidStatus":I
    .end local p0    # "notOverlaidPartitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackagePartitions$SystemPartition;>;"
    :goto_6
    throw v5
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 171
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "systemPartition":Landroid/content/pm/PackagePartitions$SystemPartition;
    .restart local v3    # "overlaidStatus":I
    .restart local p0    # "notOverlaidPartitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackagePartitions$SystemPartition;>;"
    :catch_1
    move-exception v0

    move v13, v3

    move-object/from16 v3, p0

    .line 172
    .end local v3    # "overlaidStatus":I
    .local v0, "e":Ljava/lang/Exception;
    .restart local v13    # "overlaidStatus":I
    :goto_7
    const-string v4, "parse /proc/mounts fail!"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 174
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " overlaidStatus value is "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return v13
.end method


# virtual methods
.method public blacklist adjustGetOrderedPartitions(Ljava/util/function/Function;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "Landroid/content/pm/PackagePartitions$SystemPartition;",
            "TT;>;",
            "Ljava/util/ArrayList<",
            "TT;>;)V"
        }
    .end annotation

    .line 182
    .local p1, "producer":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/content/pm/PackagePartitions$SystemPartition;TT;>;"
    .local p2, "originList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    invoke-static {}, Landroid/content/pm/PackagePartitionsExtImpl;->getExtensionSimSwitchPartiton()Ljava/util/ArrayList;

    move-result-object v0

    .line 183
    .local v0, "simSwitchExtensionPartition":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackagePartitions$SystemPartition;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 184
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackagePartitions$SystemPartition;

    invoke-interface {p1, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 185
    .local v3, "v":Ljava/lang/Object;, "TT;"
    if-eqz v3, :cond_0

    .line 186
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    .end local v3    # "v":Ljava/lang/Object;, "TT;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 194
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    invoke-static {}, Landroid/content/pm/PackagePartitionsExtImpl;->getNonOverlaidAppsPartitons()Ljava/util/ArrayList;

    move-result-object v1

    .line 195
    .local v1, "nonOverlaidAppPartitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackagePartitions$SystemPartition;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "n":I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 196
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackagePartitions$SystemPartition;

    invoke-interface {p1, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 197
    .local v4, "v":Ljava/lang/Object;, "TT;"
    if-eqz v4, :cond_2

    .line 198
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    .end local v4    # "v":Ljava/lang/Object;, "TT;"
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 202
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_3
    sget v2, Landroid/content/pm/PackagePartitionsExtImpl;->sProductOverlaid:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 203
    sget-object v2, Landroid/content/pm/PackagePartitionsExtImpl;->sNotOverlaidPartitionList:Ljava/util/ArrayList;

    invoke-static {v2}, Landroid/content/pm/PackagePartitionsExtImpl;->productOverlaid(Ljava/util/ArrayList;)I

    move-result v2

    sput v2, Landroid/content/pm/PackagePartitionsExtImpl;->sProductOverlaid:I

    .line 206
    :cond_4
    sget v2, Landroid/content/pm/PackagePartitionsExtImpl;->sProductOverlaid:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 207
    const-string v2, "PackagePartitionsExtImpl"

    const-string v3, "custom partititions are overlaid;skip parse custom images"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const/4 v2, 0x0

    .restart local v2    # "i":I
    sget-object v3, Landroid/content/pm/PackagePartitionsExtImpl;->sNotOverlaidPartitionList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .restart local v3    # "n":I
    :goto_2
    if-ge v2, v3, :cond_6

    .line 209
    sget-object v4, Landroid/content/pm/PackagePartitionsExtImpl;->sNotOverlaidPartitionList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackagePartitions$SystemPartition;

    invoke-interface {p1, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 210
    .restart local v4    # "v":Ljava/lang/Object;, "TT;"
    if-eqz v4, :cond_5

    .line 211
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    .end local v4    # "v":Ljava/lang/Object;, "TT;"
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 214
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_6
    return-void

    .line 216
    :cond_7
    const/4 v2, 0x0

    .restart local v2    # "i":I
    sget-object v3, Landroid/content/pm/PackagePartitionsExtImpl;->CUSTOM_PARTITIONS:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .restart local v3    # "n":I
    :goto_3
    if-ge v2, v3, :cond_9

    .line 217
    sget-object v4, Landroid/content/pm/PackagePartitionsExtImpl;->CUSTOM_PARTITIONS:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackagePartitions$SystemPartition;

    invoke-interface {p1, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 218
    .restart local v4    # "v":Ljava/lang/Object;, "TT;"
    if-eqz v4, :cond_8

    .line 219
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    .end local v4    # "v":Ljava/lang/Object;, "TT;"
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 223
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_9
    return-void
.end method
