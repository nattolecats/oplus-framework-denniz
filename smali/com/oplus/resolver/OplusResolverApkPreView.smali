.class public Lcom/oplus/resolver/OplusResolverApkPreView;
.super Ljava/lang/Object;
.source "OplusResolverApkPreView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/resolver/OplusResolverApkPreView$StagingAsyncTask;
    }
.end annotation


# static fields
.field private static final blacklist ATTR_NAME:Ljava/lang/String; = "name"

.field private static final blacklist ATTR_PATH:Ljava/lang/String; = "path"

.field private static final blacklist DEVICE_ROOT:Ljava/io/File;

.field private static final blacklist META_DATA_FILE_PROVIDER_PATHS:Ljava/lang/String; = "android.support.FILE_PROVIDER_PATHS"

.field private static final blacklist TAG:Ljava/lang/String; = "OplusResolverApkPreView"

.field private static final blacklist TAG_CACHE_PATH:Ljava/lang/String; = "cache-path"

.field private static final blacklist TAG_EXTERNAL:Ljava/lang/String; = "external-path"

.field private static final blacklist TAG_EXTERNAL_CACHE:Ljava/lang/String; = "external-cache-path"

.field private static final blacklist TAG_EXTERNAL_FILES:Ljava/lang/String; = "external-files-path"

.field private static final blacklist TAG_EXTERNAL_MEDIA:Ljava/lang/String; = "external-media-path"

.field private static final blacklist TAG_FILES_PATH:Ljava/lang/String; = "files-path"

.field private static final blacklist TAG_ROOT_PATH:Ljava/lang/String; = "root-path"


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mStagingAsyncTask:Lcom/oplus/resolver/OplusResolverApkPreView$StagingAsyncTask;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/oplus/resolver/OplusResolverApkPreView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oplus/resolver/OplusResolverApkPreView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetFPUriToPath(Lcom/oplus/resolver/OplusResolverApkPreView;Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oplus/resolver/OplusResolverApkPreView;->getFPUriToPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 75
    new-instance v0, Ljava/io/File;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oplus/resolver/OplusResolverApkPreView;->DEVICE_ROOT:Ljava/io/File;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverApkPreView;->mContext:Landroid/content/Context;

    .line 82
    return-void
.end method

.method private blacklist getFPUriToPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 197
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "authority":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 199
    return-object v1

    .line 202
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/oplus/resolver/OplusResolverApkPreView;->parsePathStrategy(Landroid/content/Context;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    .line 203
    .local v2, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/io/File;>;"
    invoke-virtual {p0, p2, v2}, Lcom/oplus/resolver/OplusResolverApkPreView;->getFileForUri(Landroid/net/Uri;Landroid/util/Pair;)Ljava/io/File;

    move-result-object v3

    .line 204
    .local v3, "file":Ljava/io/File;
    if-eqz v3, :cond_1

    .line 205
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 208
    .end local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/io/File;>;"
    .end local v3    # "file":Ljava/io/File;
    :cond_1
    goto :goto_0

    .line 207
    :catch_0
    move-exception v2

    .line 209
    :goto_0
    return-object v1
.end method

.method private blacklist parsePathStrategy(Landroid/content/Context;Ljava/lang/String;)Landroid/util/Pair;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 215
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 216
    const/16 v1, 0x80

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 217
    .local v0, "info":Landroid/content/pm/ProviderInfo;
    if-eqz v0, :cond_d

    .line 222
    nop

    .line 223
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 222
    const-string v2, "android.support.FILE_PROVIDER_PATHS"

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ProviderInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 224
    .local v1, "in":Landroid/content/res/XmlResourceParser;
    if-eqz v1, :cond_c

    .line 229
    const/4 v2, -0x1

    .line 230
    .local v2, "type":I
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    move v2, v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v3, v4, :cond_b

    .line 231
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 232
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 234
    .local v3, "tag":Ljava/lang/String;
    const-string v4, "name"

    invoke-interface {v1, v5, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 235
    .local v4, "name":Ljava/lang/String;
    const-string v6, "path"

    invoke-interface {v1, v5, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 237
    .local v6, "path":Ljava/lang/String;
    const/4 v7, 0x0

    .line 238
    .local v7, "target":Ljava/io/File;
    const-string v8, "root-path"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 239
    sget-object v7, Lcom/oplus/resolver/OplusResolverApkPreView;->DEVICE_ROOT:Ljava/io/File;

    goto :goto_1

    .line 240
    :cond_1
    const-string v8, "files-path"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 241
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    goto :goto_1

    .line 242
    :cond_2
    const-string v8, "cache-path"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 243
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v7

    goto :goto_1

    .line 244
    :cond_3
    const-string v8, "external-path"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 245
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    goto :goto_1

    .line 246
    :cond_4
    const-string v8, "external-files-path"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_6

    .line 247
    invoke-virtual {p1, v5}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v5

    .line 248
    .local v5, "externalFilesDirs":[Ljava/io/File;
    array-length v8, v5

    if-lez v8, :cond_5

    .line 249
    aget-object v7, v5, v9

    .line 251
    .end local v5    # "externalFilesDirs":[Ljava/io/File;
    :cond_5
    goto :goto_1

    :cond_6
    const-string v5, "external-cache-path"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 252
    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDirs()[Ljava/io/File;

    move-result-object v5

    .line 253
    .local v5, "externalCacheDirs":[Ljava/io/File;
    array-length v8, v5

    if-lez v8, :cond_7

    .line 254
    aget-object v7, v5, v9

    .line 256
    .end local v5    # "externalCacheDirs":[Ljava/io/File;
    :cond_7
    goto :goto_1

    :cond_8
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v5, v8, :cond_7

    .line 257
    const-string v5, "external-media-path"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 258
    invoke-virtual {p1}, Landroid/content/Context;->getExternalMediaDirs()[Ljava/io/File;

    move-result-object v5

    .line 259
    .local v5, "externalMediaDirs":[Ljava/io/File;
    array-length v8, v5

    if-lez v8, :cond_9

    .line 260
    aget-object v7, v5, v9

    .line 264
    .end local v5    # "externalMediaDirs":[Ljava/io/File;
    :cond_9
    :goto_1
    if-eqz v7, :cond_a

    .line 265
    new-instance v5, Landroid/util/Pair;

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v5, v4, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5

    .line 267
    .end local v3    # "tag":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "path":Ljava/lang/String;
    .end local v7    # "target":Ljava/io/File;
    :cond_a
    goto/16 :goto_0

    .line 269
    :cond_b
    return-object v5

    .line 225
    .end local v2    # "type":I
    :cond_c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Missing android.support.FILE_PROVIDER_PATHS meta-data"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 218
    .end local v1    # "in":Landroid/content/res/XmlResourceParser;
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t find meta-data for provider with authority "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public blacklist execute(Landroid/net/Uri;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "textView"    # Landroid/widget/TextView;

    .line 85
    const/4 v0, 0x4

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 87
    new-instance v0, Lcom/oplus/resolver/OplusResolverApkPreView$StagingAsyncTask;

    invoke-direct {v0, p0, p2, p3}, Lcom/oplus/resolver/OplusResolverApkPreView$StagingAsyncTask;-><init>(Lcom/oplus/resolver/OplusResolverApkPreView;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/oplus/resolver/OplusResolverApkPreView;->mStagingAsyncTask:Lcom/oplus/resolver/OplusResolverApkPreView$StagingAsyncTask;

    .line 88
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/oplus/resolver/OplusResolverApkPreView$StagingAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 89
    return-void
.end method

.method public blacklist getFileForUri(Landroid/net/Uri;Landroid/util/Pair;)Ljava/io/File;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;)",
            "Ljava/io/File;"
        }
    .end annotation

    .line 273
    .local p2, "roots":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/io/File;>;"
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, "path":Ljava/lang/String;
    if-eqz p2, :cond_3

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 278
    :cond_0
    const/16 v1, 0x2f

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 279
    .local v1, "splitIndex":I
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 280
    .local v2, "tag":Ljava/lang/String;
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 282
    iget-object v3, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 285
    iget-object v3, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/io/File;

    .line 287
    .local v3, "root":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 289
    .local v4, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    .line 292
    nop

    .line 294
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 298
    return-object v4

    .line 295
    :cond_1
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Resolved path jumped beyond configured root"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 290
    :catch_0
    move-exception v5

    .line 291
    .local v5, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to resolve canonical path for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 283
    .end local v3    # "root":Ljava/io/File;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "e":Ljava/io/IOException;
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find configured root for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 275
    .end local v1    # "splitIndex":I
    .end local v2    # "tag":Ljava/lang/String;
    :cond_3
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist onDestroy()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverApkPreView;->mStagingAsyncTask:Lcom/oplus/resolver/OplusResolverApkPreView$StagingAsyncTask;

    if-eqz v0, :cond_0

    .line 93
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/resolver/OplusResolverApkPreView$StagingAsyncTask;->cancel(Z)Z

    .line 95
    :cond_0
    return-void
.end method
