.class public Landroid/content/res/OplusThemeZipFile;
.super Landroid/content/res/OplusBaseFile;
.source "OplusThemeZipFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/OplusThemeZipFile$MultiZipFile;,
        Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;
    }
.end annotation


# static fields
.field private static final blacklist ASSETS_THEME_FILE_INDEX_CN:I = 0x3

.field private static final blacklist ASSETS_THEME_FILE_INDEX_EN:I = 0x4

.field private static final blacklist ASSETS_THEME_FILE_INDEX_TW:I = 0x5

.field private static final blacklist ASSETS_THEME_FILE_USE_COUNT:I = 0x3

.field private static final blacklist ASSETS_THEME_VALUE_FILES:[Ljava/lang/String;

.field private static final blacklist RESOURCES_PATHS:[Ljava/lang/String;

.field private static final blacklist TAG:Ljava/lang/String; = "OplusThemeZipFile"

.field private static final blacklist mCustomValidQueue:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist mEntryCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/zip/ZipEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected blacklist mHasInit:Z

.field private blacklist mLastModifyTime:J

.field private blacklist mMetaData:Landroid/content/res/OplusThemeResources$MetaData;

.field private blacklist mPath:Ljava/lang/String;

.field private blacklist mThemePkgName:Ljava/lang/String;

.field private blacklist mZipFile:Landroid/content/res/OplusThemeZipFile$MultiZipFile;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 7

    .line 71
    const-string v0, "res/drawable"

    const-string v1, "framework-res/res/drawable"

    const-string v2, "oplus-framework-res/res/drawable"

    filled-new-array {v0, v1, v2, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/res/OplusThemeZipFile;->RESOURCES_PATHS:[Ljava/lang/String;

    .line 77
    const-string v1, "assets/colors.xml"

    const-string v2, "framework-res/assets/colors.xml"

    const-string v3, "oplus-framework-res/assets/colors.xml"

    const-string v4, "assets/values-cn/colors.xml"

    const-string v5, "assets/values-en/colors.xml"

    const-string v6, "assets/values-tw/colors.xml"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/res/OplusThemeZipFile;->ASSETS_THEME_VALUE_FILES:[Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/content/res/OplusThemeZipFile;->mEntryCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 86
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/content/res/OplusThemeZipFile;->mCustomValidQueue:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/content/res/OplusThemeResources$MetaData;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/IResourcesImplExt;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "metaData"    # Landroid/content/res/OplusThemeResources$MetaData;
    .param p3, "themeName"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "baseResources"    # Landroid/content/res/IResourcesImplExt;

    .line 111
    iget-boolean v3, p2, Landroid/content/res/OplusThemeResources$MetaData;->supportInt:Z

    iget-boolean v4, p2, Landroid/content/res/OplusThemeResources$MetaData;->supportCharSequence:Z

    iget-boolean v5, p2, Landroid/content/res/OplusThemeResources$MetaData;->supportFile:Z

    move-object v0, p0

    move-object v1, p4

    move-object v2, p5

    invoke-direct/range {v0 .. v5}, Landroid/content/res/OplusBaseFile;-><init>(Ljava/lang/String;Landroid/content/res/IResourcesImplExt;ZZZ)V

    .line 88
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/content/res/OplusThemeZipFile;->mLastModifyTime:J

    .line 89
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/content/res/OplusThemeZipFile;->mPath:Ljava/lang/String;

    .line 90
    iput-object v2, p0, Landroid/content/res/OplusThemeZipFile;->mThemePkgName:Ljava/lang/String;

    .line 91
    iput-object v2, p0, Landroid/content/res/OplusThemeZipFile;->mMetaData:Landroid/content/res/OplusThemeResources$MetaData;

    .line 92
    iput-object v2, p0, Landroid/content/res/OplusThemeZipFile;->mZipFile:Landroid/content/res/OplusThemeZipFile$MultiZipFile;

    .line 93
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/content/res/OplusThemeZipFile;->mHasInit:Z

    .line 112
    iput-wide v0, p0, Landroid/content/res/OplusThemeZipFile;->mLastModifyTime:J

    .line 113
    iput-object p1, p0, Landroid/content/res/OplusThemeZipFile;->mPath:Ljava/lang/String;

    .line 114
    iput-object p2, p0, Landroid/content/res/OplusThemeZipFile;->mMetaData:Landroid/content/res/OplusThemeResources$MetaData;

    .line 115
    iput-object p3, p0, Landroid/content/res/OplusThemeZipFile;->mThemePkgName:Ljava/lang/String;

    .line 116
    return-void
.end method

.method private blacklist checkPathForUser()V
    .locals 4

    .line 432
    iget-object v0, p0, Landroid/content/res/OplusThemeZipFile;->mPackageName:Ljava/lang/String;

    const-string v1, "com.android.systemui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/content/res/OplusThemeZipFile;->mMetaData:Landroid/content/res/OplusThemeResources$MetaData;

    iget-object v0, v0, Landroid/content/res/OplusThemeResources$MetaData;->themePath:Ljava/lang/String;

    const-string v1, "/data/theme/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 433
    iget-object v0, p0, Landroid/content/res/OplusThemeZipFile;->mBaseResources:Landroid/content/res/IResourcesImplExt;

    invoke-interface {v0}, Landroid/content/res/IResourcesImplExt;->getSystemConfiguration()Landroid/content/res/OplusBaseConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/OplusBaseConfiguration;->getOplusExtraConfiguration()Loplus/content/res/OplusExtraConfiguration;

    move-result-object v0

    .line 434
    .local v0, "extraConfig":Loplus/content/res/OplusExtraConfiguration;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget v1, v0, Loplus/content/res/OplusExtraConfiguration;->mUserId:I

    .line 435
    .local v1, "userId":I
    :goto_0
    if-gtz v1, :cond_1

    .line 436
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/content/res/OplusThemeZipFile;->mMetaData:Landroid/content/res/OplusThemeResources$MetaData;

    iget-object v3, v3, Landroid/content/res/OplusThemeResources$MetaData;->themePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/content/res/OplusThemeZipFile;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/res/OplusThemeZipFile;->mPath:Ljava/lang/String;

    goto :goto_1

    .line 438
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/content/res/OplusThemeZipFile;->mMetaData:Landroid/content/res/OplusThemeResources$MetaData;

    iget-object v3, v3, Landroid/content/res/OplusThemeResources$MetaData;->themePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/content/res/OplusThemeZipFile;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/res/OplusThemeZipFile;->mPath:Ljava/lang/String;

    .line 441
    .end local v0    # "extraConfig":Loplus/content/res/OplusExtraConfiguration;
    .end local v1    # "userId":I
    :cond_2
    :goto_1
    return-void
.end method

.method private blacklist getInputStreamInner(ILjava/lang/String;Landroid/content/res/OplusThemeZipFile$MultiZipFile;Z)Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;
    .locals 8
    .param p1, "index"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "file"    # Landroid/content/res/OplusThemeZipFile$MultiZipFile;
    .param p4, "isCheck"    # Z

    .line 345
    invoke-direct {p0, p2, p3, p4}, Landroid/content/res/OplusThemeZipFile;->getZipInputStream(Ljava/lang/String;Landroid/content/res/OplusThemeZipFile$MultiZipFile;Z)Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 346
    .local v0, "themeFileInfo":Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;
    if-nez v0, :cond_2

    if-eqz p3, :cond_2

    .line 347
    sget-object v1, Landroid/content/res/OplusThemeZipFile;->RESOURCES_PATHS:[Ljava/lang/String;

    aget-object v1, v1, p1

    .line 348
    .local v1, "str2":Ljava/lang/String;
    const-string v2, "/"

    invoke-virtual {p2, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 349
    .local v2, "i":I
    if-lez v2, :cond_2

    .line 350
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 352
    .local v3, "str1":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    sget-object v5, Landroid/content/res/OplusThemeZipFile;->sDensities:[I

    array-length v5, v5

    if-ge v4, v5, :cond_2

    .line 353
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/content/res/OplusThemeZipFile;->sDensities:[I

    aget v6, v6, v4

    .line 354
    invoke-static {v6}, Loplus/util/OplusDisplayUtils;->getDensitySuffix(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 355
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 356
    .local v5, "temp":Ljava/lang/String;
    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 357
    goto :goto_1

    .line 359
    :cond_0
    invoke-direct {p0, v5, p3, p4}, Landroid/content/res/OplusThemeZipFile;->getZipInputStream(Ljava/lang/String;Landroid/content/res/OplusThemeZipFile$MultiZipFile;Z)Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 360
    if-nez v0, :cond_1

    .line 361
    nop

    .line 352
    .end local v5    # "temp":Ljava/lang/String;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 363
    .restart local v5    # "temp":Ljava/lang/String;
    :cond_1
    sget-object v6, Landroid/content/res/OplusThemeZipFile;->sDensities:[I

    aget v6, v6, v4

    const/4 v7, 0x1

    if-le v6, v7, :cond_2

    .line 364
    sget-object v6, Landroid/content/res/OplusThemeZipFile;->sDensities:[I

    aget v6, v6, v4

    iput v6, v0, Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;->mDensity:I

    .line 371
    .end local v1    # "str2":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "str1":Ljava/lang/String;
    .end local v4    # "j":I
    .end local v5    # "temp":Ljava/lang/String;
    :cond_2
    return-object v0
.end method

.method protected static declared-synchronized blacklist getThemeZipFile(Landroid/content/res/OplusThemeResources$MetaData;Ljava/lang/String;Landroid/content/res/IResourcesImplExt;)Landroid/content/res/OplusThemeZipFile;
    .locals 13
    .param p0, "metadata"    # Landroid/content/res/OplusThemeResources$MetaData;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resources"    # Landroid/content/res/IResourcesImplExt;

    const-class v0, Landroid/content/res/OplusThemeZipFile;

    monitor-enter v0

    .line 227
    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 228
    monitor-exit v0

    return-object v1

    .line 230
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    .line 231
    .local v2, "process":Ljava/lang/String;
    sget-object v3, Landroid/content/res/OplusThemeZipFile;->PACKAGE_DISABLE_LIST:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 232
    .local v6, "suffix":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_1

    .line 233
    monitor-exit v0

    return-object v1

    .line 231
    .end local v6    # "suffix":Ljava/lang/String;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 236
    :cond_2
    :try_start_1
    invoke-static {p0, p1, p2}, Landroid/content/res/OplusThemeZipFile;->getValidZipPath(Landroid/content/res/OplusThemeResources$MetaData;Ljava/lang/String;Landroid/content/res/IResourcesImplExt;)Ljava/lang/String;

    move-result-object v3

    .line 237
    .local v3, "path":Ljava/lang/String;
    invoke-static {v3}, Landroid/content/res/OplusThemeZipFile;->isValidThemeFile(Ljava/lang/String;)Z

    move-result v4

    .line 238
    .local v4, "isPackageFile":Z
    const-string v5, "com.android.launcher"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-nez v4, :cond_3

    .line 239
    sget-object v5, Lcom/oplus/theme/OplusThirdPartUtil;->ZIPLAUNCHER:Ljava/lang/String;

    invoke-static {p0, v5, p2}, Landroid/content/res/OplusThemeZipFile;->getValidZipPath(Landroid/content/res/OplusThemeResources$MetaData;Ljava/lang/String;Landroid/content/res/IResourcesImplExt;)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 240
    invoke-static {v3}, Landroid/content/res/OplusThemeZipFile;->isValidThemeFile(Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v4, v5

    move-object v9, v3

    move v10, v4

    goto :goto_1

    .line 243
    :cond_3
    move-object v9, v3

    move v10, v4

    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "isPackageFile":Z
    .local v9, "path":Ljava/lang/String;
    .local v10, "isPackageFile":Z
    :goto_1
    if-nez v10, :cond_4

    .line 244
    monitor-exit v0

    return-object v1

    .line 246
    :cond_4
    const/4 v1, 0x0

    .line 247
    .local v1, "themeZipFile":Landroid/content/res/OplusThemeZipFile;
    :try_start_2
    sget-object v3, Landroid/content/res/OplusThemeZipFile;->sCacheFiles:Ljava/util/Map;

    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    move-object v11, v3

    .line 248
    .local v11, "weakreference":Ljava/lang/ref/WeakReference;
    if-eqz v11, :cond_5

    .line 249
    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/OplusThemeZipFile;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v3

    goto :goto_2

    .line 251
    :cond_5
    const/4 v1, 0x0

    .line 254
    :goto_2
    if-eqz v1, :cond_6

    .line 255
    monitor-exit v0

    return-object v1

    .line 257
    :cond_6
    :try_start_3
    new-instance v12, Landroid/content/res/OplusThemeZipFile;

    invoke-static {p1}, Landroid/content/res/OplusThemeZipFile;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v3, v12

    move-object v4, v9

    move-object v5, p0

    move-object v6, p1

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Landroid/content/res/OplusThemeZipFile;-><init>(Ljava/lang/String;Landroid/content/res/OplusThemeResources$MetaData;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/IResourcesImplExt;)V

    move-object v1, v12

    .line 258
    nop

    .line 259
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 260
    .end local v11    # "weakreference":Ljava/lang/ref/WeakReference;
    .local v3, "weakreference":Ljava/lang/ref/WeakReference;
    sget-object v4, Landroid/content/res/OplusThemeZipFile;->sCacheFiles:Ljava/util/Map;

    invoke-interface {v4, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 264
    monitor-exit v0

    return-object v1

    .line 226
    .end local v1    # "themeZipFile":Landroid/content/res/OplusThemeZipFile;
    .end local v2    # "process":Ljava/lang/String;
    .end local v3    # "weakreference":Ljava/lang/ref/WeakReference;
    .end local v9    # "path":Ljava/lang/String;
    .end local v10    # "isPackageFile":Z
    .end local p0    # "metadata":Landroid/content/res/OplusThemeResources$MetaData;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "resources":Landroid/content/res/IResourcesImplExt;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static blacklist getValidZipPath(Landroid/content/res/OplusThemeResources$MetaData;Ljava/lang/String;Landroid/content/res/IResourcesImplExt;)Ljava/lang/String;
    .locals 7
    .param p0, "metadata"    # Landroid/content/res/OplusThemeResources$MetaData;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resources"    # Landroid/content/res/IResourcesImplExt;

    .line 319
    const/4 v0, 0x0

    .line 320
    .local v0, "path":Ljava/lang/String;
    sget-object v1, Landroid/content/res/OplusThemeResources;->SYSTEM_THEME_PATH:Ljava/lang/String;

    iget-object v2, p0, Landroid/content/res/OplusThemeResources$MetaData;->themePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/content/res/OplusThemeResources$MetaData;->themePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 323
    :cond_0
    const/4 v1, 0x0

    .line 324
    .local v1, "extraConfig":Loplus/content/res/OplusExtraConfiguration;
    const/4 v2, 0x0

    .line 325
    .local v2, "baseConfig":Landroid/content/res/OplusBaseConfiguration;
    const-string v3, "framework-res"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_3

    const-string v3, "oplus-framework-res"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 328
    :cond_1
    invoke-interface {p2}, Landroid/content/res/IResourcesImplExt;->getSystemConfiguration()Landroid/content/res/OplusBaseConfiguration;

    move-result-object v3

    move-object v2, v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Landroid/content/res/OplusBaseConfiguration;->getOplusExtraConfiguration()Loplus/content/res/OplusExtraConfiguration;

    move-result-object v4

    :cond_2
    move-object v1, v4

    goto :goto_1

    .line 326
    :cond_3
    :goto_0
    invoke-interface {p2}, Landroid/content/res/IResourcesImplExt;->getConfiguration()Landroid/content/res/OplusBaseConfiguration;

    move-result-object v3

    move-object v2, v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Landroid/content/res/OplusBaseConfiguration;->getOplusExtraConfiguration()Loplus/content/res/OplusExtraConfiguration;

    move-result-object v4

    :cond_4
    move-object v1, v4

    .line 330
    :goto_1
    if-eqz v1, :cond_7

    iget-wide v3, v1, Loplus/content/res/OplusExtraConfiguration;->mThemeChangedFlags:J

    const-wide/16 v5, 0x100

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    goto :goto_2

    .line 333
    :cond_5
    iget v3, v1, Loplus/content/res/OplusExtraConfiguration;->mUserId:I

    .line 334
    .local v3, "userId":I
    if-gtz v3, :cond_6

    .line 335
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Landroid/content/res/OplusThemeResources$MetaData;->themePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 337
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Landroid/content/res/OplusThemeResources$MetaData;->themePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 331
    .end local v3    # "userId":I
    :cond_7
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/content/res/OplusThemeResources$MetaData;->themePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 341
    .end local v1    # "extraConfig":Loplus/content/res/OplusExtraConfiguration;
    .end local v2    # "baseConfig":Landroid/content/res/OplusBaseConfiguration;
    :goto_3
    return-object v0
.end method

.method private blacklist getZipInputStream(Ljava/lang/String;Landroid/content/res/OplusThemeZipFile$MultiZipFile;Z)Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "file"    # Landroid/content/res/OplusThemeZipFile$MultiZipFile;
    .param p3, "isCheck"    # Z

    .line 375
    const/4 v0, 0x0

    .line 376
    .local v0, "themeFileInfo":Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;
    if-nez p2, :cond_0

    .line 377
    return-object v0

    .line 380
    :cond_0
    :try_start_0
    sget-object v1, Landroid/content/res/OplusThemeZipFile;->mEntryCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    .line 381
    .local v2, "zipEntry":Ljava/util/zip/ZipEntry;
    if-nez v2, :cond_1

    invoke-virtual {p0, p3}, Landroid/content/res/OplusThemeZipFile;->isZipFileValid(Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 382
    iget-object v3, p0, Landroid/content/res/OplusThemeZipFile;->mZipFile:Landroid/content/res/OplusThemeZipFile$MultiZipFile;

    invoke-virtual {v3, p1}, Landroid/content/res/OplusThemeZipFile$MultiZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    move-object v2, v3

    .line 384
    :cond_1
    if-eqz v2, :cond_3

    .line 385
    invoke-virtual {p0, p3}, Landroid/content/res/OplusThemeZipFile;->isZipFileValid(Z)Z

    move-result v3

    if-nez v3, :cond_2

    .line 386
    return-object v0

    .line 388
    :cond_2
    invoke-virtual {p2, v2}, Landroid/content/res/OplusThemeZipFile$MultiZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    .line 389
    .local v3, "inputStream":Ljava/io/InputStream;
    if-eqz v3, :cond_3

    .line 390
    invoke-virtual {v1, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    new-instance v1, Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v4

    invoke-direct {v1, v3, v4, v5}, Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;-><init>(Ljava/io/InputStream;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 396
    .end local v2    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v3    # "inputStream":Ljava/io/InputStream;
    :cond_3
    goto :goto_0

    .line 394
    :catch_0
    move-exception v1

    .line 395
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OplusThemeZipFile Exception e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " path= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " file= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OplusThemeZipFile"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method private static blacklist isCutsomZipInValid(Ljava/lang/String;Landroid/content/res/OplusThemeResources$MetaData;Landroid/content/res/IResourcesImplExt;)Z
    .locals 17
    .param p0, "themePkgName"    # Ljava/lang/String;
    .param p1, "metadata"    # Landroid/content/res/OplusThemeResources$MetaData;
    .param p2, "resources"    # Landroid/content/res/IResourcesImplExt;

    .line 445
    move-object/from16 v1, p0

    const-string v2, "OplusThemeZipFile"

    sget-object v0, Landroid/content/res/OplusThemeZipFile;->sNightWhites:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 446
    return v3

    .line 448
    :cond_0
    invoke-interface/range {p2 .. p2}, Landroid/content/res/IResourcesImplExt;->getSystemConfiguration()Landroid/content/res/OplusBaseConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/OplusBaseConfiguration;->getOplusExtraConfiguration()Loplus/content/res/OplusExtraConfiguration;

    move-result-object v4

    .line 449
    .local v4, "extraConfig":Loplus/content/res/OplusExtraConfiguration;
    if-eqz v4, :cond_11

    iget-wide v5, v4, Loplus/content/res/OplusExtraConfiguration;->mThemeChangedFlags:J

    const-wide/16 v7, 0x100

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-nez v0, :cond_1

    goto/16 :goto_6

    .line 452
    :cond_1
    const/4 v0, 0x0

    .line 453
    .local v0, "include":Z
    sget-object v5, Landroid/content/res/OplusThemeZipFile;->OPLUS_CUSTOM_CHECK_LIST:[Ljava/lang/String;

    array-length v6, v5

    move v7, v3

    :goto_0
    if-ge v7, v6, :cond_3

    aget-object v8, v5, v7

    .line 454
    .local v8, "pkg":Ljava/lang/String;
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 455
    const/4 v0, 0x1

    .line 456
    move v5, v0

    goto :goto_1

    .line 453
    .end local v8    # "pkg":Ljava/lang/String;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    move v5, v0

    .line 459
    .end local v0    # "include":Z
    .local v5, "include":Z
    :goto_1
    if-nez v5, :cond_4

    .line 460
    return v3

    .line 462
    :cond_4
    sget-object v0, Landroid/content/res/OplusThemeZipFile;->mCustomValidQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/Boolean;

    .line 463
    .local v6, "valid":Ljava/lang/Boolean;
    if-eqz v6, :cond_5

    .line 464
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 466
    :cond_5
    const-string v7, ""

    .line 468
    .local v7, "themeData":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 469
    .local v0, "packageManager":Landroid/content/pm/IPackageManager;
    move-object/from16 v8, p0

    .line 470
    .local v8, "appPkg":Ljava/lang/String;
    const-string v9, "framework-res"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    const-string v9, "oplus-framework-res"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 471
    :cond_6
    const-string v9, "com.android.systemui"

    move-object v8, v9

    .line 473
    :cond_7
    if-eqz v0, :cond_8

    .line 474
    const-wide/16 v9, 0x80

    iget v11, v4, Loplus/content/res/OplusExtraConfiguration;->mUserId:I

    invoke-interface {v0, v8, v9, v10, v11}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 475
    .local v9, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v9, :cond_8

    iget-object v10, v9, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v10, :cond_8

    .line 476
    iget-object v10, v9, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v11, "theme_version_metadata"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v10

    .line 481
    .end local v0    # "packageManager":Landroid/content/pm/IPackageManager;
    .end local v8    # "appPkg":Ljava/lang/String;
    .end local v9    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_8
    goto :goto_2

    .line 479
    :catch_0
    move-exception v0

    .line 480
    .local v0, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getThemeMetaData exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 483
    return v3

    .line 485
    :cond_9
    const-string v0, "."

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 486
    .local v8, "start":I
    invoke-virtual {v7, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    .line 487
    .local v9, "end":I
    if-ltz v8, :cond_10

    if-gez v9, :cond_a

    goto/16 :goto_5

    .line 490
    :cond_a
    add-int/lit8 v10, v8, 0x1

    invoke-virtual {v7, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 491
    .local v10, "version":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 492
    return v3

    .line 494
    :cond_b
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "0"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 495
    .local v11, "appStartVersion":Ljava/lang/String;
    const-string v12, ""

    .line 496
    .local v12, "themeVersion":Ljava/lang/String;
    const-string v13, ""

    .line 498
    .local v13, "realProp":Ljava/lang/String;
    :try_start_1
    new-instance v14, Landroid/app/OplusActivityManager;

    invoke-direct {v14}, Landroid/app/OplusActivityManager;-><init>()V

    .line 499
    .local v14, "activityManager":Landroid/app/OplusActivityManager;
    invoke-virtual {v14, v1, v3}, Landroid/app/OplusActivityManager;->getAppThemeVersion(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v15

    move-object v12, v15

    .line 500
    const/4 v15, -0x1

    .line 501
    .local v15, "index":I
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_c

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    move v15, v0

    if-lez v0, :cond_c

    .line 502
    invoke-virtual {v12, v3, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v13, v0

    .line 506
    .end local v14    # "activityManager":Landroid/app/OplusActivityManager;
    .end local v15    # "index":I
    :cond_c
    goto :goto_3

    .line 504
    :catch_1
    move-exception v0

    .line 505
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getThemeMetaData RemoteException: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    const/4 v0, 0x0

    .line 508
    .local v0, "invalid":Z
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 509
    :cond_d
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    invoke-virtual {v12, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 510
    :cond_e
    const/4 v0, 0x1

    .line 511
    sget-object v2, Landroid/content/res/OplusThemeZipFile;->mCustomValidQueue:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 513
    :cond_f
    sget-object v2, Landroid/content/res/OplusThemeZipFile;->mCustomValidQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    :goto_4
    return v0

    .line 488
    .end local v0    # "invalid":Z
    .end local v10    # "version":Ljava/lang/String;
    .end local v11    # "appStartVersion":Ljava/lang/String;
    .end local v12    # "themeVersion":Ljava/lang/String;
    .end local v13    # "realProp":Ljava/lang/String;
    :cond_10
    :goto_5
    return v3

    .line 450
    .end local v5    # "include":Z
    .end local v6    # "valid":Ljava/lang/Boolean;
    .end local v7    # "themeData":Ljava/lang/String;
    .end local v8    # "start":I
    .end local v9    # "end":I
    :cond_11
    :goto_6
    return v3
.end method

.method private static blacklist isValidThemeFile(Ljava/lang/String;)Z
    .locals 6
    .param p0, "path"    # Ljava/lang/String;

    .line 302
    const/4 v0, 0x0

    .line 303
    .local v0, "isValid":Z
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 305
    .local v1, "packageFile":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 306
    const/4 v0, 0x1

    .line 313
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 314
    goto :goto_1

    .line 313
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 308
    :catch_0
    move-exception v2

    .line 309
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    sget-boolean v3, Landroid/content/res/OplusThemeZipFile;->DEBUG_THEME:Z

    if-eqz v3, :cond_0

    .line 310
    const-string v3, "OplusThemeZipFile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isValidThemeFile Exception e: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 315
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return v0

    .line 313
    :goto_2
    const/4 v1, 0x0

    .line 314
    throw v2
.end method

.method private blacklist loadThemeValues(ILandroid/content/res/OplusThemeZipFile$MultiZipFile;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "file"    # Landroid/content/res/OplusThemeZipFile$MultiZipFile;

    .line 417
    sget-object v0, Landroid/content/res/OplusThemeZipFile;->sDensities:[I

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 418
    .local v0, "i":I
    new-array v1, v1, [Ljava/lang/Object;

    .line 419
    .local v1, "suffix":[Ljava/lang/Object;
    sget-object v2, Landroid/content/res/OplusThemeZipFile;->sDensities:[I

    aget v2, v2, v0

    invoke-static {v2}, Loplus/util/OplusDisplayUtils;->getDensitySuffix(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 420
    sget-object v2, Landroid/content/res/OplusThemeZipFile;->ASSETS_THEME_VALUE_FILES:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p2, v3}, Landroid/content/res/OplusThemeZipFile;->getZipInputStream(Ljava/lang/String;Landroid/content/res/OplusThemeZipFile$MultiZipFile;Z)Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;

    move-result-object v2

    .line 421
    .local v2, "themeFileInfo":Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;
    invoke-virtual {p0, p1, v2}, Landroid/content/res/OplusThemeZipFile;->parseXmlStream(ILandroid/content/res/OplusThemeZipFile$ThemeFileInfo;)V

    .line 422
    return-void
.end method

.method private declared-synchronized blacklist openZipFile()V
    .locals 5

    monitor-enter p0

    .line 401
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/content/res/OplusThemeZipFile;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 402
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 403
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/content/res/OplusThemeZipFile;->mLastModifyTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 406
    :try_start_1
    new-instance v1, Landroid/content/res/OplusThemeZipFile$MultiZipFile;

    invoke-direct {v1, p0, v0}, Landroid/content/res/OplusThemeZipFile$MultiZipFile;-><init>(Landroid/content/res/OplusThemeZipFile;Ljava/io/File;)V

    iput-object v1, p0, Landroid/content/res/OplusThemeZipFile;->mZipFile:Landroid/content/res/OplusThemeZipFile$MultiZipFile;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 409
    goto :goto_0

    .line 407
    .end local p0    # "this":Landroid/content/res/OplusThemeZipFile;
    :catch_0
    move-exception v1

    .line 408
    .local v1, "exception":Ljava/lang/Exception;
    :try_start_2
    sget-boolean v2, Landroid/content/res/OplusThemeZipFile;->DEBUG_THEME:Z

    if-eqz v2, :cond_0

    const-string v2, "OplusThemeZipFile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "openZipFile Exception e: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " path= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/content/res/OplusThemeZipFile;->mPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    .end local v1    # "exception":Ljava/lang/Exception;
    :cond_0
    goto :goto_0

    .line 412
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/content/res/OplusThemeZipFile;->mZipFile:Landroid/content/res/OplusThemeZipFile$MultiZipFile;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 414
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 400
    .end local v0    # "file":Ljava/io/File;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected declared-synchronized blacklist clear()V
    .locals 1

    monitor-enter p0

    .line 292
    :try_start_0
    iget-object v0, p0, Landroid/content/res/OplusThemeZipFile;->mZipFile:Landroid/content/res/OplusThemeZipFile$MultiZipFile;

    invoke-virtual {p0, v0}, Landroid/content/res/OplusThemeZipFile;->clean(Ljava/util/zip/ZipFile;)V

    .line 293
    sget-object v0, Landroid/content/res/OplusThemeZipFile;->mEntryCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 294
    sget-object v0, Landroid/content/res/OplusThemeZipFile;->mCustomValidQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 295
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/OplusThemeZipFile;->mHasInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    monitor-exit p0

    return-void

    .line 291
    .end local p0    # "this":Landroid/content/res/OplusThemeZipFile;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist containsEntry(Ljava/lang/String;)Z
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 209
    const/4 v0, 0x0

    .line 210
    .local v0, "flag":Z
    iget-object v1, p0, Landroid/content/res/OplusThemeZipFile;->mZipFile:Landroid/content/res/OplusThemeZipFile$MultiZipFile;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/content/res/OplusThemeZipFile$MultiZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 211
    const/4 v0, 0x1

    goto :goto_0

    .line 213
    :cond_0
    const/4 v0, 0x0

    .line 215
    :goto_0
    return v0
.end method

.method public blacklist exists()Z
    .locals 2

    .line 219
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/content/res/OplusThemeZipFile;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public blacklist getIconInputStream(Ljava/lang/String;)Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, "themeFileInfo":Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;
    iget-object v1, p0, Landroid/content/res/OplusThemeZipFile;->mMetaData:Landroid/content/res/OplusThemeResources$MetaData;

    iget-boolean v1, v1, Landroid/content/res/OplusThemeResources$MetaData;->supportFile:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/content/res/OplusThemeZipFile;->mZipFile:Landroid/content/res/OplusThemeZipFile$MultiZipFile;

    if-nez v1, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v2, p1, v1, v3}, Landroid/content/res/OplusThemeZipFile;->getInputStreamInner(ILjava/lang/String;Landroid/content/res/OplusThemeZipFile$MultiZipFile;Z)Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 176
    const-string v1, ".xml"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "."

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ".png"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 178
    iget-object v1, p0, Landroid/content/res/OplusThemeZipFile;->mZipFile:Landroid/content/res/OplusThemeZipFile$MultiZipFile;

    invoke-direct {p0, v2, p1, v1, v3}, Landroid/content/res/OplusThemeZipFile;->getInputStreamInner(ILjava/lang/String;Landroid/content/res/OplusThemeZipFile$MultiZipFile;Z)Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 180
    :cond_1
    return-object v0

    .line 173
    :cond_2
    :goto_0
    return-object v0
.end method

.method public blacklist getInputStream(ILjava/lang/String;)Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;
    .locals 7
    .param p1, "index"    # I
    .param p2, "path"    # Ljava/lang/String;

    .line 149
    const/4 v0, 0x0

    .line 150
    .local v0, "themeFileInfo":Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;
    iget-object v1, p0, Landroid/content/res/OplusThemeZipFile;->mMetaData:Landroid/content/res/OplusThemeResources$MetaData;

    iget-boolean v1, v1, Landroid/content/res/OplusThemeResources$MetaData;->supportFile:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/content/res/OplusThemeZipFile;->mZipFile:Landroid/content/res/OplusThemeZipFile$MultiZipFile;

    if-nez v1, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    const-string v1, ".xml"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, ".png"

    const-string v3, ".9.png"

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "."

    invoke-virtual {p2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p2, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 155
    iget-object v1, p0, Landroid/content/res/OplusThemeZipFile;->mZipFile:Landroid/content/res/OplusThemeZipFile$MultiZipFile;

    invoke-direct {p0, p1, p2, v1, v4}, Landroid/content/res/OplusThemeZipFile;->getInputStreamInner(ILjava/lang/String;Landroid/content/res/OplusThemeZipFile$MultiZipFile;Z)Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 156
    if-nez v0, :cond_1

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 158
    iget-object v1, p0, Landroid/content/res/OplusThemeZipFile;->mZipFile:Landroid/content/res/OplusThemeZipFile$MultiZipFile;

    invoke-direct {p0, p1, p2, v1, v4}, Landroid/content/res/OplusThemeZipFile;->getInputStreamInner(ILjava/lang/String;Landroid/content/res/OplusThemeZipFile$MultiZipFile;Z)Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 160
    :cond_1
    return-object v0

    .line 162
    :cond_2
    iget-object v1, p0, Landroid/content/res/OplusThemeZipFile;->mZipFile:Landroid/content/res/OplusThemeZipFile$MultiZipFile;

    invoke-direct {p0, p1, p2, v1, v4}, Landroid/content/res/OplusThemeZipFile;->getInputStreamInner(ILjava/lang/String;Landroid/content/res/OplusThemeZipFile$MultiZipFile;Z)Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 163
    invoke-virtual {p2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez v0, :cond_3

    .line 164
    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 165
    iget-object v1, p0, Landroid/content/res/OplusThemeZipFile;->mZipFile:Landroid/content/res/OplusThemeZipFile$MultiZipFile;

    invoke-direct {p0, p1, p2, v1, v4}, Landroid/content/res/OplusThemeZipFile;->getInputStreamInner(ILjava/lang/String;Landroid/content/res/OplusThemeZipFile$MultiZipFile;Z)Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 167
    :cond_3
    return-object v0

    .line 151
    :cond_4
    :goto_0
    return-object v0
.end method

.method public blacklist getInputStream(Ljava/lang/String;)Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 145
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/content/res/OplusThemeZipFile;->getInputStream(ILjava/lang/String;)Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist hasZipDrawables()Z
    .locals 7

    .line 269
    const/4 v0, 0x0

    .line 270
    .local v0, "hasDrawable":Z
    iget-object v1, p0, Landroid/content/res/OplusThemeZipFile;->mZipFile:Landroid/content/res/OplusThemeZipFile$MultiZipFile;

    if-nez v1, :cond_0

    .line 271
    return v0

    .line 273
    :cond_0
    monitor-enter v1

    .line 275
    :try_start_0
    iget-object v2, p0, Landroid/content/res/OplusThemeZipFile;->mZipFile:Landroid/content/res/OplusThemeZipFile$MultiZipFile;

    invoke-virtual {v2}, Landroid/content/res/OplusThemeZipFile$MultiZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    .line 276
    .local v2, "entrys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 277
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/zip/ZipEntry;

    .line 278
    .local v3, "enumEntry":Ljava/util/zip/ZipEntry;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 279
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/content/res/OplusThemeZipFile;->RESOURCES_PATHS:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 280
    const/4 v0, 0x1

    .line 281
    goto :goto_1

    .line 283
    .end local v3    # "enumEntry":Ljava/util/zip/ZipEntry;
    :cond_1
    goto :goto_0

    .line 286
    .end local v2    # "entrys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :cond_2
    :goto_1
    goto :goto_2

    .line 287
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 284
    :catch_0
    move-exception v2

    .line 285
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1
    sget-boolean v3, Landroid/content/res/OplusThemeZipFile;->DEBUG_THEME:Z

    if-eqz v3, :cond_3

    const-string v3, "OplusThemeZipFile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception when hasZipDrawables, msg = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_3
    :goto_2
    monitor-exit v1

    .line 288
    return v0

    .line 287
    :goto_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public blacklist initZipFile()Z
    .locals 4

    .line 119
    iget-object v0, p0, Landroid/content/res/OplusThemeZipFile;->mThemePkgName:Ljava/lang/String;

    iget-object v1, p0, Landroid/content/res/OplusThemeZipFile;->mMetaData:Landroid/content/res/OplusThemeResources$MetaData;

    iget-object v2, p0, Landroid/content/res/OplusThemeZipFile;->mBaseResources:Landroid/content/res/IResourcesImplExt;

    invoke-static {v0, v1, v2}, Landroid/content/res/OplusThemeZipFile;->isCutsomZipInValid(Ljava/lang/String;Landroid/content/res/OplusThemeResources$MetaData;Landroid/content/res/IResourcesImplExt;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/OplusThemeZipFile;->mHasInit:Z

    .line 121
    return v1

    .line 123
    :cond_0
    invoke-direct {p0}, Landroid/content/res/OplusThemeZipFile;->checkPathForUser()V

    .line 124
    const/4 v0, 0x0

    .line 125
    .local v0, "flag":Z
    iget-object v2, p0, Landroid/content/res/OplusThemeZipFile;->mZipFile:Landroid/content/res/OplusThemeZipFile$MultiZipFile;

    if-eqz v2, :cond_1

    .line 126
    invoke-virtual {p0}, Landroid/content/res/OplusThemeZipFile;->clear()V

    .line 128
    :cond_1
    invoke-direct {p0}, Landroid/content/res/OplusThemeZipFile;->openZipFile()V

    .line 129
    iget-object v2, p0, Landroid/content/res/OplusThemeZipFile;->mPackageName:Ljava/lang/String;

    const-string v3, "android"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Landroid/content/res/OplusThemeZipFile;->mPackageName:Ljava/lang/String;

    const-string v3, "oplus"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 133
    :cond_2
    iget-object v1, p0, Landroid/content/res/OplusThemeZipFile;->mZipFile:Landroid/content/res/OplusThemeZipFile$MultiZipFile;

    if-eqz v1, :cond_5

    .line 134
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_3

    .line 135
    iget-object v2, p0, Landroid/content/res/OplusThemeZipFile;->mZipFile:Landroid/content/res/OplusThemeZipFile$MultiZipFile;

    invoke-direct {p0, v1, v2}, Landroid/content/res/OplusThemeZipFile;->loadThemeValues(ILandroid/content/res/OplusThemeZipFile$MultiZipFile;)V

    .line 134
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
    .end local v1    # "i":I
    :cond_3
    const/4 v0, 0x1

    goto :goto_2

    .line 130
    :cond_4
    :goto_1
    iget-object v2, p0, Landroid/content/res/OplusThemeZipFile;->mZipFile:Landroid/content/res/OplusThemeZipFile$MultiZipFile;

    invoke-direct {p0, v1, v2}, Landroid/content/res/OplusThemeZipFile;->loadThemeValues(ILandroid/content/res/OplusThemeZipFile$MultiZipFile;)V

    .line 131
    const/4 v0, 0x1

    .line 140
    :cond_5
    :goto_2
    iput-boolean v0, p0, Landroid/content/res/OplusThemeZipFile;->mHasInit:Z

    .line 141
    return v0
.end method

.method public blacklist isZipFileValid(Z)Z
    .locals 8
    .param p1, "isCheck"    # Z

    .line 184
    const/4 v0, 0x1

    .line 185
    .local v0, "valid":Z
    if-nez p1, :cond_0

    .line 186
    return v0

    .line 188
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/content/res/OplusThemeZipFile;->mPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 189
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 190
    .local v2, "modifyTime":J
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-wide v4, p0, Landroid/content/res/OplusThemeZipFile;->mLastModifyTime:J

    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-eqz v6, :cond_2

    cmp-long v4, v4, v2

    if-eqz v4, :cond_2

    .line 191
    :cond_1
    const/4 v0, 0x0

    .line 192
    sget-boolean v4, Landroid/content/res/OplusThemeZipFile;->DEBUG_THEME:Z

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "check zip invalid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/content/res/OplusThemeZipFile;->mPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mLastModifyTime= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Landroid/content/res/OplusThemeZipFile;->mLastModifyTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " modifyTime= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OplusThemeZipFile"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_2
    return v0
.end method

.method public blacklist shouldReload()Z
    .locals 8

    .line 199
    const/4 v0, 0x0

    .line 200
    .local v0, "reload":Z
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/content/res/OplusThemeZipFile;->mPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 201
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 202
    .local v2, "modifyTime":J
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-wide v4, p0, Landroid/content/res/OplusThemeZipFile;->mLastModifyTime:J

    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    cmp-long v4, v4, v2

    if-eqz v4, :cond_1

    .line 203
    :cond_0
    const/4 v0, 0x1

    .line 205
    :cond_1
    return v0
.end method
