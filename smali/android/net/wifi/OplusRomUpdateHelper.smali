.class public Landroid/net/wifi/OplusRomUpdateHelper;
.super Ljava/lang/Object;
.source "OplusRomUpdateHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/OplusRomUpdateHelper$UpdateInfo;
    }
.end annotation


# static fields
.field public static final whitelist BROADCAST_ACTION_ROM_UPDATE_CONFIG_SUCCES:Ljava/lang/String; = "oplus.intent.action.ROM_UPDATE_CONFIG_SUCCESS"

.field private static final blacklist COLUMN_NAME_1:Ljava/lang/String; = "version"

.field private static final blacklist COLUMN_NAME_2:Ljava/lang/String; = "xml"

.field private static final blacklist CONTENT_URI_WHITE_LIST:Landroid/net/Uri;

.field private static final blacklist DEBUG:Z

.field private static final blacklist OPLUS_COMPONENT_SAFE_PERMISSION:Ljava/lang/String; = "oplus.permission.OPLUS_COMPONENT_SAFE"

.field public static final whitelist ROM_UPDATE_CONFIG_LIST:Ljava/lang/String; = "ROM_UPDATE_CONFIG_LIST"

.field public static final whitelist TAG:Ljava/lang/String; = "OplusRomUpdateHelper"


# instance fields
.field public whitelist mContext:Landroid/content/Context;

.field private blacklist mDataFilePath:Ljava/lang/String;

.field private blacklist mFilterName:Ljava/lang/String;

.field private blacklist mSystemFilePath:Ljava/lang/String;

.field private blacklist mUpdateInfo1:Landroid/net/wifi/OplusRomUpdateHelper$UpdateInfo;

.field private blacklist mUpdateInfo2:Landroid/net/wifi/OplusRomUpdateHelper$UpdateInfo;

.field private blacklist which2use:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFilterName(Landroid/net/wifi/OplusRomUpdateHelper;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/OplusRomUpdateHelper;->mFilterName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDEBUG()Z
    .locals 1

    sget-boolean v0, Landroid/net/wifi/OplusRomUpdateHelper;->DEBUG:Z

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 55
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/net/wifi/OplusRomUpdateHelper;->DEBUG:Z

    .line 56
    const-string v0, "content://com.oplus.romupdate.provider.db/update_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/OplusRomUpdateHelper;->CONTENT_URI_WHITE_LIST:Landroid/net/Uri;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filterName"    # Ljava/lang/String;
    .param p3, "systemFile"    # Ljava/lang/String;
    .param p4, "dataFile"    # Ljava/lang/String;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/OplusRomUpdateHelper;->which2use:Z

    .line 66
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/OplusRomUpdateHelper;->mFilterName:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Landroid/net/wifi/OplusRomUpdateHelper;->mSystemFilePath:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Landroid/net/wifi/OplusRomUpdateHelper;->mDataFilePath:Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/OplusRomUpdateHelper;->mContext:Landroid/content/Context;

    .line 103
    iput-object p1, p0, Landroid/net/wifi/OplusRomUpdateHelper;->mContext:Landroid/content/Context;

    .line 104
    iput-object p2, p0, Landroid/net/wifi/OplusRomUpdateHelper;->mFilterName:Ljava/lang/String;

    .line 105
    iput-object p3, p0, Landroid/net/wifi/OplusRomUpdateHelper;->mSystemFilePath:Ljava/lang/String;

    .line 106
    iput-object p4, p0, Landroid/net/wifi/OplusRomUpdateHelper;->mDataFilePath:Ljava/lang/String;

    .line 107
    return-void
.end method

.method private blacklist getDataFromProvider()Ljava/lang/String;
    .locals 12

    .line 183
    const-string v0, "OplusRomUpdateHelper"

    const/4 v1, 0x0

    .line 184
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 185
    .local v2, "configVersion":I
    const/4 v3, 0x0

    .line 186
    .local v3, "returnStr":Ljava/lang/String;
    const-string v4, "version"

    const-string v5, "xml"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v8

    .line 188
    .local v8, "projection":[Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Landroid/net/wifi/OplusRomUpdateHelper;->mContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_1

    .line 202
    if-eqz v1, :cond_0

    .line 203
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 204
    const/4 v1, 0x0

    .line 188
    :cond_0
    return-object v3

    .line 189
    :cond_1
    :try_start_1
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/net/wifi/OplusRomUpdateHelper;->CONTENT_URI_WHITE_LIST:Landroid/net/Uri;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "filtername=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/OplusRomUpdateHelper;->mFilterName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    move-object v1, v6

    .line 191
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_2

    .line 192
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 193
    .local v4, "versioncolumnIndex":I
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 194
    .local v5, "xmlcolumnIndex":I
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 195
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v2, v6

    .line 196
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 197
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "White List updated, version = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    .end local v4    # "versioncolumnIndex":I
    .end local v5    # "xmlcolumnIndex":I
    :cond_2
    if-eqz v1, :cond_3

    .line 203
    goto :goto_0

    .line 202
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 199
    :catch_0
    move-exception v4

    .line 200
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "We can not get white list data from provider, because of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 202
    nop

    .end local v4    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_3

    .line 203
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 204
    const/4 v1, 0x0

    .line 207
    :cond_3
    return-object v3

    .line 202
    :goto_1
    if-eqz v1, :cond_4

    .line 203
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 204
    const/4 v1, 0x0

    .line 206
    :cond_4
    throw v0
.end method

.method private blacklist getVersion(Ljava/lang/String;)J
    .locals 12
    .param p1, "content"    # Ljava/lang/String;

    .line 242
    const-string v0, "Got execption parsing permissions."

    const-wide/16 v1, -0x1

    const-string v3, "OplusRomUpdateHelper"

    if-nez p1, :cond_0

    .line 243
    const-string v0, "\tcontent is null"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return-wide v1

    .line 246
    :cond_0
    const-string v4, ""

    .line 247
    .local v4, "mTagName":Ljava/lang/String;
    const-string v5, ""

    .line 248
    .local v5, "mText":Ljava/lang/String;
    const/4 v6, 0x0

    .line 249
    .local v6, "strReader":Ljava/io/StringReader;
    const-string v7, ""

    .line 251
    .local v7, "fileVersion":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 252
    .local v8, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v9, Ljava/io/StringReader;

    invoke-direct {v9, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    move-object v6, v9

    .line 253
    invoke-interface {v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 254
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v9

    .line 255
    .local v9, "eventType":I
    :goto_0
    const/4 v10, 0x1

    if-eq v9, v10, :cond_2

    .line 256
    packed-switch v9, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 260
    :pswitch_1
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    move-object v4, v10

    .line 261
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    move v9, v10

    .line 262
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v10

    move-object v5, v10

    .line 263
    const-string v10, "version"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 264
    move-object v7, v5

    .line 265
    if-eqz v7, :cond_1

    .line 266
    nop

    .line 267
    invoke-virtual {v6}, Ljava/io/StringReader;->close()V

    .line 269
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fileVersion = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v0, v0

    .line 284
    nop

    .line 285
    invoke-virtual {v6}, Ljava/io/StringReader;->close()V

    .line 270
    return-wide v0

    .line 258
    :pswitch_2
    nop

    .line 277
    :cond_1
    :goto_1
    :try_start_1
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v9, v10

    goto :goto_0

    .line 284
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v9    # "eventType":I
    :cond_2
    nop

    .line 285
    :goto_2
    invoke-virtual {v6}, Ljava/io/StringReader;->close()V

    goto :goto_3

    .line 284
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 281
    :catch_0
    move-exception v3

    .line 282
    .local v3, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {p0, v0, v3}, Landroid/net/wifi/OplusRomUpdateHelper;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 284
    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v6, :cond_3

    .line 285
    goto :goto_2

    .line 279
    :catch_1
    move-exception v3

    .line 280
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {p0, v0, v3}, Landroid/net/wifi/OplusRomUpdateHelper;->log(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 284
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz v6, :cond_3

    .line 285
    goto :goto_2

    .line 288
    :cond_3
    :goto_3
    return-wide v1

    .line 284
    :goto_4
    if-eqz v6, :cond_4

    .line 285
    invoke-virtual {v6}, Ljava/io/StringReader;->close()V

    .line 287
    :cond_4
    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private blacklist saveToFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;

    .line 167
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 168
    .local v0, "file":Ljava/io/File;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 169
    .local v1, "outStream":Ljava/io/FileOutputStream;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 170
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    const/4 v2, 0x1

    return v2

    .line 172
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "outStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 175
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist setFlip()V
    .locals 1

    .line 162
    iget-boolean v0, p0, Landroid/net/wifi/OplusRomUpdateHelper;->which2use:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/OplusRomUpdateHelper;->which2use:Z

    .line 163
    return-void
.end method

.method private blacklist updateToLowerVersion(Ljava/lang/String;)Z
    .locals 4
    .param p1, "newContent"    # Ljava/lang/String;

    .line 328
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/net/wifi/OplusRomUpdateHelper;->getUpdateInfo(Z)Landroid/net/wifi/OplusRomUpdateHelper$UpdateInfo;

    move-result-object v1

    .line 329
    .local v1, "updateInfo":Landroid/net/wifi/OplusRomUpdateHelper$UpdateInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/net/wifi/OplusRomUpdateHelper$UpdateInfo;->updateToLowerVersion(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 330
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateToLowerVersion true, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OplusRomUpdateHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    return v0

    .line 333
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public whitelist dump()V
    .locals 2

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "which2use = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/OplusRomUpdateHelper;->which2use:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/OplusRomUpdateHelper;->log(Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Landroid/net/wifi/OplusRomUpdateHelper;->mUpdateInfo1:Landroid/net/wifi/OplusRomUpdateHelper$UpdateInfo;

    invoke-virtual {v0}, Landroid/net/wifi/OplusRomUpdateHelper$UpdateInfo;->dump()V

    .line 351
    iget-object v0, p0, Landroid/net/wifi/OplusRomUpdateHelper;->mUpdateInfo2:Landroid/net/wifi/OplusRomUpdateHelper$UpdateInfo;

    invoke-virtual {v0}, Landroid/net/wifi/OplusRomUpdateHelper$UpdateInfo;->dump()V

    .line 352
    return-void
.end method

.method public whitelist getFilterName()Ljava/lang/String;
    .locals 1

    .line 179
    iget-object v0, p0, Landroid/net/wifi/OplusRomUpdateHelper;->mFilterName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getUpdateFromProvider()V
    .locals 7

    .line 298
    :try_start_0
    invoke-direct {p0}, Landroid/net/wifi/OplusRomUpdateHelper;->getDataFromProvider()Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, "tmp":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/net/wifi/OplusRomUpdateHelper;->mDataFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 302
    .local v1, "dataFile":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Landroid/net/wifi/OplusRomUpdateHelper;->mSystemFilePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 303
    .local v2, "systemFile":Ljava/io/File;
    const-wide/16 v3, -0x1

    .line 305
    .local v3, "tmpVersion":J
    if-nez v0, :cond_0

    return-void

    .line 306
    :cond_0
    invoke-direct {p0, v0}, Landroid/net/wifi/OplusRomUpdateHelper;->updateToLowerVersion(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 307
    return-void

    .line 311
    :cond_1
    invoke-direct {p0, v0}, Landroid/net/wifi/OplusRomUpdateHelper;->getVersion(Ljava/lang/String;)J

    move-result-wide v5

    move-wide v3, v5

    .line 312
    invoke-virtual {p0, v1}, Landroid/net/wifi/OplusRomUpdateHelper;->readFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/net/wifi/OplusRomUpdateHelper;->getVersion(Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v5, v3, v5

    if-lez v5, :cond_4

    .line 313
    invoke-virtual {p0, v2}, Landroid/net/wifi/OplusRomUpdateHelper;->readFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/net/wifi/OplusRomUpdateHelper;->getVersion(Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v5, v3, v5

    if-gtz v5, :cond_2

    goto :goto_0

    .line 317
    :cond_2
    iget-object v5, p0, Landroid/net/wifi/OplusRomUpdateHelper;->mDataFilePath:Ljava/lang/String;

    invoke-direct {p0, v0, v5}, Landroid/net/wifi/OplusRomUpdateHelper;->saveToFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 318
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Landroid/net/wifi/OplusRomUpdateHelper;->getUpdateInfo(Z)Landroid/net/wifi/OplusRomUpdateHelper$UpdateInfo;

    move-result-object v6

    if-nez v6, :cond_3

    return-void

    .line 319
    :cond_3
    invoke-virtual {p0, v5}, Landroid/net/wifi/OplusRomUpdateHelper;->getUpdateInfo(Z)Landroid/net/wifi/OplusRomUpdateHelper$UpdateInfo;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/net/wifi/OplusRomUpdateHelper$UpdateInfo;->parseContentFromXML(Ljava/lang/String;)V

    .line 320
    invoke-direct {p0}, Landroid/net/wifi/OplusRomUpdateHelper;->setFlip()V

    .line 321
    invoke-virtual {p0, v5}, Landroid/net/wifi/OplusRomUpdateHelper;->getUpdateInfo(Z)Landroid/net/wifi/OplusRomUpdateHelper$UpdateInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/OplusRomUpdateHelper$UpdateInfo;->clear()V

    .line 324
    .end local v0    # "tmp":Ljava/lang/String;
    .end local v1    # "dataFile":Ljava/io/File;
    .end local v2    # "systemFile":Ljava/io/File;
    .end local v3    # "tmpVersion":J
    goto :goto_1

    .line 314
    .restart local v0    # "tmp":Ljava/lang/String;
    .restart local v1    # "dataFile":Ljava/io/File;
    .restart local v2    # "systemFile":Ljava/io/File;
    .restart local v3    # "tmpVersion":J
    :cond_4
    :goto_0
    const-string v5, "OplusRomUpdateHelper"

    const-string v6, "getUpdateFromProvider version is older than current file verison"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    return-void

    .line 322
    .end local v0    # "tmp":Ljava/lang/String;
    .end local v1    # "dataFile":Ljava/io/File;
    .end local v2    # "systemFile":Ljava/io/File;
    .end local v3    # "tmpVersion":J
    :catch_0
    move-exception v0

    .line 323
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 325
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method protected whitelist getUpdateInfo(Z)Landroid/net/wifi/OplusRomUpdateHelper$UpdateInfo;
    .locals 1
    .param p1, "b"    # Z

    .line 155
    if-eqz p1, :cond_1

    .line 156
    iget-boolean v0, p0, Landroid/net/wifi/OplusRomUpdateHelper;->which2use:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/OplusRomUpdateHelper;->mUpdateInfo1:Landroid/net/wifi/OplusRomUpdateHelper$UpdateInfo;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/OplusRomUpdateHelper;->mUpdateInfo2:Landroid/net/wifi/OplusRomUpdateHelper$UpdateInfo;

    :goto_0
    return-object v0

    .line 158
    :cond_1
    iget-boolean v0, p0, Landroid/net/wifi/OplusRomUpdateHelper;->which2use:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/net/wifi/OplusRomUpdateHelper;->mUpdateInfo2:Landroid/net/wifi/OplusRomUpdateHelper$UpdateInfo;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/net/wifi/OplusRomUpdateHelper;->mUpdateInfo1:Landroid/net/wifi/OplusRomUpdateHelper$UpdateInfo;

    :goto_1
    return-object v0
.end method

.method public whitelist init()V
    .locals 10

    .line 110
    iget-object v0, p0, Landroid/net/wifi/OplusRomUpdateHelper;->mDataFilePath:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/net/wifi/OplusRomUpdateHelper;->mSystemFilePath:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_1

    .line 111
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/net/wifi/OplusRomUpdateHelper;->mDataFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    .local v0, "file":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/net/wifi/OplusRomUpdateHelper;->mDataFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    .local v1, "dataFile":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Landroid/net/wifi/OplusRomUpdateHelper;->mSystemFilePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 116
    .local v2, "systemFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    const-string v4, "OplusRomUpdateHelper"

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 117
    const-string v3, "Fail to open data file and system file."

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-void

    .line 121
    :cond_1
    invoke-virtual {p0, v1}, Landroid/net/wifi/OplusRomUpdateHelper;->readFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/wifi/OplusRomUpdateHelper;->getVersion(Ljava/lang/String;)J

    move-result-wide v5

    .line 122
    .local v5, "dataVersion":J
    invoke-virtual {p0, v2}, Landroid/net/wifi/OplusRomUpdateHelper;->readFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/wifi/OplusRomUpdateHelper;->getVersion(Ljava/lang/String;)J

    move-result-wide v7

    .line 123
    .local v7, "systemVersion":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dataVersion="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, ", systemVersion="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    cmp-long v3, v5, v7

    if-lez v3, :cond_2

    move-object v3, v1

    goto :goto_0

    :cond_2
    move-object v3, v2

    :goto_0
    move-object v0, v3

    .line 127
    invoke-virtual {p0, v0}, Landroid/net/wifi/OplusRomUpdateHelper;->readFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/net/wifi/OplusRomUpdateHelper;->parseContentFromXML(Ljava/lang/String;)V

    .line 128
    return-void

    .line 110
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "dataFile":Ljava/io/File;
    .end local v2    # "systemFile":Ljava/io/File;
    .end local v5    # "dataVersion":J
    .end local v7    # "systemVersion":J
    :cond_3
    :goto_1
    return-void
.end method

.method public whitelist initUpdateBroadcastReceiver()V
    .locals 5

    .line 136
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 137
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "oplus.intent.action.ROM_UPDATE_CONFIG_SUCCESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Landroid/net/wifi/OplusRomUpdateHelper;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/net/wifi/OplusRomUpdateHelper$1;

    invoke-direct {v2, p0}, Landroid/net/wifi/OplusRomUpdateHelper$1;-><init>(Landroid/net/wifi/OplusRomUpdateHelper;)V

    const-string v3, "oplus.permission.OPLUS_COMPONENT_SAFE"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 152
    return-void
.end method

.method protected whitelist insertValueInList(ILjava/lang/String;)Z
    .locals 4
    .param p1, "type"    # I
    .param p2, "verifyStr"    # Ljava/lang/String;

    .line 338
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/net/wifi/OplusRomUpdateHelper;->getUpdateInfo(Z)Landroid/net/wifi/OplusRomUpdateHelper$UpdateInfo;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/net/wifi/OplusRomUpdateHelper;->getUpdateInfo(Z)Landroid/net/wifi/OplusRomUpdateHelper$UpdateInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/wifi/OplusRomUpdateHelper$UpdateInfo;->clone(Landroid/net/wifi/OplusRomUpdateHelper$UpdateInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 339
    invoke-virtual {p0, v0}, Landroid/net/wifi/OplusRomUpdateHelper;->getUpdateInfo(Z)Landroid/net/wifi/OplusRomUpdateHelper$UpdateInfo;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/net/wifi/OplusRomUpdateHelper$UpdateInfo;->insert(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 340
    invoke-direct {p0}, Landroid/net/wifi/OplusRomUpdateHelper;->setFlip()V

    .line 341
    invoke-virtual {p0, v0}, Landroid/net/wifi/OplusRomUpdateHelper;->getUpdateInfo(Z)Landroid/net/wifi/OplusRomUpdateHelper$UpdateInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/OplusRomUpdateHelper$UpdateInfo;->clear()V

    .line 342
    return v2

    .line 344
    :cond_0
    const-string v1, "Failed to insert!"

    invoke-virtual {p0, v1}, Landroid/net/wifi/OplusRomUpdateHelper;->log(Ljava/lang/String;)V

    .line 345
    return v0
.end method

.method public whitelist log(Ljava/lang/String;)V
    .locals 1
    .param p1, "log"    # Ljava/lang/String;

    .line 355
    sget-boolean v0, Landroid/net/wifi/OplusRomUpdateHelper;->DEBUG:Z

    if-nez v0, :cond_0

    return-void

    .line 356
    :cond_0
    const-string v0, "OplusRomUpdateHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    return-void
.end method

.method public whitelist log(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "log"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 360
    sget-boolean v0, Landroid/net/wifi/OplusRomUpdateHelper;->DEBUG:Z

    if-nez v0, :cond_0

    return-void

    .line 361
    :cond_0
    const-string v0, "OplusRomUpdateHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    return-void
.end method

.method public whitelist parseContentFromXML(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .line 292
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/net/wifi/OplusRomUpdateHelper;->getUpdateInfo(Z)Landroid/net/wifi/OplusRomUpdateHelper$UpdateInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 293
    invoke-virtual {p0, v0}, Landroid/net/wifi/OplusRomUpdateHelper;->getUpdateInfo(Z)Landroid/net/wifi/OplusRomUpdateHelper$UpdateInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/wifi/OplusRomUpdateHelper$UpdateInfo;->parseContentFromXML(Ljava/lang/String;)V

    .line 294
    :cond_0
    return-void
.end method

.method public whitelist readFromFile(Ljava/io/File;)Ljava/lang/String;
    .locals 6
    .param p1, "path"    # Ljava/io/File;

    .line 211
    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    .line 214
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 215
    :cond_1
    const/4 v1, 0x0

    .line 217
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v2

    .line 218
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 219
    .local v2, "in":Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 220
    .local v3, "buffer":Ljava/lang/StringBuffer;
    nop

    .line 221
    .local v0, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    if-eqz v4, :cond_2

    .line 222
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 224
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 234
    goto :goto_1

    .line 232
    :catch_0
    move-exception v5

    .line 233
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 224
    .end local v5    # "e":Ljava/io/IOException;
    :goto_1
    return-object v4

    .line 230
    .end local v0    # "line":Ljava/lang/String;
    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v3    # "buffer":Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 227
    :catch_1
    move-exception v0

    .line 228
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 231
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_3

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 232
    :catch_2
    move-exception v0

    .line 233
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 235
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 234
    :cond_3
    :goto_2
    goto :goto_3

    .line 225
    :catch_3
    move-exception v0

    .line 226
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 231
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 236
    :goto_3
    const/4 v0, 0x0

    return-object v0

    .line 231
    :goto_4
    if-eqz v1, :cond_4

    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_5

    .line 232
    :catch_4
    move-exception v2

    .line 233
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 234
    .end local v2    # "e":Ljava/io/IOException;
    :cond_4
    :goto_5
    nop

    .line 235
    :goto_6
    throw v0
.end method

.method protected whitelist setUpdateInfo(Landroid/net/wifi/OplusRomUpdateHelper$UpdateInfo;Landroid/net/wifi/OplusRomUpdateHelper$UpdateInfo;)V
    .locals 0
    .param p1, "updateInfo1"    # Landroid/net/wifi/OplusRomUpdateHelper$UpdateInfo;
    .param p2, "updateInfo2"    # Landroid/net/wifi/OplusRomUpdateHelper$UpdateInfo;

    .line 131
    iput-object p1, p0, Landroid/net/wifi/OplusRomUpdateHelper;->mUpdateInfo1:Landroid/net/wifi/OplusRomUpdateHelper$UpdateInfo;

    .line 132
    iput-object p2, p0, Landroid/net/wifi/OplusRomUpdateHelper;->mUpdateInfo2:Landroid/net/wifi/OplusRomUpdateHelper$UpdateInfo;

    .line 133
    return-void
.end method
