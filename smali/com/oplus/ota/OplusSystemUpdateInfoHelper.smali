.class public Lcom/oplus/ota/OplusSystemUpdateInfoHelper;
.super Ljava/lang/Object;
.source "OplusSystemUpdateInfoHelper.java"


# static fields
.field private static final blacklist COLUMN_NAME_1:Ljava/lang/String; = "version"

.field private static final blacklist COLUMN_NAME_2:Ljava/lang/String; = "xml"

.field private static final blacklist CONFIG_FILE_PATH:Ljava/lang/String; = "data/oplus/os/config/sys_update_info.xml"

.field private static final blacklist CONTENT_URI_WHITE_LIST:Landroid/net/Uri;

.field private static final blacklist FILTER_NAME:Ljava/lang/String; = "sys_update_info"

.field private static final blacklist FILTER_RECOVERY_ERROR_SUB_TAG_NAME:Ljava/lang/String; = "Msg"

.field private static final blacklist FILTER_RECOVERY_ERROR_TAG_NAME:Ljava/lang/String; = "RecoveryErrorMsg"

.field private static final blacklist NORMAL_RECOVERY_ERROR_MSG_1:Ljava/lang/String; = "ERROR: Open file"

.field private static final blacklist NORMAL_RECOVERY_ERROR_MSG_10:Ljava/lang/String; = "This package expects the value"

.field private static final blacklist NORMAL_RECOVERY_ERROR_MSG_11:Ljava/lang/String; = "Package expects build fingerprint of"

.field private static final blacklist NORMAL_RECOVERY_ERROR_MSG_12:Ljava/lang/String; = "Package expects build thumbprint of"

.field private static final blacklist NORMAL_RECOVERY_ERROR_MSG_13:Ljava/lang/String; = "Can\'t install this package"

.field private static final blacklist NORMAL_RECOVERY_ERROR_MSG_14:Ljava/lang/String; = "This package is for"

.field private static final blacklist NORMAL_RECOVERY_ERROR_MSG_15:Ljava/lang/String; = "Failed to tune partition"

.field private static final blacklist NORMAL_RECOVERY_ERROR_MSG_16:Ljava/lang/String; = "Failed to apply patch to"

.field private static final blacklist NORMAL_RECOVERY_ERROR_MSG_17:Ljava/lang/String; = "oplus_ota_verify failed, abort install"

.field private static final blacklist NORMAL_RECOVERY_ERROR_MSG_2:Ljava/lang/String; = "signature verification failed"

.field private static final blacklist NORMAL_RECOVERY_ERROR_MSG_3:Ljava/lang/String; = "has unexpected contents"

.field private static final blacklist NORMAL_RECOVERY_ERROR_MSG_4:Ljava/lang/String; = "Not enough free space on"

.field private static final blacklist NORMAL_RECOVERY_ERROR_MSG_5:Ljava/lang/String; = "decryptFile file fail, stop install"

.field private static final blacklist NORMAL_RECOVERY_ERROR_MSG_6:Ljava/lang/String; = "verify components_prop error"

.field private static final blacklist NORMAL_RECOVERY_ERROR_MSG_7:Ljava/lang/String; = "Failed to update"

.field private static final blacklist NORMAL_RECOVERY_ERROR_MSG_8:Ljava/lang/String; = "partition fails to recover"

.field private static final blacklist NORMAL_RECOVERY_ERROR_MSG_9:Ljava/lang/String; = "partition has unexpected non-zero contents after"

.field private static final blacklist OPLUS_COMPONENT_SAFE_PERMISSION:Ljava/lang/String; = "oplus.permission.OPLUS_COMPONENT_SAFE"

.field private static final blacklist OPLUS_UPDATE_SAFE_PERMISSION:Ljava/lang/String; = "com.oplus.permission.safe.UPDATE"

.field private static final blacklist OTA_UPDATE_FAILED:Ljava/lang/String; = "1"

.field private static final blacklist OTA_UPDATE_OK:Ljava/lang/String; = "0"

.field private static final blacklist RECOVER_UPDATE_FAILED:Ljava/lang/String; = "3"

.field private static final blacklist RECOVER_UPDATE_OK:Ljava/lang/String; = "2"

.field private static final blacklist SPLIT_TAG:Ljava/lang/String; = "#"

.field private static final blacklist TAG:Ljava/lang/String; = "OplusSystemUpdateInfoHelper"

.field private static blacklist isAlreadyCopyRecoveryLog:Z

.field private static volatile blacklist sHelper:Lcom/oplus/ota/OplusSystemUpdateInfoHelper;


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mInfo:Lcom/oplus/ota/OplusSystemUpdateInfo;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mdealConfigFromProvider(Lcom/oplus/ota/OplusSystemUpdateInfoHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/ota/OplusSystemUpdateInfoHelper;->dealConfigFromProvider()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 46
    const-string v0, "content://com.oplus.romupdate.provider.db/update_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oplus/ota/OplusSystemUpdateInfoHelper;->CONTENT_URI_WHITE_LIST:Landroid/net/Uri;

    .line 76
    const/4 v0, 0x0

    sput-boolean v0, Lcom/oplus/ota/OplusSystemUpdateInfoHelper;->isAlreadyCopyRecoveryLog:Z

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    return-void
.end method

.method private blacklist dealConfigFromProvider()V
    .locals 3

    .line 311
    invoke-direct {p0}, Lcom/oplus/ota/OplusSystemUpdateInfoHelper;->getDataFromProvider()Ljava/lang/String;

    move-result-object v0

    .line 312
    .local v0, "configStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    const-string v1, "OplusSystemUpdateInfoHelper"

    const-string v2, "config str is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    return-void

    .line 316
    :cond_0
    const-string v1, "data/oplus/os/config/sys_update_info.xml"

    invoke-direct {p0, v0, v1}, Lcom/oplus/ota/OplusSystemUpdateInfoHelper;->saveConfigToFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 317
    return-void
.end method

.method public static blacklist feedbackRecoveryLogToDCS()V
    .locals 2

    .line 429
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 430
    .local v0, "executor":Ljava/util/concurrent/ExecutorService;
    new-instance v1, Lcom/oplus/ota/ZipRecoveryLogRunnable;

    invoke-direct {v1}, Lcom/oplus/ota/ZipRecoveryLogRunnable;-><init>()V

    .line 431
    .local v1, "zipRunnable":Lcom/oplus/ota/ZipRecoveryLogRunnable;
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 432
    return-void
.end method

.method private blacklist getDataFromProvider()Ljava/lang/String;
    .locals 12

    .line 320
    const-string v0, "OplusSystemUpdateInfoHelper"

    const/4 v1, 0x0

    .line 321
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 322
    .local v2, "configVersion":I
    const/4 v3, 0x0

    .line 323
    .local v3, "returnStr":Ljava/lang/String;
    const-string v4, "version"

    const-string v5, "xml"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v8

    .line 325
    .local v8, "projection":[Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/oplus/ota/OplusSystemUpdateInfoHelper;->mContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_1

    .line 326
    nop

    .line 341
    if-eqz v1, :cond_0

    .line 342
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 343
    const/4 v1, 0x0

    .line 326
    :cond_0
    return-object v3

    .line 328
    :cond_1
    :try_start_1
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/oplus/ota/OplusSystemUpdateInfoHelper;->CONTENT_URI_WHITE_LIST:Landroid/net/Uri;

    const-string v9, "filtername=\"sys_update_info\""

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    move-object v1, v6

    .line 330
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_2

    .line 331
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 332
    .local v4, "versioncolumnIndex":I
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 333
    .local v5, "xmlcolumnIndex":I
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 334
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v2, v6

    .line 335
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 336
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "config updated, version = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 341
    .end local v4    # "versioncolumnIndex":I
    .end local v5    # "xmlcolumnIndex":I
    :cond_2
    if-eqz v1, :cond_3

    .line 342
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 343
    const/4 v1, 0x0

    goto :goto_1

    .line 341
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 338
    :catch_0
    move-exception v4

    .line 339
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

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 341
    nop

    .end local v4    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_3

    .line 342
    goto :goto_0

    .line 346
    :cond_3
    :goto_1
    return-object v3

    .line 341
    :goto_2
    if-eqz v1, :cond_4

    .line 342
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 343
    const/4 v1, 0x0

    .line 345
    :cond_4
    throw v0
.end method

.method public static blacklist getInstance()Lcom/oplus/ota/OplusSystemUpdateInfoHelper;
    .locals 2

    .line 88
    sget-object v0, Lcom/oplus/ota/OplusSystemUpdateInfoHelper;->sHelper:Lcom/oplus/ota/OplusSystemUpdateInfoHelper;

    if-nez v0, :cond_1

    .line 89
    const-class v0, Lcom/oplus/ota/OplusSystemUpdateInfoHelper;

    monitor-enter v0

    .line 90
    :try_start_0
    sget-object v1, Lcom/oplus/ota/OplusSystemUpdateInfoHelper;->sHelper:Lcom/oplus/ota/OplusSystemUpdateInfoHelper;

    if-nez v1, :cond_0

    .line 91
    new-instance v1, Lcom/oplus/ota/OplusSystemUpdateInfoHelper;

    invoke-direct {v1}, Lcom/oplus/ota/OplusSystemUpdateInfoHelper;-><init>()V

    sput-object v1, Lcom/oplus/ota/OplusSystemUpdateInfoHelper;->sHelper:Lcom/oplus/ota/OplusSystemUpdateInfoHelper;

    .line 93
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 95
    :cond_1
    :goto_0
    sget-object v0, Lcom/oplus/ota/OplusSystemUpdateInfoHelper;->sHelper:Lcom/oplus/ota/OplusSystemUpdateInfoHelper;

    return-object v0
.end method

.method private static blacklist parseErrorMsgListFromXML(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .param p0, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 388
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 389
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "OplusSystemUpdateInfoHelper"

    if-eqz v1, :cond_0

    .line 390
    const-string v1, "content is null."

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    return-object v0

    .line 394
    :cond_0
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 395
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 396
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 398
    const/4 v3, 0x0

    .line 400
    .local v3, "isMsgTag":Z
    :cond_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    .local v4, "type":I
    const-string v5, "RecoveryErrorMsg"

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 413
    :pswitch_0
    :try_start_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 414
    const/4 v3, 0x0

    goto :goto_0

    .line 403
    :pswitch_1
    if-eqz v3, :cond_2

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Msg"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 404
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    .line 405
    .local v5, "str":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 406
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 410
    .end local v5    # "str":Ljava/lang/String;
    :cond_2
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v3, v5

    .line 411
    nop

    .line 420
    :cond_3
    :goto_0
    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 423
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "isMsgTag":Z
    .end local v4    # "type":I
    goto :goto_1

    .line 421
    :catch_0
    move-exception v1

    .line 422
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist readErrorMapFromConfig()Ljava/util/HashMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 239
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 241
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ERROR: Open file"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "signature verification failed"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    const/4 v1, -0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "has unexpected contents"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const/4 v1, -0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Not enough free space on"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    const/4 v1, -0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "decryptFile file fail, stop install"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    const/4 v1, -0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "verify components_prop error"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const/4 v1, -0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Failed to update"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const/4 v1, -0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "partition fails to recover"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const/16 v1, -0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "partition has unexpected non-zero contents after"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    const/16 v1, -0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "This package expects the value"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const/16 v1, -0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Package expects build fingerprint of"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const/16 v1, -0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Package expects build thumbprint of"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const/16 v1, -0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Can\'t install this package"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const/16 v1, -0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "This package is for"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const/16 v1, -0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Failed to tune partition"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const/16 v1, -0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Failed to apply patch to"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const/16 v1, -0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "oplus_ota_verify failed, abort install"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    new-instance v1, Ljava/io/File;

    const-string v2, "data/oplus/os/config/sys_update_info.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 262
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 263
    .local v2, "parseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    const-string v4, "OplusSystemUpdateInfoHelper"

    if-nez v3, :cond_0

    .line 264
    const-string v3, "config file not exists."

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return-object v0

    .line 267
    :cond_0
    const-string v3, "config file is exists."

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-static {v1}, Lcom/oplus/ota/OplusSystemUpdateInfoHelper;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oplus/ota/OplusSystemUpdateInfoHelper;->parseErrorMsgListFromXML(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 270
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    .line 275
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 276
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 277
    .local v5, "tmpMsg":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 278
    goto :goto_1

    .line 280
    :cond_2
    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 281
    .local v6, "tmpSplit":[Ljava/lang/String;
    array-length v7, v6

    const/4 v8, 0x2

    if-eq v7, v8, :cond_3

    .line 282
    goto :goto_1

    .line 285
    :cond_3
    const/4 v7, 0x0

    :try_start_0
    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 286
    .local v7, "type":I
    const/4 v8, 0x1

    aget-object v8, v6, v8

    .line 287
    .local v8, "msg":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    nop

    .end local v7    # "type":I
    .end local v8    # "msg":Ljava/lang/String;
    goto :goto_1

    .line 288
    :catch_0
    move-exception v7

    .line 289
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    .end local v5    # "tmpMsg":Ljava/lang/String;
    .end local v6    # "tmpSplit":[Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 292
    .end local v3    # "i":I
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "map size:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    return-object v0

    .line 271
    :cond_5
    :goto_2
    const-string v3, "parseList is null."

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    return-object v0
.end method

.method public static blacklist readOTAUpdateFailedTypeFromLastLog(Ljava/util/Map;)Landroid/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 201
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v0, 0x0

    const-string v1, "OplusSystemUpdateInfoHelper"

    if-eqz p0, :cond_7

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_4

    .line 205
    :cond_0
    const-string v2, "/cache/recovery/last_log"

    .line 206
    .local v2, "otaLogPath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 208
    .local v3, "otaLogfile":Ljava/io/File;
    const-string v4, "check last_log"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 210
    const-string v4, "last_log file is not exist!"

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return-object v0

    .line 213
    :cond_1
    const-string v4, "last_log file is exist!!!"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    sget-boolean v4, Lcom/oplus/ota/OplusSystemUpdateInfoHelper;->isAlreadyCopyRecoveryLog:Z

    if-nez v4, :cond_2

    .line 215
    const-string v4, "start copy recovery log"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/4 v4, 0x1

    sput-boolean v4, Lcom/oplus/ota/OplusSystemUpdateInfoHelper;->isAlreadyCopyRecoveryLog:Z

    .line 217
    invoke-static {}, Lcom/oplus/ota/OplusSystemUpdateInfoHelper;->feedbackRecoveryLogToDCS()V

    .line 220
    :cond_2
    const/4 v4, 0x0

    .line 221
    .local v4, "tmpStr":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    .local v5, "reader":Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    if-eqz v6, :cond_6

    .line 223
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 224
    goto :goto_0

    .line 226
    :cond_3
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 227
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 228
    new-instance v6, Landroid/util/Pair;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-direct {v6, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 232
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 228
    return-object v6

    .line 230
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_4
    goto :goto_1

    :cond_5
    goto :goto_0

    .line 232
    :cond_6
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 234
    .end local v5    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 221
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v6

    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v7

    :try_start_4
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "otaLogPath":Ljava/lang/String;
    .end local v3    # "otaLogfile":Ljava/io/File;
    .end local v4    # "tmpStr":Ljava/lang/String;
    .end local p0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    :goto_2
    throw v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 232
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "otaLogPath":Ljava/lang/String;
    .restart local v3    # "otaLogfile":Ljava/io/File;
    .restart local v4    # "tmpStr":Ljava/lang/String;
    .restart local p0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    :catch_0
    move-exception v5

    .line 233
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "get OTA error message failed!!!"

    invoke-static {v1, v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 235
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_3
    return-object v0

    .line 202
    .end local v2    # "otaLogPath":Ljava/lang/String;
    .end local v3    # "otaLogfile":Ljava/io/File;
    .end local v4    # "tmpStr":Ljava/lang/String;
    :cond_7
    :goto_4
    const-string v2, "map is null or empty"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    return-object v0
.end method

.method private static blacklist readOTAUpdateResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "fileName"    # Ljava/lang/String;

    .line 190
    const/4 v0, 0x0

    .line 191
    .local v0, "resultStr":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 192
    .local v1, "file":Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v3

    .line 194
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 196
    .end local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_1

    .line 192
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "resultStr":Ljava/lang/String;
    .end local v1    # "file":Ljava/io/File;
    .end local p0    # "fileName":Ljava/lang/String;
    :goto_0
    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 194
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "resultStr":Ljava/lang/String;
    .restart local v1    # "file":Ljava/io/File;
    .restart local p0    # "fileName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 195
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "OplusSystemUpdateInfoHelper"

    const-string v4, "readOTAUpdateResult failed!!!"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 197
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    return-object v0
.end method

.method private static blacklist readStringFromFile(Ljava/io/File;)Ljava/lang/String;
    .locals 6
    .param p0, "file"    # Ljava/io/File;

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 351
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v1, "OplusSystemUpdateInfoHelper"

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_4

    .line 355
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    .local v2, "is":Ljava/io/InputStream;
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 357
    .local v3, "in":Ljava/io/BufferedReader;
    :try_start_2
    const-string v4, ""

    .line 358
    .local v4, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    if-eqz v5, :cond_1

    .line 359
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 361
    .end local v4    # "line":Ljava/lang/String;
    :cond_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local v3    # "in":Ljava/io/BufferedReader;
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 363
    .end local v2    # "is":Ljava/io/InputStream;
    goto :goto_3

    .line 355
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v4

    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v5

    :try_start_6
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "buffer":Ljava/lang/StringBuilder;
    .end local v2    # "is":Ljava/io/InputStream;
    .end local p0    # "file":Ljava/io/File;
    :goto_1
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v0    # "buffer":Ljava/lang/StringBuilder;
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local p0    # "file":Ljava/io/File;
    :catchall_2
    move-exception v3

    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v4

    :try_start_8
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "buffer":Ljava/lang/StringBuilder;
    .end local p0    # "file":Ljava/io/File;
    :goto_2
    throw v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 361
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v0    # "buffer":Ljava/lang/StringBuilder;
    .restart local p0    # "file":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 362
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 352
    :cond_2
    :goto_4
    const-string v2, "file is null or not exists."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist readSystemUpdateInfo(Ljava/util/HashMap;)Lcom/oplus/ota/OplusSystemUpdateInfo;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/oplus/ota/OplusSystemUpdateInfo;"
        }
    .end annotation

    .line 124
    .local p0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v0, Lcom/oplus/ota/OplusSystemUpdateInfo;

    invoke-direct {v0}, Lcom/oplus/ota/OplusSystemUpdateInfo;-><init>()V

    .line 125
    .local v0, "info":Lcom/oplus/ota/OplusSystemUpdateInfo;
    const/4 v1, 0x0

    .line 126
    .local v1, "isSauUpdate":Z
    const-string v2, "/cache/recovery/last_install"

    .line 127
    .local v2, "lastInstallPath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 128
    .local v3, "lastInstallFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    const-string v5, "OplusSystemUpdateInfoHelper"

    if-eqz v4, :cond_1

    .line 129
    invoke-static {v2}, Lcom/oplus/ota/OplusSystemUpdateInfoHelper;->readOTAUpdateResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 130
    .local v4, "otaResultStr":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "/.SAU/zip/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 131
    const-string v6, "SAU update."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/4 v1, 0x1

    goto :goto_0

    .line 134
    :cond_0
    const-string v6, "not SAU update."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .end local v4    # "otaResultStr":Ljava/lang/String;
    :cond_1
    :goto_0
    const-string v4, "check /cache/recovery/intent"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string v4, "/cache/recovery/intent"

    .line 139
    .local v4, "otaFilePath":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 140
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 141
    const-string v7, "intent file not exists."

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return-object v0

    .line 144
    :cond_2
    const-string v7, "intent file is exist."

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-static {v4}, Lcom/oplus/ota/OplusSystemUpdateInfoHelper;->readOTAUpdateResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 146
    .local v7, "otaResultStr":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 147
    const-string v8, "otaResultStr is null."

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-object v0

    .line 150
    :cond_3
    const-string v8, "0"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v8, :cond_5

    .line 151
    const-string v8, "OTA update success!!!"

    invoke-static {v5, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {v0, v10}, Lcom/oplus/ota/OplusSystemUpdateInfo;->setUpdateSucc(Z)V

    .line 153
    if-eqz v1, :cond_4

    .line 154
    goto :goto_1

    :cond_4
    move v9, v10

    .line 153
    :goto_1
    invoke-virtual {v0, v9}, Lcom/oplus/ota/OplusSystemUpdateInfo;->setUpdateType(I)V

    goto/16 :goto_5

    .line 155
    :cond_5
    const-string v8, "1"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v11, 0x0

    if-eqz v8, :cond_8

    .line 156
    const-string v8, "OTA update failed!!!"

    invoke-static {v5, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {v0, v11}, Lcom/oplus/ota/OplusSystemUpdateInfo;->setUpdateSucc(Z)V

    .line 158
    if-eqz v1, :cond_6

    .line 159
    goto :goto_2

    :cond_6
    move v9, v10

    .line 158
    :goto_2
    invoke-virtual {v0, v9}, Lcom/oplus/ota/OplusSystemUpdateInfo;->setUpdateType(I)V

    .line 160
    invoke-static {p0}, Lcom/oplus/ota/OplusSystemUpdateInfoHelper;->readOTAUpdateFailedTypeFromLastLog(Ljava/util/Map;)Landroid/util/Pair;

    move-result-object v8

    .line 161
    .local v8, "failedMsg":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-nez v8, :cond_7

    .line 162
    invoke-virtual {v0, v11}, Lcom/oplus/ota/OplusSystemUpdateInfo;->setFailedType(I)V

    goto :goto_3

    .line 164
    :cond_7
    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v0, v9}, Lcom/oplus/ota/OplusSystemUpdateInfo;->setFailedType(I)V

    .line 165
    iget-object v9, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v0, v9}, Lcom/oplus/ota/OplusSystemUpdateInfo;->setFailedMsg(Ljava/lang/String;)V

    .line 167
    .end local v8    # "failedMsg":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :goto_3
    goto :goto_5

    :cond_8
    const-string v8, "2"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x3

    if-eqz v8, :cond_9

    .line 168
    const-string v8, "recovery update success!!!"

    invoke-static {v5, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {v0, v10}, Lcom/oplus/ota/OplusSystemUpdateInfo;->setUpdateSucc(Z)V

    .line 170
    invoke-virtual {v0, v9}, Lcom/oplus/ota/OplusSystemUpdateInfo;->setUpdateType(I)V

    goto :goto_5

    .line 171
    :cond_9
    const-string v8, "3"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 172
    const-string v8, "recovery update failed!!!"

    invoke-static {v5, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual {v0, v11}, Lcom/oplus/ota/OplusSystemUpdateInfo;->setUpdateSucc(Z)V

    .line 174
    invoke-virtual {v0, v9}, Lcom/oplus/ota/OplusSystemUpdateInfo;->setUpdateType(I)V

    .line 175
    invoke-static {p0}, Lcom/oplus/ota/OplusSystemUpdateInfoHelper;->readOTAUpdateFailedTypeFromLastLog(Ljava/util/Map;)Landroid/util/Pair;

    move-result-object v8

    .line 176
    .restart local v8    # "failedMsg":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-nez v8, :cond_a

    .line 177
    invoke-virtual {v0, v11}, Lcom/oplus/ota/OplusSystemUpdateInfo;->setFailedType(I)V

    goto :goto_4

    .line 179
    :cond_a
    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v0, v9}, Lcom/oplus/ota/OplusSystemUpdateInfo;->setFailedType(I)V

    .line 180
    iget-object v9, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v0, v9}, Lcom/oplus/ota/OplusSystemUpdateInfo;->setFailedMsg(Ljava/lang/String;)V

    .line 182
    .end local v8    # "failedMsg":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :goto_4
    goto :goto_5

    .line 183
    :cond_b
    const-string v8, "OTA update file\'s date is invalid!!!"

    invoke-static {v5, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :goto_5
    invoke-virtual {v0}, Lcom/oplus/ota/OplusSystemUpdateInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return-object v0
.end method

.method private blacklist saveConfigToFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;

    .line 368
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "OplusSystemUpdateInfoHelper"

    if-eqz v0, :cond_0

    .line 369
    const-string v0, "content is null."

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    return v1

    .line 372
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 373
    .local v0, "file":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 374
    .local v3, "parent":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_1

    .line 375
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 377
    :cond_1
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    .local v4, "outStream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 379
    const-string v5, "saveConfigToFile done."

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 380
    const/4 v5, 0x1

    .line 381
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 380
    return v5

    .line 377
    :catchall_0
    move-exception v5

    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v6

    :try_start_4
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "file":Ljava/io/File;
    .end local v3    # "parent":Ljava/io/File;
    .end local p0    # "this":Lcom/oplus/ota/OplusSystemUpdateInfoHelper;
    .end local p1    # "content":Ljava/lang/String;
    .end local p2    # "filePath":Ljava/lang/String;
    :goto_0
    throw v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 381
    .end local v4    # "outStream":Ljava/io/FileOutputStream;
    .restart local v0    # "file":Ljava/io/File;
    .restart local v3    # "parent":Ljava/io/File;
    .restart local p0    # "this":Lcom/oplus/ota/OplusSystemUpdateInfoHelper;
    .restart local p1    # "content":Ljava/lang/String;
    .restart local p2    # "filePath":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 382
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    .end local v4    # "e":Ljava/lang/Exception;
    return v1
.end method


# virtual methods
.method public blacklist getInfo()Lcom/oplus/ota/OplusSystemUpdateInfo;
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/oplus/ota/OplusSystemUpdateInfoHelper;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 109
    const-string v0, "OplusSystemUpdateInfoHelper"

    const-string v1, "context is null. Helper may not init"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v0, 0x0

    return-object v0

    .line 113
    :cond_0
    const-string v1, "oplus.permission.OPLUS_COMPONENT_SAFE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/oplus/ota/OplusSystemUpdateInfoHelper;->mContext:Landroid/content/Context;

    const-string v2, "com.oplus.permission.safe.UPDATE"

    .line 114
    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 115
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Neither user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " nor current process has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "com.oplus.permission.safe.UPDATE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_2
    :goto_0
    monitor-enter p0

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/oplus/ota/OplusSystemUpdateInfoHelper;->mInfo:Lcom/oplus/ota/OplusSystemUpdateInfo;

    monitor-exit p0

    return-object v0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 99
    const-string v0, "OplusSystemUpdateInfoHelper"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iput-object p1, p0, Lcom/oplus/ota/OplusSystemUpdateInfoHelper;->mContext:Landroid/content/Context;

    .line 101
    invoke-static {}, Lcom/oplus/ota/OplusSystemUpdateInfoHelper;->readErrorMapFromConfig()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/ota/OplusSystemUpdateInfoHelper;->readSystemUpdateInfo(Ljava/util/HashMap;)Lcom/oplus/ota/OplusSystemUpdateInfo;

    move-result-object v0

    .line 102
    .local v0, "info":Lcom/oplus/ota/OplusSystemUpdateInfo;
    monitor-enter p0

    .line 103
    :try_start_0
    iput-object v0, p0, Lcom/oplus/ota/OplusSystemUpdateInfoHelper;->mInfo:Lcom/oplus/ota/OplusSystemUpdateInfo;

    .line 104
    monitor-exit p0

    .line 105
    return-void

    .line 104
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist initUpdateBroadcastReceiver()V
    .locals 3

    .line 297
    invoke-static {}, Lcom/oplus/romupdate/RomUpdateObserver;->getInstance()Lcom/oplus/romupdate/RomUpdateObserver;

    move-result-object v0

    new-instance v1, Lcom/oplus/ota/OplusSystemUpdateInfoHelper$1;

    invoke-direct {v1, p0}, Lcom/oplus/ota/OplusSystemUpdateInfoHelper$1;-><init>(Lcom/oplus/ota/OplusSystemUpdateInfoHelper;)V

    const-string v2, "sys_update_info"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/romupdate/RomUpdateObserver;->register(Ljava/lang/String;Lcom/oplus/romupdate/RomUpdateObserver$OnReceiveListener;)V

    .line 308
    return-void
.end method
