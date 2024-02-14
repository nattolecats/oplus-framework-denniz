.class public Landroid/content/res/OplusAccessibleFile;
.super Landroid/content/res/OplusBaseFile;
.source "OplusAccessibleFile.java"


# static fields
.field private static final blacklist ACCESSIBLE_FILE_PATH:Ljava/lang/String;

.field private static final blacklist INDEX_COLORS:I = 0x0

.field private static final blacklist INDEX_XHDPI:I = 0x1

.field private static final blacklist INDEX_XXHDPI:I = 0x2

.field private static final blacklist PKG_FOR_WHITE:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getSystemExtDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/etc/coui_theme_color_accessible.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/res/OplusAccessibleFile;->ACCESSIBLE_FILE_PATH:Ljava/lang/String;

    .line 54
    const-string v0, "com.android.systemui"

    const-string v1, "com.android.settings"

    const-string v2, "com.android.launcher"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Landroid/content/res/OplusAccessibleFile;->PKG_FOR_WHITE:Ljava/util/HashSet;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/content/res/IResourcesImplExt;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "baseResources"    # Landroid/content/res/IResourcesImplExt;

    .line 64
    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/content/res/OplusBaseFile;-><init>(Ljava/lang/String;Landroid/content/res/IResourcesImplExt;ZZZ)V

    .line 65
    return-void
.end method

.method protected static blacklist getAssetFile(Ljava/lang/String;Landroid/content/res/IResourcesImplExt;)Landroid/content/res/OplusAccessibleFile;
    .locals 6
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "baseResources"    # Landroid/content/res/IResourcesImplExt;

    .line 82
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p1, :cond_4

    sget-object v0, Landroid/content/res/OplusAccessibleFile;->PKG_FOR_WHITE:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 85
    :cond_0
    invoke-static {p0}, Landroid/content/res/OplusAccessibleFile;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "name":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "accessible"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "key":Ljava/lang/String;
    sget-object v2, Landroid/content/res/OplusAccessibleFile;->sCacheFiles:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 88
    .local v2, "weakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/OplusBaseFile;>;"
    const/4 v3, 0x0

    .line 89
    .local v3, "assetsFile":Landroid/content/res/OplusAccessibleFile;
    if-eqz v2, :cond_1

    .line 90
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Landroid/content/res/OplusAccessibleFile;

    .line 92
    :cond_1
    if-eqz v3, :cond_2

    .line 93
    invoke-virtual {v3, p1}, Landroid/content/res/OplusAccessibleFile;->setResource(Landroid/content/res/IResourcesImplExt;)V

    .line 94
    return-object v3

    .line 96
    :cond_2
    new-instance v4, Landroid/content/res/OplusAccessibleFile;

    invoke-direct {v4, v0, p1}, Landroid/content/res/OplusAccessibleFile;-><init>(Ljava/lang/String;Landroid/content/res/IResourcesImplExt;)V

    move-object v3, v4

    .line 97
    invoke-virtual {v3, p0}, Landroid/content/res/OplusAccessibleFile;->isMaterialMetaEnable(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 98
    const/4 v3, 0x0

    goto :goto_0

    .line 100
    :cond_3
    sget-object v4, Landroid/content/res/OplusAccessibleFile;->sCacheFiles:Ljava/util/Map;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :goto_0
    return-object v3

    .line 83
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "weakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/OplusBaseFile;>;"
    .end local v3    # "assetsFile":Landroid/content/res/OplusAccessibleFile;
    :cond_4
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getAssetPathStream(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "path"    # Ljava/lang/String;

    .line 259
    if-nez p1, :cond_0

    .line 260
    const/4 v0, 0x0

    return-object v0

    .line 262
    :cond_0
    const/4 v0, 0x0

    .line 264
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 267
    goto :goto_0

    .line 265
    :catch_0
    move-exception v1

    .line 268
    :goto_0
    return-object v0
.end method

.method private blacklist loadAssetValues()V
    .locals 4

    .line 169
    invoke-virtual {p0}, Landroid/content/res/OplusAccessibleFile;->hasAssetValues()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Landroid/content/res/OplusAccessibleFile;->mBaseResources:Landroid/content/res/IResourcesImplExt;

    invoke-interface {v0}, Landroid/content/res/IResourcesImplExt;->getSystemConfiguration()Landroid/content/res/OplusBaseConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/OplusBaseConfiguration;->getOplusExtraConfiguration()Loplus/content/res/OplusExtraConfiguration;

    move-result-object v0

    .line 173
    .local v0, "extraConfig":Loplus/content/res/OplusExtraConfiguration;
    if-nez v0, :cond_1

    .line 174
    return-void

    .line 176
    :cond_1
    iget v1, v0, Loplus/content/res/OplusExtraConfiguration;->mUserId:I

    .line 177
    .local v1, "userId":I
    invoke-super {p0, v1}, Landroid/content/res/OplusBaseFile;->getThemeIndexValue(I)I

    move-result v2

    .line 178
    .local v2, "themeIndex":I
    if-gtz v2, :cond_2

    .line 179
    return-void

    .line 181
    :cond_2
    sget-object v3, Landroid/content/res/OplusAccessibleFile;->ACCESSIBLE_FILE_PATH:Ljava/lang/String;

    invoke-super {p0, v3}, Landroid/content/res/OplusBaseFile;->getFileInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 182
    .local v3, "inputStream":Ljava/io/InputStream;
    if-nez v3, :cond_3

    .line 183
    return-void

    .line 185
    :cond_3
    invoke-direct {p0, v2, v3}, Landroid/content/res/OplusAccessibleFile;->parserAccessibleStream(ILjava/io/InputStream;)V

    .line 186
    return-void
.end method

.method private blacklist parserAccessibleStream(ILjava/io/InputStream;)V
    .locals 7
    .param p1, "themeIndex"    # I
    .param p2, "in"    # Ljava/io/InputStream;

    .line 189
    const-string v0, "IOException happened when parserAccessibleStream close, msg = "

    const-string v1, "OplusBaseFile"

    const/4 v2, 0x0

    .line 190
    .local v2, "xmlpullparser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v3, 0x0

    .line 192
    .local v3, "bufferedinputstream":Ljava/io/BufferedInputStream;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v4

    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    move-object v2, v4

    .line 193
    new-instance v4, Ljava/io/BufferedInputStream;

    const/16 v5, 0x2000

    invoke-direct {v4, p2, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object v3, v4

    .line 194
    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 195
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 196
    const-string v4, "resources"

    invoke-direct {p0, v2, v4, p1}, Landroid/content/res/OplusAccessibleFile;->readRoot(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    nop

    .line 202
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 204
    if-eqz p2, :cond_0

    .line 205
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 209
    :cond_0
    :goto_0
    goto :goto_4

    .line 207
    :catch_0
    move-exception v4

    .line 208
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 200
    :catchall_0
    move-exception v4

    goto :goto_5

    .line 197
    :catch_1
    move-exception v4

    .line 198
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception happened when parserAccessibleStream, msg = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 201
    .end local v4    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_1

    .line 202
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_2

    .line 207
    :catch_2
    move-exception v4

    goto :goto_3

    .line 204
    :cond_1
    :goto_2
    if-eqz p2, :cond_0

    .line 205
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 208
    .local v4, "e":Ljava/io/IOException;
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    .line 211
    .end local v4    # "e":Ljava/io/IOException;
    :goto_4
    return-void

    .line 201
    :goto_5
    if-eqz v3, :cond_2

    .line 202
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_6

    .line 207
    :catch_3
    move-exception v5

    goto :goto_7

    .line 204
    :cond_2
    :goto_6
    if-eqz p2, :cond_3

    .line 205
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_8

    .line 208
    .local v5, "e":Ljava/io/IOException;
    :goto_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 209
    .end local v5    # "e":Ljava/io/IOException;
    :cond_3
    :goto_8
    nop

    .line 210
    :goto_9
    throw v4
.end method

.method private blacklist readChild(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)V
    .locals 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "child"    # Ljava/lang/String;
    .param p3, "themeIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 233
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, p2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 234
    const/4 v2, -0x1

    .line 235
    .local v2, "index":I
    const/4 v3, 0x0

    .line 236
    .local v3, "id":I
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_4

    .line 237
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    if-eq v4, v0, :cond_0

    .line 238
    goto :goto_0

    .line 240
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 241
    .local v4, "name":Ljava/lang/String;
    const-string v5, "child"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 243
    const-string v6, "id"

    invoke-interface {p1, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 244
    .local v6, "ids":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 245
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 247
    :cond_1
    if-ne p3, v3, :cond_2

    .line 248
    const-string v7, "color"

    const-string v8, "name"

    invoke-super {p0, p1, v5, v7, v8}, Landroid/content/res/OplusBaseFile;->readValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 250
    :cond_2
    invoke-super {p0, p1}, Landroid/content/res/OplusBaseFile;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 252
    .end local v6    # "ids":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 253
    :cond_3
    invoke-super {p0, p1}, Landroid/content/res/OplusBaseFile;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 255
    .end local v4    # "name":Ljava/lang/String;
    :goto_2
    goto :goto_0

    .line 256
    :cond_4
    return-void
.end method

.method private blacklist readRoot(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)V
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "root"    # Ljava/lang/String;
    .param p3, "themeIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, p2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 215
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    .line 216
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 217
    goto :goto_0

    .line 219
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, "name":Ljava/lang/String;
    const-string v2, "group"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 222
    invoke-direct {p0, p1, v2, p3}, Landroid/content/res/OplusAccessibleFile;->readChild(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)V

    goto :goto_1

    .line 224
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/res/OplusAccessibleFile;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 226
    .end local v1    # "name":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 227
    :cond_2
    return-void
.end method


# virtual methods
.method public blacklist clearCache(Ljava/util/zip/ZipFile;)V
    .locals 0
    .param p1, "zipFile"    # Ljava/util/zip/ZipFile;

    .line 74
    invoke-virtual {p0, p1}, Landroid/content/res/OplusAccessibleFile;->clean(Ljava/util/zip/ZipFile;)V

    .line 75
    return-void
.end method

.method protected blacklist getAssetInputStream(ILjava/lang/String;)Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;
    .locals 9
    .param p1, "index"    # I
    .param p2, "path"    # Ljava/lang/String;

    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, "themeFileInfo":Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, ".xml"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 110
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accessible"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v4, Landroid/content/res/OplusAccessibleFile;->sDensity:I

    .line 111
    invoke-static {v4}, Loplus/util/OplusDisplayUtils;->getDrawbleDensityFolder(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 112
    invoke-virtual {p2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 113
    iget-object v1, p0, Landroid/content/res/OplusAccessibleFile;->mResources:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v1}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Landroid/content/res/OplusAccessibleFile;->getAssetPathStream(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 114
    .local v1, "is":Ljava/io/InputStream;
    const-wide/16 v4, 0x0

    if-eqz v1, :cond_1

    .line 115
    new-instance v2, Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;

    invoke-direct {v2, v1, v4, v5}, Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;-><init>(Ljava/io/InputStream;J)V

    move-object v0, v2

    goto :goto_2

    .line 117
    :cond_1
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    sget-object v7, Landroid/content/res/OplusAccessibleFile;->sDensities:[I

    array-length v7, v7

    if-ge v6, v7, :cond_4

    .line 118
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/content/res/OplusAccessibleFile;->sDensities:[I

    aget v8, v8, v6

    .line 119
    invoke-static {v8}, Loplus/util/OplusDisplayUtils;->getDrawbleDensityFolder(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 120
    invoke-virtual {p2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 121
    .local v7, "temp":Ljava/lang/String;
    invoke-virtual {p2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 122
    goto :goto_1

    .line 124
    :cond_2
    iget-object v8, p0, Landroid/content/res/OplusAccessibleFile;->mResources:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v8}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-direct {p0, v8, v7}, Landroid/content/res/OplusAccessibleFile;->getAssetPathStream(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 125
    if-eqz v1, :cond_3

    .line 126
    new-instance v2, Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;

    invoke-direct {v2, v1, v4, v5}, Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;-><init>(Ljava/io/InputStream;J)V

    move-object v0, v2

    .line 127
    sget-object v2, Landroid/content/res/OplusAccessibleFile;->sDensities:[I

    aget v2, v2, v6

    const/4 v3, 0x1

    if-le v2, v3, :cond_4

    .line 128
    sget-object v2, Landroid/content/res/OplusAccessibleFile;->sDensities:[I

    aget v2, v2, v6

    iput v2, v0, Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;->mDensity:I

    goto :goto_2

    .line 117
    .end local v7    # "temp":Ljava/lang/String;
    :cond_3
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 134
    .end local v6    # "i":I
    :cond_4
    :goto_2
    return-object v0

    .line 108
    .end local v1    # "is":Ljava/io/InputStream;
    :cond_5
    :goto_3
    return-object v0
.end method

.method public blacklist hasAssetValues()Z
    .locals 2

    .line 162
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/content/res/OplusAccessibleFile;->ACCESSIBLE_FILE_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method protected blacklist hasDrawables()Z
    .locals 6

    .line 138
    iget-object v0, p0, Landroid/content/res/OplusAccessibleFile;->mResources:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 139
    .local v0, "assets":Landroid/content/res/AssetManager;
    const/4 v1, 0x0

    .line 140
    .local v1, "hasValue":Z
    if-nez v0, :cond_0

    .line 141
    return v1

    .line 144
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    sget-object v3, Landroid/content/res/OplusAccessibleFile;->sDensities:[I

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 145
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "accessible"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/content/res/OplusAccessibleFile;->sDensities:[I

    aget v4, v4, v2

    .line 146
    invoke-static {v4}, Loplus/util/OplusDisplayUtils;->getDrawbleDensityFolder(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 147
    .local v3, "path":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 148
    .local v4, "drawables":[Ljava/lang/String;
    array-length v5, v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v5, :cond_1

    .line 149
    const/4 v1, 0x1

    .line 150
    goto :goto_1

    .line 144
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "drawables":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 157
    .end local v2    # "i":I
    :cond_2
    :goto_1
    goto :goto_2

    .line 153
    :catch_0
    move-exception v2

    .line 154
    .local v2, "e":Ljava/io/IOException;
    sget-boolean v3, Landroid/content/res/OplusAccessibleFile;->DEBUG_THEME:Z

    if-eqz v3, :cond_3

    .line 155
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasAssetDrawables: asset list exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OplusBaseFile"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .end local v2    # "e":Ljava/io/IOException;
    :cond_3
    :goto_2
    return v1
.end method

.method public blacklist initValue()Z
    .locals 1

    .line 68
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/res/OplusAccessibleFile;->clearCache(Ljava/util/zip/ZipFile;)V

    .line 69
    invoke-direct {p0}, Landroid/content/res/OplusAccessibleFile;->loadAssetValues()V

    .line 70
    const/4 v0, 0x1

    return v0
.end method
