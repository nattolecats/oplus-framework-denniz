.class public Lcom/oplus/OplusRomUpdateHelper;
.super Ljava/lang/Object;
.source "OplusRomUpdateHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/OplusRomUpdateHelper$UpdateInfo;
    }
.end annotation


# static fields
.field public static final blacklist BROADCAST_ACTION_ROM_UPDATE_CONFIG_SUCCES:Ljava/lang/String; = "oplus.intent.action.ROM_UPDATE_CONFIG_SUCCESS"

.field private static final blacklist COLUMN_NAME_1:Ljava/lang/String; = "version"

.field private static final blacklist COLUMN_NAME_2:Ljava/lang/String; = "xml"

.field private static final blacklist CONTENT_URI_WHITE_LIST:Landroid/net/Uri;

.field private static final blacklist DEBUG:Z

.field private static final blacklist OPLUS_COMPONENT_SAFE_PERMISSION:Ljava/lang/String; = "oplus.permission.OPLUS_COMPONENT_SAFE"

.field public static final blacklist ROM_UPDATE_CONFIG_LIST:Ljava/lang/String; = "ROM_UPDATE_CONFIG_LIST"

.field public static final blacklist TAG:Ljava/lang/String; = "OplusRomUpdateHelper"


# instance fields
.field public blacklist mContext:Landroid/content/Context;

.field private blacklist mDataFilePath:Ljava/lang/String;

.field private blacklist mFilterName:Ljava/lang/String;

.field private blacklist mSystemFilePath:Ljava/lang/String;

.field private blacklist mUpdateInfo1:Lcom/oplus/OplusRomUpdateHelper$UpdateInfo;

.field private blacklist mUpdateInfo2:Lcom/oplus/OplusRomUpdateHelper$UpdateInfo;

.field private blacklist which2use:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetDEBUG()Z
    .locals 1

    sget-boolean v0, Lcom/oplus/OplusRomUpdateHelper;->DEBUG:Z

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 43
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oplus/OplusRomUpdateHelper;->DEBUG:Z

    .line 44
    const-string v0, "content://com.oplus.romupdate.provider.db/update_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oplus/OplusRomUpdateHelper;->CONTENT_URI_WHITE_LIST:Landroid/net/Uri;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filterName"    # Ljava/lang/String;
    .param p3, "systemFile"    # Ljava/lang/String;
    .param p4, "dataFile"    # Ljava/lang/String;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/OplusRomUpdateHelper;->which2use:Z

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/OplusRomUpdateHelper;->mFilterName:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/oplus/OplusRomUpdateHelper;->mSystemFilePath:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/oplus/OplusRomUpdateHelper;->mDataFilePath:Ljava/lang/String;

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/OplusRomUpdateHelper;->mContext:Landroid/content/Context;

    .line 91
    iput-object p1, p0, Lcom/oplus/OplusRomUpdateHelper;->mContext:Landroid/content/Context;

    .line 92
    iput-object p2, p0, Lcom/oplus/OplusRomUpdateHelper;->mFilterName:Ljava/lang/String;

    .line 93
    iput-object p3, p0, Lcom/oplus/OplusRomUpdateHelper;->mSystemFilePath:Ljava/lang/String;

    .line 94
    iput-object p4, p0, Lcom/oplus/OplusRomUpdateHelper;->mDataFilePath:Ljava/lang/String;

    .line 95
    return-void
.end method

.method private blacklist getDataFromProvider()Ljava/lang/String;
    .locals 12

    .line 164
    const-string v0, "OplusRomUpdateHelper"

    const/4 v1, 0x0

    .line 165
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 166
    .local v2, "configVersion":I
    const/4 v3, 0x0

    .line 167
    .local v3, "returnStr":Ljava/lang/String;
    const-string v4, "version"

    const-string v5, "xml"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v8

    .line 169
    .local v8, "projection":[Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/oplus/OplusRomUpdateHelper;->mContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_1

    .line 183
    if-eqz v1, :cond_0

    .line 184
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 185
    const/4 v1, 0x0

    .line 169
    :cond_0
    return-object v3

    .line 170
    :cond_1
    :try_start_1
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/oplus/OplusRomUpdateHelper;->CONTENT_URI_WHITE_LIST:Landroid/net/Uri;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "filtername=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/oplus/OplusRomUpdateHelper;->mFilterName:Ljava/lang/String;

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

    .line 172
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_2

    .line 173
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 174
    .local v4, "versioncolumnIndex":I
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 175
    .local v5, "xmlcolumnIndex":I
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 176
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v2, v6

    .line 177
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 178
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

    .line 183
    .end local v4    # "versioncolumnIndex":I
    .end local v5    # "xmlcolumnIndex":I
    :cond_2
    if-eqz v1, :cond_3

    .line 184
    goto :goto_0

    .line 183
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 180
    :catch_0
    move-exception v4

    .line 181
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

    .line 183
    nop

    .end local v4    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_3

    .line 184
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 185
    const/4 v1, 0x0

    .line 188
    :cond_3
    return-object v3

    .line 183
    :goto_1
    if-eqz v1, :cond_4

    .line 184
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 185
    const/4 v1, 0x0

    .line 187
    :cond_4
    throw v0
.end method

.method private blacklist saveToFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;

    .line 144
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    .local v0, "file":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    .local v1, "parent":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 147
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 149
    :cond_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 150
    .local v2, "outStream":Ljava/io/FileOutputStream;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 151
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    const/4 v3, 0x1

    return v3

    .line 153
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "parent":Ljava/io/File;
    .end local v2    # "outStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 156
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist setFlip()V
    .locals 1

    .line 139
    iget-boolean v0, p0, Lcom/oplus/OplusRomUpdateHelper;->which2use:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/OplusRomUpdateHelper;->which2use:Z

    .line 140
    return-void
.end method

.method private blacklist updateToLowerVersion(Ljava/lang/String;)Z
    .locals 4
    .param p1, "newContent"    # Ljava/lang/String;

    .line 245
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oplus/OplusRomUpdateHelper;->getUpdateInfo(Z)Lcom/oplus/OplusRomUpdateHelper$UpdateInfo;

    move-result-object v1

    .line 246
    .local v1, "updateInfo":Lcom/oplus/OplusRomUpdateHelper$UpdateInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/oplus/OplusRomUpdateHelper$UpdateInfo;->updateToLowerVersion(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 247
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

    .line 248
    return v0

    .line 250
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist dump()V
    .locals 2

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "which2use = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oplus/OplusRomUpdateHelper;->which2use:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/OplusRomUpdateHelper;->log(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/oplus/OplusRomUpdateHelper;->mUpdateInfo1:Lcom/oplus/OplusRomUpdateHelper$UpdateInfo;

    invoke-virtual {v0}, Lcom/oplus/OplusRomUpdateHelper$UpdateInfo;->dump()V

    .line 268
    iget-object v0, p0, Lcom/oplus/OplusRomUpdateHelper;->mUpdateInfo2:Lcom/oplus/OplusRomUpdateHelper$UpdateInfo;

    invoke-virtual {v0}, Lcom/oplus/OplusRomUpdateHelper$UpdateInfo;->dump()V

    .line 269
    return-void
.end method

.method public blacklist getFilterName()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/oplus/OplusRomUpdateHelper;->mFilterName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUpdateFromProvider()V
    .locals 4

    .line 224
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/OplusRomUpdateHelper;->getDataFromProvider()Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "tmp":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 226
    sget-boolean v1, Lcom/oplus/OplusRomUpdateHelper;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 227
    const-string v1, "OplusRomUpdateHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " getUpdateFromProvider data is null "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/oplus/OplusRomUpdateHelper;->getFilterName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_0
    return-void

    .line 231
    :cond_1
    invoke-direct {p0, v0}, Lcom/oplus/OplusRomUpdateHelper;->updateToLowerVersion(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 232
    return-void

    .line 234
    :cond_2
    iget-object v1, p0, Lcom/oplus/OplusRomUpdateHelper;->mDataFilePath:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/oplus/OplusRomUpdateHelper;->saveToFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 235
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/oplus/OplusRomUpdateHelper;->getUpdateInfo(Z)Lcom/oplus/OplusRomUpdateHelper$UpdateInfo;

    move-result-object v2

    if-nez v2, :cond_3

    return-void

    .line 236
    :cond_3
    invoke-virtual {p0, v1}, Lcom/oplus/OplusRomUpdateHelper;->getUpdateInfo(Z)Lcom/oplus/OplusRomUpdateHelper$UpdateInfo;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/oplus/OplusRomUpdateHelper$UpdateInfo;->parseContentFromXML(Ljava/lang/String;)V

    .line 237
    invoke-direct {p0}, Lcom/oplus/OplusRomUpdateHelper;->setFlip()V

    .line 238
    invoke-virtual {p0, v1}, Lcom/oplus/OplusRomUpdateHelper;->getUpdateInfo(Z)Lcom/oplus/OplusRomUpdateHelper$UpdateInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/OplusRomUpdateHelper$UpdateInfo;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    .end local v0    # "tmp":Ljava/lang/String;
    goto :goto_0

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 242
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method protected blacklist getUpdateInfo(Z)Lcom/oplus/OplusRomUpdateHelper$UpdateInfo;
    .locals 1
    .param p1, "b"    # Z

    .line 132
    if-eqz p1, :cond_1

    .line 133
    iget-boolean v0, p0, Lcom/oplus/OplusRomUpdateHelper;->which2use:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/OplusRomUpdateHelper;->mUpdateInfo1:Lcom/oplus/OplusRomUpdateHelper$UpdateInfo;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oplus/OplusRomUpdateHelper;->mUpdateInfo2:Lcom/oplus/OplusRomUpdateHelper$UpdateInfo;

    :goto_0
    return-object v0

    .line 135
    :cond_1
    iget-boolean v0, p0, Lcom/oplus/OplusRomUpdateHelper;->which2use:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/OplusRomUpdateHelper;->mUpdateInfo2:Lcom/oplus/OplusRomUpdateHelper$UpdateInfo;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/oplus/OplusRomUpdateHelper;->mUpdateInfo1:Lcom/oplus/OplusRomUpdateHelper$UpdateInfo;

    :goto_1
    return-object v0
.end method

.method public blacklist init()V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/oplus/OplusRomUpdateHelper;->mDataFilePath:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/OplusRomUpdateHelper;->mSystemFilePath:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/oplus/OplusRomUpdateHelper;->mDataFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 101
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/oplus/OplusRomUpdateHelper;->mSystemFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 102
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 104
    :cond_1
    invoke-virtual {p0, v0}, Lcom/oplus/OplusRomUpdateHelper;->readFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oplus/OplusRomUpdateHelper;->parseContentFromXML(Ljava/lang/String;)V

    .line 105
    return-void

    .line 98
    .end local v0    # "file":Ljava/io/File;
    :cond_2
    :goto_0
    return-void
.end method

.method public blacklist initUpdateBroadcastReceiver()V
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/oplus/OplusRomUpdateHelper;->mFilterName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    return-void

    .line 116
    :cond_0
    invoke-static {}, Lcom/oplus/romupdate/RomUpdateObserver;->getInstance()Lcom/oplus/romupdate/RomUpdateObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/OplusRomUpdateHelper;->mFilterName:Ljava/lang/String;

    new-instance v2, Lcom/oplus/OplusRomUpdateHelper$1;

    invoke-direct {v2, p0}, Lcom/oplus/OplusRomUpdateHelper$1;-><init>(Lcom/oplus/OplusRomUpdateHelper;)V

    invoke-virtual {v0, v1, v2}, Lcom/oplus/romupdate/RomUpdateObserver;->register(Ljava/lang/String;Lcom/oplus/romupdate/RomUpdateObserver$OnReceiveListener;)V

    .line 129
    return-void
.end method

.method protected blacklist insertValueInList(ILjava/lang/String;)Z
    .locals 4
    .param p1, "type"    # I
    .param p2, "verifyStr"    # Ljava/lang/String;

    .line 255
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/OplusRomUpdateHelper;->getUpdateInfo(Z)Lcom/oplus/OplusRomUpdateHelper$UpdateInfo;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/oplus/OplusRomUpdateHelper;->getUpdateInfo(Z)Lcom/oplus/OplusRomUpdateHelper$UpdateInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/oplus/OplusRomUpdateHelper$UpdateInfo;->clone(Lcom/oplus/OplusRomUpdateHelper$UpdateInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    invoke-virtual {p0, v0}, Lcom/oplus/OplusRomUpdateHelper;->getUpdateInfo(Z)Lcom/oplus/OplusRomUpdateHelper$UpdateInfo;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/oplus/OplusRomUpdateHelper$UpdateInfo;->insert(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    invoke-direct {p0}, Lcom/oplus/OplusRomUpdateHelper;->setFlip()V

    .line 258
    invoke-virtual {p0, v0}, Lcom/oplus/OplusRomUpdateHelper;->getUpdateInfo(Z)Lcom/oplus/OplusRomUpdateHelper$UpdateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/OplusRomUpdateHelper$UpdateInfo;->clear()V

    .line 259
    return v2

    .line 261
    :cond_0
    const-string v1, "Failed to insert!"

    invoke-virtual {p0, v1}, Lcom/oplus/OplusRomUpdateHelper;->log(Ljava/lang/String;)V

    .line 262
    return v0
.end method

.method public blacklist log(Ljava/lang/String;)V
    .locals 1
    .param p1, "log"    # Ljava/lang/String;

    .line 272
    sget-boolean v0, Lcom/oplus/OplusRomUpdateHelper;->DEBUG:Z

    if-nez v0, :cond_0

    return-void

    .line 273
    :cond_0
    const-string v0, "OplusRomUpdateHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    return-void
.end method

.method public blacklist log(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "log"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 277
    sget-boolean v0, Lcom/oplus/OplusRomUpdateHelper;->DEBUG:Z

    if-nez v0, :cond_0

    return-void

    .line 278
    :cond_0
    const-string v0, "OplusRomUpdateHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    return-void
.end method

.method public blacklist parseContentFromXML(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .line 218
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oplus/OplusRomUpdateHelper;->getUpdateInfo(Z)Lcom/oplus/OplusRomUpdateHelper$UpdateInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 219
    invoke-virtual {p0, v0}, Lcom/oplus/OplusRomUpdateHelper;->getUpdateInfo(Z)Lcom/oplus/OplusRomUpdateHelper$UpdateInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/OplusRomUpdateHelper$UpdateInfo;->parseContentFromXML(Ljava/lang/String;)V

    .line 220
    :cond_0
    return-void
.end method

.method public blacklist readFromFile(Ljava/io/File;)Ljava/lang/String;
    .locals 6
    .param p1, "path"    # Ljava/io/File;

    .line 192
    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    .line 193
    :cond_0
    const/4 v1, 0x0

    .line 195
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v2

    .line 196
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 197
    .local v2, "in":Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 198
    .local v3, "buffer":Ljava/lang/StringBuffer;
    nop

    .line 199
    .local v0, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    if-eqz v4, :cond_1

    .line 200
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 202
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 212
    goto :goto_1

    .line 210
    :catch_0
    move-exception v5

    .line 211
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 202
    .end local v5    # "e":Ljava/io/IOException;
    :goto_1
    return-object v4

    .line 208
    .end local v0    # "line":Ljava/lang/String;
    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v3    # "buffer":Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 205
    :catch_1
    move-exception v0

    .line 206
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 209
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 210
    :catch_2
    move-exception v0

    .line 211
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 213
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 212
    :cond_2
    :goto_2
    goto :goto_3

    .line 203
    :catch_3
    move-exception v0

    .line 204
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 209
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 214
    :goto_3
    const/4 v0, 0x0

    return-object v0

    .line 209
    :goto_4
    if-eqz v1, :cond_3

    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_5

    .line 210
    :catch_4
    move-exception v2

    .line 211
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 212
    .end local v2    # "e":Ljava/io/IOException;
    :cond_3
    :goto_5
    nop

    .line 213
    :goto_6
    throw v0
.end method

.method protected blacklist setUpdateInfo(Lcom/oplus/OplusRomUpdateHelper$UpdateInfo;Lcom/oplus/OplusRomUpdateHelper$UpdateInfo;)V
    .locals 0
    .param p1, "updateInfo1"    # Lcom/oplus/OplusRomUpdateHelper$UpdateInfo;
    .param p2, "updateInfo2"    # Lcom/oplus/OplusRomUpdateHelper$UpdateInfo;

    .line 108
    iput-object p1, p0, Lcom/oplus/OplusRomUpdateHelper;->mUpdateInfo1:Lcom/oplus/OplusRomUpdateHelper$UpdateInfo;

    .line 109
    iput-object p2, p0, Lcom/oplus/OplusRomUpdateHelper;->mUpdateInfo2:Lcom/oplus/OplusRomUpdateHelper$UpdateInfo;

    .line 110
    return-void
.end method
