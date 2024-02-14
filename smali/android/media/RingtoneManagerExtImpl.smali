.class public Landroid/media/RingtoneManagerExtImpl;
.super Ljava/lang/Object;
.source "RingtoneManagerExtImpl.java"

# interfaces
.implements Landroid/media/IRingtoneManagerExt;


# static fields
.field private static final blacklist BLACKLIST_DIRECTORY:[Ljava/lang/String;

.field public static final blacklist CALENDAR_REMINDER_SOUND:Ljava/lang/String; = "calendar_sound"

.field private static final blacklist CARRIER_CUSTOM_DEFAULT_RINGTONE_VERSION_PROP:Ljava/lang/String; = "ro.oplus.carrier.ringtone.version"

.field private static final blacklist CARRIER_CUSTOM_DEFAULT_RINGTONE_VERSION_SETTINGS:Ljava/lang/String; = "carrier_custom_default_ringtone_version"

.field private static final blacklist CARRIER_OTA_VERSION_BACKUP_NAME:Ljava/lang/String; = "carrier_ota_version_backup"

.field private static final blacklist CARRIER_OTA_VERSION_NAME:Ljava/lang/String; = "ro.oplus.image.my_carrier.date"

.field private static final blacklist COMPANY_CUSTOM_DEFAULT_RINGTONE_VERSION_PROP:Ljava/lang/String; = "ro.oplus.company.ringtone.version"

.field private static final blacklist COMPANY_CUSTOM_DEFAULT_RINGTONE_VERSION_SETTINGS:Ljava/lang/String; = "company_custom_default_ringtone_version"

.field private static final blacklist COMPANY_OTA_VERSION_BACKUP_NAME:Ljava/lang/String; = "company_ota_version_backup"

.field private static final blacklist COMPANY_OTA_VERSION_NAME:Ljava/lang/String; = "ro.oplus.image.my_company.date"

.field public static final blacklist DEFAULT_CALENDAR_REMINDER_SOUND:Ljava/lang/String; = "calendar_default_sound"

.field private static final blacklist FILE_NO_MEDIA:Ljava/lang/String; = "/.nomedia"

.field private static final blacklist NEW_BLACKLIST_DIRECTORY:[Ljava/lang/String;

.field public static final blacklist NOTIFICATION_SOUND_SIM2:Ljava/lang/String; = "notification_sim2"

.field public static final blacklist OPLUS_DEFAULT_ALARM:Ljava/lang/String; = "oplus_customize_default_alarm"

.field public static final blacklist OPLUS_DEFAULT_NOTIFICATION:Ljava/lang/String; = "oplus_customize_default_notification"

.field public static final blacklist OPLUS_DEFAULT_NOTIFICATION_SIM2:Ljava/lang/String; = "oplus_customize_default_notification_sim2"

.field public static final blacklist OPLUS_DEFAULT_RINGTONE:Ljava/lang/String; = "oplus_customize_default_ringtone"

.field public static final blacklist OPLUS_DEFAULT_RINGTONE_SIM2:Ljava/lang/String; = "oplus_customize_default_ringtone_sim2"

.field public static final blacklist OPLUS_DEFAULT_SMS_NOTIFICATION:Ljava/lang/String; = "oplus_customize_default_sms_notification_sound"

.field public static final blacklist OPLUS_SMS_NOTIFICATION_SOUND:Ljava/lang/String; = "oplus_customize_sms_notification_sound"

.field private static final blacklist PATH_MICROMSG:Ljava/lang/String; = "/tencent/MicroMsg"

.field public static final blacklist RINGTONE_SIM2:Ljava/lang/String; = "ringtone_sim2"

.field private static final blacklist TAG:Ljava/lang/String; = "OplusRingtoneManager"

.field private static blacklist sInstance:Landroid/media/RingtoneManagerExtImpl;


# instance fields
.field private blacklist mTitleMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 8

    .line 76
    const-string v0, "image2"

    const-string v1, "voice2"

    const-string v2, "emoji"

    const-string v3, "avatar"

    const-string v4, "sns"

    const-string v5, "openapi"

    const-string v6, "package"

    const-string v7, "video"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/RingtoneManagerExtImpl;->BLACKLIST_DIRECTORY:[Ljava/lang/String;

    .line 77
    const-string v0, "wxafiles"

    const-string v1, "wxanewfiles"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/RingtoneManagerExtImpl;->NEW_BLACKLIST_DIRECTORY:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/RingtoneManagerExtImpl;->mTitleMaps:Ljava/util/HashMap;

    .line 89
    return-void
.end method

.method private blacklist deleteIllagalInternalColumns(Landroid/content/Context;I)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .line 419
    const-string v0, " OR "

    const-string v1, " = ?"

    const/4 v2, 0x1

    move/from16 v3, p2

    if-eq v3, v2, :cond_0

    .line 420
    return-void

    .line 422
    :cond_0
    sget-object v10, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 423
    .local v10, "baseUri":Landroid/net/Uri;
    const/4 v11, 0x0

    .line 425
    .local v11, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/media/RingtoneManagerExtImpl;->isMtkPlatform()Z

    move-result v4

    move v12, v4

    .line 426
    .local v12, "mtkPlatform":Z
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "is_notification"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v13, v4

    .line 428
    .local v13, "selection":Ljava/lang/StringBuilder;
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "is_ringtone"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    if-eqz v12, :cond_1

    .line 430
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "is_music"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 431
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "is_alarm"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eqz v12, :cond_2

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    goto :goto_0

    :cond_2
    new-array v4, v1, [Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    :goto_0
    move-object v8, v4

    .line 434
    .local v8, "args":[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "_id"

    const-string v6, "title"

    const-string v7, "_data"

    filled-new-array {v5, v6, v7}, [Ljava/lang/String;

    move-result-object v6

    .line 435
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    .line 434
    move-object v5, v10

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v11, v4

    .line 436
    if-nez v11, :cond_4

    .line 452
    if-eqz v11, :cond_3

    .line 453
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 437
    :cond_3
    return-void

    .line 439
    :cond_4
    :goto_1
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 440
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 441
    .local v4, "id":J
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 442
    .local v6, "title":Ljava/lang/String;
    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 443
    .local v7, "path":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 444
    .local v9, "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_5

    if-eqz v12, :cond_6

    if-eqz v7, :cond_6

    const-string v14, "/system/system_ext/media/audio"

    invoke-virtual {v7, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 445
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    invoke-static {v10, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/content/ContentResolver;->canonicalizeOrElse(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v14

    .line 446
    .local v14, "delUri":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const/4 v0, 0x0

    invoke-virtual {v15, v14, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Landroid/os/Bundle;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 448
    .end local v4    # "id":J
    .end local v6    # "title":Ljava/lang/String;
    .end local v7    # "path":Ljava/lang/String;
    .end local v9    # "file":Ljava/io/File;
    .end local v14    # "delUri":Landroid/net/Uri;
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 452
    .end local v8    # "args":[Ljava/lang/String;
    .end local v12    # "mtkPlatform":Z
    .end local v13    # "selection":Ljava/lang/StringBuilder;
    :cond_7
    if-eqz v11, :cond_8

    .line 453
    :goto_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 452
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 449
    :catch_0
    move-exception v0

    .line 450
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "OplusRingtoneManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteIllagalInternalColumns ex:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 452
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v11, :cond_8

    .line 453
    goto :goto_2

    .line 456
    :cond_8
    :goto_3
    return-void

    .line 452
    :goto_4
    if-eqz v11, :cond_9

    .line 453
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 455
    :cond_9
    throw v0
.end method

.method private blacklist filterBlacklistDirectory()V
    .locals 26

    .line 469
    const-string v1, ""

    .line 471
    .local v1, "rootDir":Ljava/lang/String;
    :try_start_0
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 475
    :cond_0
    goto :goto_0

    .line 474
    :catch_0
    move-exception v0

    .line 476
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "filterBlacklistDirectory: rootDir = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OplusRingtoneManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 478
    return-void

    .line 482
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/tencent/MicroMsg"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 483
    .local v3, "microMsgPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 484
    .local v4, "microMsgFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 485
    return-void

    .line 487
    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 488
    .local v5, "microMsgFiles":[Ljava/io/File;
    if-nez v5, :cond_3

    .line 489
    return-void

    .line 493
    :cond_3
    sget-object v0, Landroid/media/RingtoneManagerExtImpl;->BLACKLIST_DIRECTORY:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 494
    .local v6, "blacklists":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Landroid/media/RingtoneManagerExtImpl;->NEW_BLACKLIST_DIRECTORY:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 495
    .local v7, "newBlacklists":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v8, v5

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v8, :cond_c

    aget-object v11, v5, v10

    .line 496
    .local v11, "parentFile":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_4

    .line 497
    move-object/from16 v16, v1

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    goto/16 :goto_4

    .line 499
    :cond_4
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    .line 500
    .local v12, "parentName":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    .line 501
    .local v13, "parentPath":Ljava/lang/String;
    invoke-interface {v7, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v14, "filterBlacklistDirectory: "

    const-string v15, "filterBlacklistDirectory: .nomedia file exists, continue"

    const-string v9, "/.nomedia"

    move-object/from16 v16, v1

    .end local v1    # "rootDir":Ljava/lang/String;
    .local v16, "rootDir":Ljava/lang/String;
    const-string v1, "filterBlacklistDirectory: ready to insert file in "

    if-eqz v0, :cond_6

    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    .line 504
    .local v1, "parentNomediaFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 505
    invoke-static {v2, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    goto/16 :goto_4

    .line 509
    :cond_5
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 512
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    goto/16 :goto_4

    .line 510
    :catch_1
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    .line 511
    .local v0, "e":Ljava/io/IOException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    .end local v0    # "e":Ljava/io/IOException;
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    goto/16 :goto_4

    .line 515
    .end local v1    # "parentNomediaFile":Ljava/io/File;
    :cond_6
    move-object/from16 v17, v3

    .end local v3    # "microMsgPath":Ljava/lang/String;
    .local v17, "microMsgPath":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 516
    .local v3, "childFiles":[Ljava/io/File;
    if-nez v3, :cond_7

    .line 517
    move-object/from16 v18, v4

    move-object/from16 v19, v5

    goto/16 :goto_4

    .line 520
    :cond_7
    move-object/from16 v18, v4

    .end local v4    # "microMsgFile":Ljava/io/File;
    .local v18, "microMsgFile":Ljava/io/File;
    array-length v4, v3

    move-object/from16 v19, v5

    const/4 v5, 0x0

    .end local v5    # "microMsgFiles":[Ljava/io/File;
    .local v19, "microMsgFiles":[Ljava/io/File;
    :goto_2
    if-ge v5, v4, :cond_b

    aget-object v20, v3, v5

    .line 521
    .local v20, "childFile":Ljava/io/File;
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_8

    .line 522
    move-object/from16 v23, v1

    move-object/from16 v21, v3

    move/from16 v22, v4

    goto/16 :goto_3

    .line 524
    :cond_8
    move-object/from16 v21, v3

    .end local v3    # "childFiles":[Ljava/io/File;
    .local v21, "childFiles":[Ljava/io/File;
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 525
    .local v3, "fileName":Ljava/lang/String;
    move/from16 v22, v4

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 526
    .local v4, "filePath":Ljava/lang/String;
    invoke-interface {v6, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    new-instance v0, Ljava/io/File;

    move-object/from16 v23, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    .line 529
    .local v1, "nomediaFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 530
    invoke-static {v2, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    goto :goto_3

    .line 534
    :cond_9
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 537
    goto :goto_3

    .line 535
    :catch_2
    move-exception v0

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    .line 536
    .restart local v0    # "e":Ljava/io/IOException;
    move-object/from16 v24, v1

    .end local v1    # "nomediaFile":Ljava/io/File;
    .local v24, "nomediaFile":Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v25, v3

    .end local v3    # "fileName":Ljava/lang/String;
    .local v25, "fileName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 526
    .end local v0    # "e":Ljava/io/IOException;
    .end local v24    # "nomediaFile":Ljava/io/File;
    .end local v25    # "fileName":Ljava/lang/String;
    .restart local v3    # "fileName":Ljava/lang/String;
    :cond_a
    move-object/from16 v23, v1

    move-object/from16 v25, v3

    .line 520
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v4    # "filePath":Ljava/lang/String;
    .end local v20    # "childFile":Ljava/io/File;
    :goto_3
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v3, v21

    move/from16 v4, v22

    move-object/from16 v1, v23

    goto/16 :goto_2

    .end local v21    # "childFiles":[Ljava/io/File;
    .local v3, "childFiles":[Ljava/io/File;
    :cond_b
    move-object/from16 v21, v3

    .line 495
    .end local v3    # "childFiles":[Ljava/io/File;
    .end local v11    # "parentFile":Ljava/io/File;
    .end local v12    # "parentName":Ljava/lang/String;
    .end local v13    # "parentPath":Ljava/lang/String;
    :goto_4
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    goto/16 :goto_1

    .line 541
    .end local v16    # "rootDir":Ljava/lang/String;
    .end local v17    # "microMsgPath":Ljava/lang/String;
    .end local v18    # "microMsgFile":Ljava/io/File;
    .end local v19    # "microMsgFiles":[Ljava/io/File;
    .local v1, "rootDir":Ljava/lang/String;
    .local v3, "microMsgPath":Ljava/lang/String;
    .local v4, "microMsgFile":Ljava/io/File;
    .restart local v5    # "microMsgFiles":[Ljava/io/File;
    :cond_c
    return-void
.end method

.method private blacklist getDefaultUriFromSettings(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .line 659
    const-string v0, ""

    .line 660
    .local v0, "defaultUriFromSettings":Ljava/lang/String;
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 680
    :sswitch_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oplus_customize_default_ringtone_sim2"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 681
    goto :goto_0

    .line 677
    :sswitch_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "calendar_default_sound"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 678
    goto :goto_0

    .line 674
    :sswitch_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oplus_customize_default_notification_sim2"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 675
    goto :goto_0

    .line 671
    :sswitch_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oplus_customize_default_sms_notification_sound"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 672
    goto :goto_0

    .line 668
    :sswitch_4
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oplus_customize_default_alarm"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 669
    goto :goto_0

    .line 665
    :sswitch_5
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oplus_customize_default_notification"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 666
    goto :goto_0

    .line 662
    :sswitch_6
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oplus_customize_default_ringtone"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 663
    nop

    .line 685
    :goto_0
    if-nez v0, :cond_0

    const-string v1, ""

    goto :goto_1

    :cond_0
    move-object v1, v0

    :goto_1
    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_5
        0x4 -> :sswitch_4
        0x8 -> :sswitch_3
        0x10 -> :sswitch_2
        0x20 -> :sswitch_1
        0x40 -> :sswitch_0
    .end sparse-switch
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Landroid/media/RingtoneManagerExtImpl;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 92
    const-class v0, Landroid/media/RingtoneManagerExtImpl;

    monitor-enter v0

    .line 93
    :try_start_0
    sget-object v1, Landroid/media/RingtoneManagerExtImpl;->sInstance:Landroid/media/RingtoneManagerExtImpl;

    if-nez v1, :cond_0

    .line 94
    new-instance v1, Landroid/media/RingtoneManagerExtImpl;

    invoke-direct {v1}, Landroid/media/RingtoneManagerExtImpl;-><init>()V

    sput-object v1, Landroid/media/RingtoneManagerExtImpl;->sInstance:Landroid/media/RingtoneManagerExtImpl;

    .line 96
    :cond_0
    sget-object v1, Landroid/media/RingtoneManagerExtImpl;->sInstance:Landroid/media/RingtoneManagerExtImpl;

    monitor-exit v0

    return-object v1

    .line 97
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static blacklist isCustRingtoneVersionUpdate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "newVersion"    # Ljava/lang/String;
    .param p1, "olderVersion"    # Ljava/lang/String;

    .line 212
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, p0

    .line 213
    .local v0, "newVersionStr":Ljava/lang/String;
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, p1

    .line 214
    .local v1, "compareStr":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    return v2
.end method

.method private blacklist isMtkPlatform()Z
    .locals 2

    .line 459
    const-string v0, "ro.board.platform"

    const-string v1, "oplus"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static blacklist isNeedSet(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "settingName"    # Ljava/lang/String;

    .line 110
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "existingSettingValue":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNeedSet:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusRingtoneManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method private blacklist isOplusDefaultRingtoneUriEmpty(Landroid/content/Context;I)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .line 615
    const/4 v0, 0x0

    .line 616
    .local v0, "isEmpty":Z
    sparse-switch p2, :sswitch_data_0

    .line 653
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 648
    :sswitch_0
    const-string v1, "oplus_customize_default_ringtone_sim2"

    invoke-static {p1, v1}, Landroid/media/RingtoneManagerExtImpl;->isNeedSet(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 649
    const/4 v0, 0x1

    goto :goto_0

    .line 643
    :sswitch_1
    const-string v1, "calendar_default_sound"

    invoke-static {p1, v1}, Landroid/media/RingtoneManagerExtImpl;->isNeedSet(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 644
    const/4 v0, 0x1

    goto :goto_0

    .line 638
    :sswitch_2
    const-string v1, "oplus_customize_default_notification_sim2"

    invoke-static {p1, v1}, Landroid/media/RingtoneManagerExtImpl;->isNeedSet(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 639
    const/4 v0, 0x1

    goto :goto_0

    .line 633
    :sswitch_3
    const-string v1, "oplus_customize_default_sms_notification_sound"

    invoke-static {p1, v1}, Landroid/media/RingtoneManagerExtImpl;->isNeedSet(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 634
    const/4 v0, 0x1

    goto :goto_0

    .line 628
    :sswitch_4
    const-string v1, "oplus_customize_default_alarm"

    invoke-static {p1, v1}, Landroid/media/RingtoneManagerExtImpl;->isNeedSet(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 629
    const/4 v0, 0x1

    goto :goto_0

    .line 623
    :sswitch_5
    const-string v1, "oplus_customize_default_notification"

    invoke-static {p1, v1}, Landroid/media/RingtoneManagerExtImpl;->isNeedSet(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 624
    const/4 v0, 0x1

    goto :goto_0

    .line 618
    :sswitch_6
    const-string v1, "oplus_customize_default_ringtone"

    invoke-static {p1, v1}, Landroid/media/RingtoneManagerExtImpl;->isNeedSet(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 619
    const/4 v0, 0x1

    .line 655
    :cond_0
    :goto_0
    return v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_5
        0x4 -> :sswitch_4
        0x8 -> :sswitch_3
        0x10 -> :sswitch_2
        0x20 -> :sswitch_1
        0x40 -> :sswitch_0
    .end sparse-switch
.end method

.method private static blacklist isVersionStringChanged(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "newVeresion"    # Ljava/lang/String;
    .param p1, "olerVersion"    # Ljava/lang/String;

    .line 206
    const-string v0, "default"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "nconf"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 207
    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 208
    .local v0, "compareStr":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1

    .line 206
    .end local v0    # "compareStr":Ljava/lang/String;
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist removeExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "filename"    # Ljava/lang/String;

    .line 320
    if-nez p1, :cond_0

    .line 321
    const/4 v0, 0x0

    return-object v0

    .line 323
    :cond_0
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 325
    .local v0, "extensionPos":I
    const/16 v1, 0x2f

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 326
    .local v1, "lastUnixPos":I
    const/16 v2, 0x5c

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 327
    .local v2, "lastWindowsPos":I
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 329
    .local v3, "lastSeparator":I
    const/4 v4, -0x1

    if-le v3, v0, :cond_1

    move v5, v4

    goto :goto_0

    :cond_1
    move v5, v0

    .line 331
    .local v5, "index":I
    :goto_0
    if-ne v5, v4, :cond_2

    .line 332
    return-object p1

    .line 334
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static blacklist setRingtoneIfNotSet(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "settingName"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRingtoneIfNotSet: settingName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uri:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusRingtoneManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-static {p0, p1}, Landroid/media/RingtoneManagerExtImpl;->isNeedSet(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 107
    :cond_0
    return-void
.end method

.method private blacklist updateRingtoneUriSettings(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "defRingtoneUri"    # Landroid/net/Uri;
    .param p3, "oldId"    # Ljava/lang/String;
    .param p4, "type"    # I
    .param p5, "setting"    # Ljava/lang/String;

    .line 692
    const/4 v0, 0x0

    .line 693
    .local v0, "update":Z
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "_id"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 694
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 696
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 697
    .local v2, "id":J
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 699
    .local v4, "newId":Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 700
    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 701
    .local v5, "baseUri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v5, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/ContentResolver;->canonicalizeOrElse(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    .line 702
    .local v6, "actualRingtoneUri":Landroid/net/Uri;
    const-string v7, "OplusRingtoneManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "update uri from:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    invoke-static {p1, p4, v6}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 704
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v7, p5, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 705
    const/4 v0, 0x1

    goto :goto_1

    .line 693
    .end local v2    # "id":J
    .end local v4    # "newId":Ljava/lang/String;
    .end local v5    # "baseUri":Landroid/net/Uri;
    .end local v6    # "actualRingtoneUri":Landroid/net/Uri;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v2

    .line 708
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 709
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_2
    return v0
.end method


# virtual methods
.method public blacklist clearDefaultRingtonesHistory(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 219
    const-string v0, "OplusRingtoneManager"

    const-string v1, "component update, clearDefaultRingtonesHistory"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ringtone_set"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 223
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ringtone_sim2_set"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 225
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_sound_set"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 227
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_sound_sms_set"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 228
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_sound_sim2_set"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 231
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ringtone"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 232
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oplus_customize_default_ringtone"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 234
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_sound"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 235
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oplus_customize_default_notification"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 237
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oplus_customize_sms_notification_sound"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 238
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oplus_customize_default_sms_notification_sound"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 240
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_sim2"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 241
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oplus_customize_default_notification_sim2"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 243
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ringtone_sim2"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 244
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oplus_customize_default_ringtone_sim2"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 245
    return-void
.end method

.method public blacklist getRingtoneTitlePath(Landroid/content/Context;Landroid/net/Uri;)Landroid/util/Pair;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ringtoneUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 293
    const-string v0, "is_notification"

    const-string v1, "is_ringtone"

    const-string v2, "_data"

    const-string v3, "_display_name"

    const/4 v4, 0x0

    .line 295
    .local v4, "cursor":Landroid/database/Cursor;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    filled-new-array {v3, v2, v1, v0}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, p2

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    move-object v4, v6

    .line 298
    if-eqz v4, :cond_5

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 299
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v1, v7, :cond_0

    move v1, v7

    goto :goto_0

    :cond_0
    move v1, v6

    .line 300
    .local v1, "isRingtone":Z
    :goto_0
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v7, :cond_1

    move v6, v7

    :cond_1
    move v0, v6

    .line 302
    .local v0, "isNotification":Z
    if-nez v1, :cond_2

    if-eqz v0, :cond_5

    .line 303
    :cond_2
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/media/RingtoneManagerExtImpl;->removeExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 304
    .local v3, "displayName":Ljava/lang/String;
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 305
    .local v2, "path":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 306
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    new-instance v6, Landroid/util/Pair;

    invoke-direct {v6, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v6

    goto :goto_1

    :cond_3
    nop

    .line 307
    .local v5, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    nop

    .line 313
    if-eqz v4, :cond_4

    .line 314
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 307
    :cond_4
    return-object v5

    .line 313
    .end local v0    # "isNotification":Z
    .end local v1    # "isRingtone":Z
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "displayName":Ljava/lang/String;
    .end local v5    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    if-eqz v4, :cond_6

    .line 314
    :goto_2
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_3

    .line 313
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "OplusRingtoneManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRingtoneDisplayNamePath error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 313
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v4, :cond_6

    .line 314
    goto :goto_2

    .line 317
    :cond_6
    :goto_3
    return-object v5

    .line 313
    :goto_4
    if-eqz v4, :cond_7

    .line 314
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 316
    :cond_7
    throw v0
.end method

.method public blacklist hookforMediaProviderCustomized(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 400
    const-string v0, "OplusRingtoneManager"

    if-nez p1, :cond_0

    .line 401
    const-string v1, "hookforMediaProviderCustomized context is Null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    return-void

    .line 404
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 405
    .local v1, "pkgName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hookforMediaProviderCustomized pkgName"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    const-string v2, "com.android.providers.media.module"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 407
    const-string v2, "com.google.android.providers.media.module"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 408
    :cond_1
    invoke-static {}, Landroid/media/OifaceBindUtils;->bindTask()V

    .line 409
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hookforMediaProviderCustomized curThread"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-direct {p0}, Landroid/media/RingtoneManagerExtImpl;->filterBlacklistDirectory()V

    .line 413
    :cond_2
    return-void
.end method

.method public blacklist isComponentVersionChange(Landroid/content/Context;)Z
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .line 161
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "company_ota_version_backup"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "olderCompanyVersion":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "carrier_ota_version_backup"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, "olderCarrierVersion":Ljava/lang/String;
    const-string v4, "ro.oplus.image.my_company.date"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 167
    .local v4, "newCompanyVersion":Ljava/lang/String;
    const-string v6, "ro.oplus.image.my_carrier.date"

    invoke-static {v6, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 169
    .local v5, "newCarrierVersion":Ljava/lang/String;
    invoke-static {v4, v0}, Landroid/media/RingtoneManagerExtImpl;->isVersionStringChanged(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x1

    const-string v8, "OplusRingtoneManager"

    if-eqz v6, :cond_0

    .line 170
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v1, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 171
    const-string v1, "my_company changed"

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return v7

    .line 173
    :cond_0
    invoke-static {v5, v2}, Landroid/media/RingtoneManagerExtImpl;->isVersionStringChanged(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 174
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v3, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 175
    const-string v1, "my_carrier changed"

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return v7

    .line 178
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist isCustomDefaultRingtoneNeeded(Landroid/content/Context;)Z
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .line 183
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "company_custom_default_ringtone_version"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "companyCustomRingtoneVersion":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "carrier_custom_default_ringtone_version"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 188
    .local v2, "carrierCustomRingtoneVersion":Ljava/lang/String;
    const-string v4, "ro.oplus.company.ringtone.version"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 189
    .local v4, "newCompanyCustomRingtoneVersion":Ljava/lang/String;
    const-string v6, "ro.oplus.carrier.ringtone.version"

    invoke-static {v6, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 191
    .local v5, "newCarrierCustomRingtoneVersion":Ljava/lang/String;
    invoke-static {v4, v0}, Landroid/media/RingtoneManagerExtImpl;->isCustRingtoneVersionUpdate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x1

    const-string v8, "OplusRingtoneManager"

    if-eqz v6, :cond_0

    .line 192
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v1, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 194
    const-string v1, "company custom ringtone version change, need update config"

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return v7

    .line 196
    :cond_0
    invoke-static {v5, v2}, Landroid/media/RingtoneManagerExtImpl;->isCustRingtoneVersionUpdate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 197
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v3, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 199
    const-string v1, "carrier custom ringtone version change, need update config"

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return v7

    .line 202
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist putSettingRingCacheTitleAndPath(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "path"    # Ljava/lang/String;

    .line 274
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 276
    .local v0, "token":J
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 277
    .local v2, "resolver":Landroid/content/ContentResolver;
    const/16 v3, 0x40

    if-ne p2, v3, :cond_0

    .line 278
    const-string v3, "ringtone_cache_title_sim2"

    invoke-static {v2, v3, p3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 279
    const-string v3, "ringtone_cache_path_sim2"

    invoke-static {v2, v3, p4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 280
    :cond_0
    const/4 v3, 0x1

    if-ne p2, v3, :cond_1

    .line 281
    const-string v3, "ringtone_cache_title"

    invoke-static {v2, v3, p3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 282
    const-string v3, "ringtone_cache_path"

    invoke-static {v2, v3, p4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    :cond_1
    :goto_0
    nop

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 288
    goto :goto_2

    .line 287
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 284
    :catch_0
    move-exception v2

    .line 285
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "OplusRingtoneManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "putSettingRingCacheTitleAndPath error maybe no permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 287
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 289
    :goto_2
    return-void

    .line 287
    :goto_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 288
    throw v2
.end method

.method public blacklist setOplusDefaultRingtoneUriIfNotSet(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "filename"    # Ljava/lang/String;
    .param p4, "whichAudio"    # Ljava/lang/String;

    .line 549
    move/from16 v1, p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_display_name=? AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v2, p4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "=?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 550
    .local v9, "where":Ljava/lang/String;
    sget-object v10, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 551
    .local v10, "baseUri":Landroid/net/Uri;
    const/4 v11, 0x0

    .line 553
    .local v11, "ringtoneUri":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v0, "_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x2

    new-array v7, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object p3, v7, v13

    const/4 v14, 0x1

    const-string v15, "1"

    aput-object v15, v7, v14

    const/4 v8, 0x0

    move-object v4, v10

    move-object v6, v9

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 557
    .local v3, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 558
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 559
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v10, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 558
    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->canonicalizeOrElse(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v11, v4

    .line 561
    :cond_0
    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 563
    .end local v3    # "cursor":Landroid/database/Cursor;
    :cond_1
    const/4 v3, 0x4

    const-string v8, "OplusRingtoneManager"

    if-ne v1, v3, :cond_4

    if-nez v11, :cond_4

    .line 564
    const-string v16, "_display_name=? AND is_ringtone=?"

    .line 565
    .local v16, "where1":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    new-array v7, v12, [Ljava/lang/String;

    aput-object p3, v7, v13

    aput-object v15, v7, v14

    const/4 v0, 0x0

    const-string v6, "_display_name=? AND is_ringtone=?"

    move-object v4, v10

    move-object v12, v8

    move-object v8, v0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 569
    .restart local v3    # "cursor":Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 570
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 571
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v10, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 570
    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->canonicalizeOrElse(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    move-object v11, v0

    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refind alarm type uri:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 574
    :cond_2
    if-eqz v3, :cond_5

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 565
    :catchall_0
    move-exception v0

    move-object v4, v0

    if-eqz v3, :cond_3

    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v4

    .line 563
    .end local v3    # "cursor":Landroid/database/Cursor;
    .end local v16    # "where1":Ljava/lang/String;
    :cond_4
    move-object v12, v8

    .line 577
    :cond_5
    :goto_1
    if-nez v11, :cond_6

    .line 578
    const-string v0, "do not find ringtone uri!"

    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    return-void

    .line 581
    :cond_6
    invoke-direct/range {p0 .. p2}, Landroid/media/RingtoneManagerExtImpl;->getDefaultUriFromSettings(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 582
    .local v0, "defaultUri":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "default uri:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "uri from database:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 584
    const-string v3, "default uri is the same with new no need to update default settings"

    invoke-static {v12, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    return-void

    .line 587
    :cond_7
    sparse-switch v1, :sswitch_data_0

    .line 610
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 607
    :sswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "oplus_customize_default_ringtone_sim2"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 608
    goto :goto_2

    .line 604
    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "calendar_default_sound"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 605
    goto :goto_2

    .line 601
    :sswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "oplus_customize_default_notification_sim2"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 602
    goto :goto_2

    .line 598
    :sswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "oplus_customize_default_sms_notification_sound"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 599
    goto :goto_2

    .line 595
    :sswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "oplus_customize_default_alarm"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 596
    goto :goto_2

    .line 592
    :sswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "oplus_customize_default_notification"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 593
    goto :goto_2

    .line 589
    :sswitch_6
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "oplus_customize_default_ringtone"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 590
    nop

    .line 612
    :goto_2
    return-void

    .line 553
    .end local v0    # "defaultUri":Ljava/lang/String;
    .restart local v3    # "cursor":Landroid/database/Cursor;
    :catchall_2
    move-exception v0

    move-object v4, v0

    if-eqz v3, :cond_8

    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_3
    throw v4

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_5
        0x4 -> :sswitch_4
        0x8 -> :sswitch_3
        0x10 -> :sswitch_2
        0x20 -> :sswitch_1
        0x40 -> :sswitch_0
    .end sparse-switch
.end method

.method public blacklist setRingtoneUriAgainIfNeeded(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "baseuri"    # Landroid/net/Uri;
    .param p4, "type"    # I

    .line 250
    const-string v0, "OplusRingtoneManager"

    const/4 v1, 0x4

    if-ne p4, v1, :cond_4

    .line 251
    invoke-static {p1, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 252
    const-string v1, "oplus_customize_default_alarm"

    invoke-static {p1, v1}, Landroid/media/RingtoneManagerExtImpl;->isNeedSet(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 256
    :cond_0
    const-string v1, "_display_name=? AND is_ringtone=?"

    .line 258
    .local v1, "where1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "_id"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p2, v6, v8

    const-string v3, "1"

    const/4 v9, 0x1

    aput-object v3, v6, v9

    const/4 v7, 0x0

    move-object v3, p3

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 262
    .local v2, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 263
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 264
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {p3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 263
    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->canonicalizeOrElse(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 265
    .local v3, "ringtoneUri":Landroid/net/Uri;
    const-string v4, "refind alarm type uri data"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-virtual {p0, p1, p4, v3}, Landroid/media/RingtoneManagerExtImpl;->setRingtonesUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 267
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "alarm_alert_set"

    invoke-static {v0, v4, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    .end local v3    # "ringtoneUri":Landroid/net/Uri;
    :cond_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 270
    .end local v2    # "cursor":Landroid/database/Cursor;
    :cond_2
    return-void

    .line 258
    .restart local v2    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_3

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v0

    .line 253
    .end local v1    # "where1":Ljava/lang/String;
    .end local v2    # "cursor":Landroid/database/Cursor;
    :cond_4
    :goto_1
    const-string v1, "no need to refind alarm data"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    return-void
.end method

.method public blacklist setRingtonesUri(Landroid/content/Context;ILandroid/net/Uri;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "ringtoneUri"    # Landroid/net/Uri;

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRingtonesUri type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ringtoneUri"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusRingtoneManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    sparse-switch p2, :sswitch_data_0

    .line 155
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 151
    :sswitch_0
    const-string v0, "ringtone_sim2"

    invoke-static {p1, v0, p3}, Landroid/media/RingtoneManagerExtImpl;->setRingtoneIfNotSet(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)V

    .line 152
    const-string v0, "oplus_customize_default_ringtone_sim2"

    invoke-static {p1, v0, p3}, Landroid/media/RingtoneManagerExtImpl;->setRingtoneIfNotSet(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)V

    .line 153
    goto :goto_0

    .line 147
    :sswitch_1
    const-string v0, "calendar_sound"

    invoke-static {p1, v0, p3}, Landroid/media/RingtoneManagerExtImpl;->setRingtoneIfNotSet(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)V

    .line 148
    const-string v0, "calendar_default_sound"

    invoke-static {p1, v0, p3}, Landroid/media/RingtoneManagerExtImpl;->setRingtoneIfNotSet(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)V

    .line 149
    goto :goto_0

    .line 143
    :sswitch_2
    const-string v0, "notification_sim2"

    invoke-static {p1, v0, p3}, Landroid/media/RingtoneManagerExtImpl;->setRingtoneIfNotSet(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)V

    .line 144
    const-string v0, "oplus_customize_default_notification_sim2"

    invoke-static {p1, v0, p3}, Landroid/media/RingtoneManagerExtImpl;->setRingtoneIfNotSet(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)V

    .line 145
    goto :goto_0

    .line 139
    :sswitch_3
    const-string v0, "oplus_customize_sms_notification_sound"

    invoke-static {p1, v0, p3}, Landroid/media/RingtoneManagerExtImpl;->setRingtoneIfNotSet(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)V

    .line 140
    const-string v0, "oplus_customize_default_sms_notification_sound"

    invoke-static {p1, v0, p3}, Landroid/media/RingtoneManagerExtImpl;->setRingtoneIfNotSet(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)V

    .line 141
    goto :goto_0

    .line 133
    :sswitch_4
    const-string v0, "alarm_alert"

    invoke-static {p1, v0}, Landroid/media/RingtoneManagerExtImpl;->isNeedSet(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-static {p1, p2, p3}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 136
    :cond_0
    const-string v0, "oplus_customize_default_alarm"

    invoke-static {p1, v0, p3}, Landroid/media/RingtoneManagerExtImpl;->setRingtoneIfNotSet(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)V

    .line 137
    goto :goto_0

    .line 127
    :sswitch_5
    const-string v0, "notification_sound"

    invoke-static {p1, v0}, Landroid/media/RingtoneManagerExtImpl;->isNeedSet(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    invoke-static {p1, p2, p3}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 130
    :cond_1
    const-string v0, "oplus_customize_default_notification"

    invoke-static {p1, v0, p3}, Landroid/media/RingtoneManagerExtImpl;->setRingtoneIfNotSet(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)V

    .line 131
    goto :goto_0

    .line 121
    :sswitch_6
    const-string v0, "ringtone"

    invoke-static {p1, v0}, Landroid/media/RingtoneManagerExtImpl;->isNeedSet(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    invoke-static {p1, p2, p3}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 124
    :cond_2
    const-string v0, "oplus_customize_default_ringtone"

    invoke-static {p1, v0, p3}, Landroid/media/RingtoneManagerExtImpl;->setRingtoneIfNotSet(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)V

    .line 125
    nop

    .line 157
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_5
        0x4 -> :sswitch_4
        0x8 -> :sswitch_3
        0x10 -> :sswitch_2
        0x20 -> :sswitch_1
        0x40 -> :sswitch_0
    .end sparse-switch
.end method

.method public blacklist updateRingtoneUriIfNeeded(Landroid/content/Context;ILjava/lang/String;)V
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "setting"    # Ljava/lang/String;

    .line 345
    move-object/from16 v6, p0

    invoke-direct/range {p0 .. p2}, Landroid/media/RingtoneManagerExtImpl;->deleteIllagalInternalColumns(Landroid/content/Context;I)V

    .line 349
    invoke-static/range {p1 .. p2}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v7

    .line 351
    .local v7, "defRingtoneUri":Landroid/net/Uri;
    if-eqz v7, :cond_7

    .line 352
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    .line 353
    .local v8, "ringtoneUri":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getActualDefaultRingtoneUri is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "OplusRingtoneManager"

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const-string v0, ""

    .line 356
    .local v0, "oldId":Ljava/lang/String;
    const-string v1, "content://media/internal"

    invoke-virtual {v8, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 357
    const-string v10, "/"

    invoke-virtual {v8, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    .line 358
    .local v11, "indexBegin":I
    const-string v1, "?"

    invoke-virtual {v8, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    .line 359
    .local v12, "indexEnd":I
    const/4 v1, -0x1

    if-eq v11, v1, :cond_0

    if-eq v12, v1, :cond_0

    add-int/lit8 v1, v11, 0x1

    if-ge v1, v12, :cond_0

    .line 360
    add-int/lit8 v1, v11, 0x1

    invoke-virtual {v8, v1, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    goto :goto_0

    .line 364
    :cond_0
    move-object v13, v0

    .end local v0    # "oldId":Ljava/lang/String;
    .local v13, "oldId":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    move-object v3, v13

    move/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/media/RingtoneManagerExtImpl;->updateRingtoneUriSettings(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 365
    const-string v0, "title"

    invoke-virtual {v7, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 366
    .local v14, "title":Ljava/lang/String;
    const/4 v1, 0x0

    .line 367
    .local v1, "newTitle":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0xc0401af

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 368
    .local v15, "label":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0xc07003d    # 1.0400093E-31f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 369
    .local v5, "titleArray":[Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    array-length v2, v5

    if-lez v2, :cond_4

    const-string v2, "P"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v6, Landroid/media/RingtoneManagerExtImpl;->mTitleMaps:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 370
    array-length v2, v5

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_3

    aget-object v3, v5, v4

    .line 371
    .local v3, "item":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 372
    move-object/from16 v17, v1

    .end local v1    # "newTitle":Ljava/lang/String;
    .local v17, "newTitle":Ljava/lang/String;
    invoke-static {v3, v10}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 373
    .local v1, "child":[Ljava/lang/String;
    move/from16 v18, v2

    array-length v2, v1

    move-object/from16 v19, v3

    .end local v3    # "item":Ljava/lang/String;
    .local v19, "item":Ljava/lang/String;
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 374
    iget-object v2, v6, Landroid/media/RingtoneManagerExtImpl;->mTitleMaps:Ljava/util/HashMap;

    move-object/from16 v16, v5

    const/4 v3, 0x0

    .end local v5    # "titleArray":[Ljava/lang/String;
    .local v16, "titleArray":[Ljava/lang/String;
    aget-object v5, v1, v3

    const/16 v20, 0x1

    aget-object v3, v1, v20

    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 373
    .end local v16    # "titleArray":[Ljava/lang/String;
    .restart local v5    # "titleArray":[Ljava/lang/String;
    :cond_1
    move-object/from16 v16, v5

    .end local v5    # "titleArray":[Ljava/lang/String;
    .restart local v16    # "titleArray":[Ljava/lang/String;
    goto :goto_2

    .line 371
    .end local v16    # "titleArray":[Ljava/lang/String;
    .end local v17    # "newTitle":Ljava/lang/String;
    .end local v19    # "item":Ljava/lang/String;
    .local v1, "newTitle":Ljava/lang/String;
    .restart local v3    # "item":Ljava/lang/String;
    .restart local v5    # "titleArray":[Ljava/lang/String;
    :cond_2
    move-object/from16 v17, v1

    move/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v16, v5

    .line 370
    .end local v1    # "newTitle":Ljava/lang/String;
    .end local v3    # "item":Ljava/lang/String;
    .end local v5    # "titleArray":[Ljava/lang/String;
    .restart local v16    # "titleArray":[Ljava/lang/String;
    .restart local v17    # "newTitle":Ljava/lang/String;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v5, v16

    move-object/from16 v1, v17

    move/from16 v2, v18

    goto :goto_1

    .end local v16    # "titleArray":[Ljava/lang/String;
    .end local v17    # "newTitle":Ljava/lang/String;
    .restart local v1    # "newTitle":Ljava/lang/String;
    .restart local v5    # "titleArray":[Ljava/lang/String;
    :cond_3
    move-object/from16 v17, v1

    move-object/from16 v16, v5

    .end local v1    # "newTitle":Ljava/lang/String;
    .end local v5    # "titleArray":[Ljava/lang/String;
    .restart local v16    # "titleArray":[Ljava/lang/String;
    .restart local v17    # "newTitle":Ljava/lang/String;
    goto :goto_3

    .line 369
    .end local v16    # "titleArray":[Ljava/lang/String;
    .end local v17    # "newTitle":Ljava/lang/String;
    .restart local v1    # "newTitle":Ljava/lang/String;
    .restart local v5    # "titleArray":[Ljava/lang/String;
    :cond_4
    move-object/from16 v17, v1

    move-object/from16 v16, v5

    .line 379
    .end local v1    # "newTitle":Ljava/lang/String;
    .end local v5    # "titleArray":[Ljava/lang/String;
    .restart local v16    # "titleArray":[Ljava/lang/String;
    .restart local v17    # "newTitle":Ljava/lang/String;
    :goto_3
    iget-object v1, v6, Landroid/media/RingtoneManagerExtImpl;->mTitleMaps:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 380
    iget-object v1, v6, Landroid/media/RingtoneManagerExtImpl;->mTitleMaps:Ljava/util/HashMap;

    invoke-virtual {v1, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v10, v1

    .end local v17    # "newTitle":Ljava/lang/String;
    .restart local v1    # "newTitle":Ljava/lang/String;
    goto :goto_4

    .line 379
    .end local v1    # "newTitle":Ljava/lang/String;
    .restart local v17    # "newTitle":Ljava/lang/String;
    :cond_5
    move-object/from16 v10, v17

    .line 382
    .end local v17    # "newTitle":Ljava/lang/String;
    .local v10, "newTitle":Ljava/lang/String;
    :goto_4
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 383
    sget-object v17, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 384
    .local v17, "baseUri":Landroid/net/Uri;
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 385
    invoke-virtual {v1, v0, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "canonical"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 386
    .local v5, "newUri":Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "try modify old title :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to uri:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    move-object v3, v13

    move/from16 v4, p2

    move-object/from16 v9, v16

    move-object/from16 v16, v5

    .end local v5    # "newUri":Landroid/net/Uri;
    .local v9, "titleArray":[Ljava/lang/String;
    .local v16, "newUri":Landroid/net/Uri;
    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/media/RingtoneManagerExtImpl;->updateRingtoneUriSettings(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;)Z

    goto :goto_5

    .line 382
    .end local v9    # "titleArray":[Ljava/lang/String;
    .end local v17    # "baseUri":Landroid/net/Uri;
    .local v16, "titleArray":[Ljava/lang/String;
    :cond_6
    move-object/from16 v9, v16

    .line 393
    .end local v8    # "ringtoneUri":Ljava/lang/String;
    .end local v10    # "newTitle":Ljava/lang/String;
    .end local v11    # "indexBegin":I
    .end local v12    # "indexEnd":I
    .end local v13    # "oldId":Ljava/lang/String;
    .end local v14    # "title":Ljava/lang/String;
    .end local v15    # "label":Ljava/lang/String;
    .end local v16    # "titleArray":[Ljava/lang/String;
    :cond_7
    :goto_5
    return-void
.end method
