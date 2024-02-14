.class public Landroid/content/res/OplusMaterialFile;
.super Landroid/content/res/OplusBaseFile;
.source "OplusMaterialFile.java"


# static fields
.field protected static final blacklist BUILDER_LEN:I = 0x40

.field protected static final blacklist CUSTOM_SINGLE_NIGHT_XML:Ljava/lang/String; = "ux_custom_color_night.xml"

.field protected static final blacklist CUSTOM_SINGLE_NORMAL_XML:Ljava/lang/String; = "ux_custom_color.xml"

.field protected static final blacklist MATERIAL_ONLINE_NIGHT_XML:Ljava/lang/String; = "coui_theme_color_night_online.xml"

.field protected static final blacklist MATERIAL_ONLINE_NORMAL_XML:Ljava/lang/String; = "coui_theme_color_online.xml"

.field protected static final blacklist MATERIAL_WALLPAPER_NIGHT_XML:Ljava/lang/String; = "coui_theme_color_wallpaper_night.xml"

.field protected static final blacklist MATERIAL_WALLPAPER_XML:Ljava/lang/String; = "coui_theme_color_wallpaper.xml"

.field protected static final blacklist OPLUS_CUSTOM_FLAG:I = 0x20000

.field protected static final blacklist OPLUS_MATERIAL_COLOR_GROUP:I = 0xffff

.field protected static final blacklist OPLUS_MATERIAL_XML_PATH:Ljava/lang/String; = "data/oplus/uxres/uxcolor/"

.field protected static final blacklist OPLUS_ONLINE_FLAG:I = 0x100000

.field protected static final blacklist OPLUS_WALLPAPER_FLAG:I = 0x40000


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Landroid/content/res/IResourcesImplExt;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "baseResources"    # Landroid/content/res/IResourcesImplExt;

    .line 64
    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/content/res/OplusBaseFile;-><init>(Ljava/lang/String;Landroid/content/res/IResourcesImplExt;ZZZ)V

    .line 65
    return-void
.end method

.method protected static blacklist getMaterialFile(Ljava/lang/String;Landroid/content/res/IResourcesImplExt;)Landroid/content/res/OplusMaterialFile;
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "baseResources"    # Landroid/content/res/IResourcesImplExt;

    .line 71
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 74
    :cond_0
    sget-object v0, Landroid/content/res/OplusMaterialFile;->sCacheFiles:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 75
    .local v0, "weakReference":Ljava/lang/ref/WeakReference;
    const/4 v1, 0x0

    .line 76
    .local v1, "materialFile":Landroid/content/res/OplusMaterialFile;
    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/content/res/OplusMaterialFile;

    .line 79
    :cond_1
    if-eqz v1, :cond_2

    .line 80
    invoke-virtual {v1, p1}, Landroid/content/res/OplusMaterialFile;->setResource(Landroid/content/res/IResourcesImplExt;)V

    .line 81
    return-object v1

    .line 83
    :cond_2
    new-instance v2, Landroid/content/res/OplusMaterialFile;

    invoke-direct {v2, p0, p1}, Landroid/content/res/OplusMaterialFile;-><init>(Ljava/lang/String;Landroid/content/res/IResourcesImplExt;)V

    move-object v1, v2

    .line 84
    invoke-virtual {v1, p0}, Landroid/content/res/OplusMaterialFile;->isMaterialMetaEnable(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 85
    const/4 v1, 0x0

    goto :goto_0

    .line 87
    :cond_3
    sget-object v2, Landroid/content/res/OplusMaterialFile;->sCacheFiles:Ljava/util/Map;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :goto_0
    return-object v1

    .line 72
    .end local v0    # "weakReference":Ljava/lang/ref/WeakReference;
    .end local v1    # "materialFile":Landroid/content/res/OplusMaterialFile;
    :cond_4
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist mergeCustomValues(ILorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "xmlpullparser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 198
    const-string v0, "OplusBaseFile"

    :try_start_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 199
    const-string v1, "resources"

    const-string v2, "color"

    const-string v3, "name"

    invoke-super {p0, p2, v1, v2, v3}, Landroid/content/res/OplusBaseFile;->readValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 202
    :catch_0
    move-exception v1

    .line 203
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mergeCustomValues IOException, msg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 200
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 201
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mergeCustomValues XmlPullParserException, msg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    nop

    .line 205
    :goto_1
    return-void
.end method

.method private blacklist mergeOnlineValues(IILorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .param p1, "filter"    # I
    .param p2, "themeIndex"    # I
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 209
    :try_start_0
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 210
    const-string v0, "resources"

    invoke-direct {p0, p3, v0, p1, p2}, Landroid/content/res/OplusMaterialFile;->readRoot(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    goto :goto_0

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mergeOnlineValues exception, msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusBaseFile"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private blacklist parserMaterialStream(IILjava/io/InputStream;)V
    .locals 7
    .param p1, "filter"    # I
    .param p2, "themeIndex"    # I
    .param p3, "in"    # Ljava/io/InputStream;

    .line 169
    const-string v0, "IOException happened when parserMaterialStream, msg = "

    const-string v1, "OplusBaseFile"

    const/4 v2, 0x0

    .line 170
    .local v2, "xmlpullparser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v3, 0x0

    .line 172
    .local v3, "bufferedinputstream":Ljava/io/BufferedInputStream;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v4

    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    move-object v2, v4

    .line 173
    new-instance v4, Ljava/io/BufferedInputStream;

    const/16 v5, 0x2000

    invoke-direct {v4, p3, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object v3, v4

    .line 174
    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 175
    if-gez p1, :cond_0

    .line 176
    invoke-direct {p0, p1, v2}, Landroid/content/res/OplusMaterialFile;->mergeCustomValues(ILorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 178
    :cond_0
    invoke-direct {p0, p1, p2, v2}, Landroid/content/res/OplusMaterialFile;->mergeOnlineValues(IILorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    :goto_0
    nop

    .line 185
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 187
    if-eqz p3, :cond_1

    .line 188
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 192
    :cond_1
    :goto_1
    goto :goto_5

    .line 190
    :catch_0
    move-exception v4

    .line 191
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_5

    .line 183
    :catchall_0
    move-exception v4

    goto :goto_6

    .line 180
    :catch_1
    move-exception v4

    .line 181
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 184
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz v3, :cond_2

    .line 185
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_3

    .line 190
    :catch_2
    move-exception v4

    goto :goto_4

    .line 187
    :cond_2
    :goto_3
    if-eqz p3, :cond_1

    .line 188
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 191
    .local v4, "e":Ljava/io/IOException;
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    .line 194
    .end local v4    # "e":Ljava/io/IOException;
    :goto_5
    return-void

    .line 184
    :goto_6
    if-eqz v3, :cond_3

    .line 185
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_7

    .line 190
    :catch_3
    move-exception v5

    goto :goto_8

    .line 187
    :cond_3
    :goto_7
    if-eqz p3, :cond_4

    .line 188
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_9

    .line 191
    .local v5, "e":Ljava/io/IOException;
    :goto_8
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

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 192
    .end local v5    # "e":Ljava/io/IOException;
    :cond_4
    :goto_9
    nop

    .line 193
    :goto_a
    throw v4
.end method

.method private blacklist readChild(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)V
    .locals 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "child"    # Ljava/lang/String;
    .param p3, "filter"    # I
    .param p4, "themeIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 236
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, p2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 237
    const/4 v2, -0x1

    .line 238
    .local v2, "index":I
    const/4 v3, 0x0

    .line 239
    .local v3, "id":I
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_7

    .line 240
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    if-eq v4, v0, :cond_0

    .line 241
    goto :goto_0

    .line 243
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 244
    .local v4, "name":Ljava/lang/String;
    const-string v5, "index"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 245
    invoke-direct {p0, p1}, Landroid/content/res/OplusMaterialFile;->readIndex(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v2

    goto :goto_3

    .line 246
    :cond_1
    const-string v5, "child"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    if-ne v2, p3, :cond_6

    .line 248
    const-string v6, "id"

    invoke-interface {p1, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 249
    .local v6, "ids":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 250
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 252
    :cond_2
    const-string v7, "name"

    const-string v8, "color"

    if-eqz p4, :cond_5

    if-nez v3, :cond_3

    goto :goto_1

    .line 254
    :cond_3
    if-ne p4, v3, :cond_4

    .line 255
    invoke-super {p0, p1, v5, v8, v7}, Landroid/content/res/OplusBaseFile;->readValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 257
    :cond_4
    invoke-super {p0, p1}, Landroid/content/res/OplusBaseFile;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    .line 253
    :cond_5
    :goto_1
    invoke-super {p0, p1, v5, v8, v7}, Landroid/content/res/OplusBaseFile;->readValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    .end local v6    # "ids":Ljava/lang/String;
    :goto_2
    goto :goto_3

    .line 260
    :cond_6
    invoke-super {p0, p1}, Landroid/content/res/OplusBaseFile;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 262
    .end local v4    # "name":Ljava/lang/String;
    :goto_3
    goto :goto_0

    .line 263
    :cond_7
    return-void
.end method

.method private blacklist readIndex(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 3
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 268
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readIndex exception, msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusBaseFile"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    const/4 v0, -0x1

    return v0
.end method

.method private blacklist readRoot(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)V
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "root"    # Ljava/lang/String;
    .param p3, "filter"    # I
    .param p4, "themeIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, p2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 218
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    .line 219
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 220
    goto :goto_0

    .line 222
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "name":Ljava/lang/String;
    const-string v2, "group"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 225
    invoke-direct {p0, p1, v2, p3, p4}, Landroid/content/res/OplusMaterialFile;->readChild(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)V

    goto :goto_1

    .line 227
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/res/OplusMaterialFile;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 229
    .end local v1    # "name":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 230
    :cond_2
    return-void
.end method


# virtual methods
.method protected blacklist clears()V
    .locals 1

    .line 93
    iget-object v0, p0, Landroid/content/res/OplusMaterialFile;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 94
    return-void
.end method

.method protected blacklist loadMaterialColor()Z
    .locals 20

    .line 97
    move-object/from16 v1, p0

    const-string v0, "data/oplus/uxres/uxcolor/"

    const/4 v2, 0x0

    .line 99
    .local v2, "hasValues":Z
    const/4 v3, 0x0

    .line 100
    .local v3, "value":I
    :try_start_0
    iget-object v4, v1, Landroid/content/res/OplusMaterialFile;->mBaseResources:Landroid/content/res/IResourcesImplExt;

    invoke-static {v4}, Landroid/content/res/OplusMaterialFile;->isNightMode(Landroid/content/res/IResourcesImplExt;)Z

    move-result v4

    .line 101
    .local v4, "night":Z
    iget-object v5, v1, Landroid/content/res/OplusMaterialFile;->mBaseResources:Landroid/content/res/IResourcesImplExt;

    invoke-interface {v5}, Landroid/content/res/IResourcesImplExt;->getSystemConfiguration()Landroid/content/res/OplusBaseConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/OplusBaseConfiguration;->getOplusExtraConfiguration()Loplus/content/res/OplusExtraConfiguration;

    move-result-object v5

    .line 102
    .local v5, "extraConfig":Loplus/content/res/OplusExtraConfiguration;
    if-nez v5, :cond_0

    .line 103
    return v2

    .line 105
    :cond_0
    iget-wide v6, v5, Loplus/content/res/OplusExtraConfiguration;->mMaterialColor:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 106
    .local v6, "color":Ljava/lang/Long;
    iget v7, v5, Loplus/content/res/OplusExtraConfiguration;->mUserId:I

    .line 107
    .local v7, "userId":I
    const/4 v8, 0x0

    .line 108
    .local v8, "inputStream":Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 109
    .local v9, "mergeStream":Ljava/io/InputStream;
    const/4 v10, -0x1

    .line 110
    .local v10, "colorIndex":I
    const/4 v11, -0x1

    .line 112
    .local v11, "themeIndex":I
    new-instance v12, Ljava/lang/StringBuilder;

    const/16 v13, 0x40

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 113
    .local v12, "iBuilder":Ljava/lang/StringBuilder;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v13, v14

    .line 114
    .local v13, "mBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/32 v16, 0x20000

    and-long v14, v14, v16

    cmp-long v0, v14, v16

    if-nez v0, :cond_3

    .line 117
    const-string v0, "ux_custom_color.xml"

    if-lez v7, :cond_1

    .line 118
    :try_start_1
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    :goto_0
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {v1, v0}, Landroid/content/res/OplusBaseFile;->getFileInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v8, v0

    .line 123
    if-eqz v4, :cond_9

    .line 124
    const-string v0, "ux_custom_color_night.xml"

    if-lez v7, :cond_2

    .line 125
    :try_start_2
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 127
    :cond_2
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    :goto_1
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {v1, v0}, Landroid/content/res/OplusBaseFile;->getFileInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    move-object v9, v0

    goto/16 :goto_5

    .line 131
    :cond_3
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide/32 v16, 0x100000

    and-long v14, v14, v16

    cmp-long v0, v14, v16

    if-nez v0, :cond_5

    .line 132
    iget v0, v5, Loplus/content/res/OplusExtraConfiguration;->mUserId:I

    invoke-super {v1, v0}, Landroid/content/res/OplusBaseFile;->getThemeIndexValue(I)I

    move-result v0

    move v11, v0

    .line 133
    iget-wide v14, v5, Loplus/content/res/OplusExtraConfiguration;->mMaterialColor:J

    const-wide/32 v16, 0xffff

    and-long v14, v14, v16

    long-to-int v10, v14

    .line 134
    const-string v0, "coui_theme_color_online.xml"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {v1, v0}, Landroid/content/res/OplusBaseFile;->getFileInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    move-object v8, v0

    .line 135
    if-eqz v4, :cond_4

    const-string v0, "coui_theme_color_night_online.xml"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {v1, v0}, Landroid/content/res/OplusBaseFile;->getFileInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    move-object v9, v0

    goto :goto_5

    .line 136
    :cond_5
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v14
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-wide/32 v18, 0x40000

    and-long v14, v14, v18

    cmp-long v0, v14, v18

    if-nez v0, :cond_9

    .line 137
    const-string v0, "coui_theme_color_wallpaper.xml"

    if-lez v7, :cond_6

    .line 138
    :try_start_3
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 140
    :cond_6
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    :goto_3
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {v1, v0}, Landroid/content/res/OplusBaseFile;->getFileInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v8, v0

    .line 143
    if-eqz v4, :cond_8

    .line 144
    const-string v0, "coui_theme_color_wallpaper_night.xml"

    if-lez v7, :cond_7

    .line 145
    :try_start_4
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 147
    :cond_7
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    :goto_4
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {v1, v0}, Landroid/content/res/OplusBaseFile;->getFileInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    move-object v9, v0

    .line 151
    :cond_8
    iget v0, v5, Loplus/content/res/OplusExtraConfiguration;->mUserId:I

    invoke-super {v1, v0}, Landroid/content/res/OplusBaseFile;->getThemeIndexValue(I)I

    move-result v0

    move v11, v0

    .line 152
    iget-wide v14, v5, Loplus/content/res/OplusExtraConfiguration;->mMaterialColor:J

    const-wide/32 v16, 0xffff

    and-long v14, v14, v16

    long-to-int v10, v14

    .line 154
    :cond_9
    :goto_5
    if-eqz v8, :cond_a

    .line 155
    const/4 v2, 0x1

    .line 156
    invoke-direct {v1, v10, v11, v8}, Landroid/content/res/OplusMaterialFile;->parserMaterialStream(IILjava/io/InputStream;)V

    .line 158
    :cond_a
    if-eqz v9, :cond_b

    .line 159
    const/4 v2, 0x1

    .line 160
    invoke-direct {v1, v10, v11, v9}, Landroid/content/res/OplusMaterialFile;->parserMaterialStream(IILjava/io/InputStream;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 164
    .end local v3    # "value":I
    .end local v4    # "night":Z
    .end local v5    # "extraConfig":Loplus/content/res/OplusExtraConfiguration;
    .end local v6    # "color":Ljava/lang/Long;
    .end local v7    # "userId":I
    .end local v8    # "inputStream":Ljava/io/InputStream;
    .end local v9    # "mergeStream":Ljava/io/InputStream;
    .end local v10    # "colorIndex":I
    .end local v11    # "themeIndex":I
    .end local v12    # "iBuilder":Ljava/lang/StringBuilder;
    .end local v13    # "mBuilder":Ljava/lang/StringBuilder;
    :cond_b
    goto :goto_6

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadMaterialColor e: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OplusBaseFile"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6
    return v2
.end method
