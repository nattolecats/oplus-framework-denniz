.class public Landroid/content/pm/OplusPackageAbiManager;
.super Ljava/lang/Object;
.source "OplusPackageAbiManager.java"


# static fields
.field private static final blacklist ABI_CHECK_RESULT_32:I = 0x0

.field private static final blacklist ABI_CHECK_RESULT_64:I = 0x1

.field private static final blacklist ABI_CHECK_RESULT_MULTI:I = 0x2

.field private static final blacklist ABI_CHECK_RESULT_UNKNOWN:I = -0x1

.field private static final blacklist INVALID_ABI_CHECK_RESULT:I = -0x80000000

.field private static final blacklist LIBS_DIR:Ljava/lang/String; = "lib"

.field private static final blacklist SUPPORTED_ABI_LIST_32:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist SUPPORTED_ABI_LIST_64:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "OplusPackageAbiManager"

.field private static volatile blacklist sInstance:Landroid/content/pm/OplusPackageAbiManager;


# instance fields
.field private blacklist mPm:Landroid/content/pm/OplusPackageManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 48
    sget-object v0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/content/pm/OplusPackageAbiManager;->SUPPORTED_ABI_LIST_64:Ljava/util/List;

    .line 49
    sget-object v0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/content/pm/OplusPackageAbiManager;->SUPPORTED_ABI_LIST_32:Ljava/util/List;

    .line 51
    const/4 v0, 0x0

    sput-object v0, Landroid/content/pm/OplusPackageAbiManager;->sInstance:Landroid/content/pm/OplusPackageAbiManager;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Landroid/content/pm/OplusPackageManager;

    invoke-direct {v0}, Landroid/content/pm/OplusPackageManager;-><init>()V

    iput-object v0, p0, Landroid/content/pm/OplusPackageAbiManager;->mPm:Landroid/content/pm/OplusPackageManager;

    .line 56
    return-void
.end method

.method public static whitelist getInstance()Landroid/content/pm/OplusPackageAbiManager;
    .locals 2

    .line 66
    sget-object v0, Landroid/content/pm/OplusPackageAbiManager;->sInstance:Landroid/content/pm/OplusPackageAbiManager;

    if-nez v0, :cond_1

    .line 67
    const-class v0, Landroid/content/pm/OplusPackageAbiManager;

    monitor-enter v0

    .line 68
    :try_start_0
    sget-object v1, Landroid/content/pm/OplusPackageAbiManager;->sInstance:Landroid/content/pm/OplusPackageAbiManager;

    if-nez v1, :cond_0

    .line 69
    new-instance v1, Landroid/content/pm/OplusPackageAbiManager;

    invoke-direct {v1}, Landroid/content/pm/OplusPackageAbiManager;-><init>()V

    sput-object v1, Landroid/content/pm/OplusPackageAbiManager;->sInstance:Landroid/content/pm/OplusPackageAbiManager;

    .line 71
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 73
    :cond_1
    :goto_0
    sget-object v0, Landroid/content/pm/OplusPackageAbiManager;->sInstance:Landroid/content/pm/OplusPackageAbiManager;

    return-object v0
.end method


# virtual methods
.method public whitelist getAbiCheckResult(Ljava/io/File;)I
    .locals 13
    .param p1, "apkFile"    # Ljava/io/File;

    .line 92
    const-string v0, "lib"

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, -0x1

    const-string v3, "OplusPackageAbiManager"

    if-nez v1, :cond_0

    .line 93
    const-string v0, "Apk file doesn\'t exist"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return v2

    .line 97
    :cond_0
    const/4 v1, 0x0

    .line 98
    .local v1, "abi32":Z
    const/4 v4, 0x0

    .line 99
    .local v4, "abi64":Z
    const/4 v5, 0x0

    .line 101
    .local v5, "zipFile":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v6, Ljava/util/zip/ZipFile;

    invoke-direct {v6, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    move-object v5, v6

    .line 102
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v6

    .line 103
    .local v6, "zipEntries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :goto_0
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 104
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/zip/ZipEntry;

    .line 105
    .local v7, "zipEntry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    .line 107
    .local v8, "zipEntryName":Ljava/lang/String;
    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 109
    sget-object v9, Landroid/content/pm/OplusPackageAbiManager;->SUPPORTED_ABI_LIST_64:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 110
    .local v10, "abi64Item":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 112
    const/4 v4, 0x1

    .line 114
    .end local v10    # "abi64Item":Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 117
    :cond_2
    sget-object v9, Landroid/content/pm/OplusPackageAbiManager;->SUPPORTED_ABI_LIST_32:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 118
    .local v10, "abi32Item":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v11, :cond_3

    .line 119
    const/4 v1, 0x1

    .line 121
    .end local v10    # "abi32Item":Ljava/lang/String;
    :cond_3
    goto :goto_2

    .line 123
    .end local v7    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v8    # "zipEntryName":Ljava/lang/String;
    :cond_4
    goto :goto_0

    .line 125
    :cond_5
    if-nez v1, :cond_6

    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    if-nez v4, :cond_7

    const/4 v0, 0x0

    goto :goto_3

    :cond_7
    const/4 v0, 0x2

    .line 129
    :goto_3
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 125
    return v0

    .line 129
    .end local v6    # "zipEntries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v6, "Got exception while decompress apk file"

    invoke-static {v3, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 130
    nop

    .line 132
    return v2

    .line 129
    :goto_4
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 130
    throw v0
.end method

.method public whitelist getAbiCheckResult(Ljava/lang/String;)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 153
    iget-object v0, p0, Landroid/content/pm/OplusPackageAbiManager;->mPm:Landroid/content/pm/OplusPackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/OplusPackageManager;->getAbiCheckResult(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist queryIncompatibleApplist()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Landroid/content/pm/OplusPackageAbiManager;->mPm:Landroid/content/pm/OplusPackageManager;

    invoke-virtual {v0}, Landroid/content/pm/OplusPackageManager;->queryIncompatibleApplist()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
