.class public Landroid/app/WallpaperManagerExtImpl;
.super Ljava/lang/Object;
.source "WallpaperManagerExtImpl.java"

# interfaces
.implements Landroid/app/IWallpaperManagerExt;


# static fields
.field private static final blacklist BASE_PRODUCT_DEFAULT_DIR:Ljava/lang/String;

.field private static final blacklist BASE_WALLPAPER_DEFAULT_DIR:Ljava/lang/String; = "/decouping_wallpaper/"

.field private static final blacklist CUSTOM_LOCK_WALLPAPER_NAME:Ljava/lang/String; = "default_wallpaper_lock"

.field private static final blacklist CUSTOM_THEME_FLAG:I = 0x100

.field private static final blacklist CUSTOM_WALLPAPER:Ljava/lang/String;

.field private static final blacklist CUSTOM_WALLPAPER_NAME:Ljava/lang/String; = "default_wallpaper"

.field private static final blacklist DEFAULT_LOCK_WALLPAPER_NAME:Ljava/lang/String; = "default_wallpaper_lock"

.field private static final blacklist DEFAULT_MULTI_SYS_WALLPAPER_NAME:Ljava/lang/String; = "default_multi_sys_wallpaper"

.field private static final blacklist DEFAULT_PATH_THEME:Ljava/lang/String; = "default"

.field private static final blacklist DEFAULT_WALLPAPER_NAME:Ljava/lang/String; = "default_wallpaper"

.field private static final blacklist FLAG_LOCK_MAIN_DISPLAY:I = 0x12

.field private static final blacklist FLAG_LOCK_SUB_DISPLAY:I = 0x22

.field private static final blacklist FLAG_SYSTEM_MAIN_DISPLAY:I = 0x11

.field private static final blacklist FLAG_SYSTEM_SUB_DISPLAY:I = 0x21

.field private static final blacklist OPERATOR:Ljava/lang/String; = "operator"

.field private static final blacklist OPLUS_MODULE_DEFAULT_WALLPAPER_DIR:Ljava/lang/String; = "/decouping_wallpaper/default/"

.field private static final blacklist PHONE_COLOR_MAPS_FILE_NAME:Ljava/lang/String; = "phone_color_default_theme_maps"

.field private static final blacklist PHONE_COLOR_MAPS_FILE_SUFFIX:Ljava/lang/String; = ".xml"

.field private static final blacklist PROP_HW_PHONE_COLOR:Ljava/lang/String; = "ro.hw.phone.color"

.field private static final blacklist TAG:Ljava/lang/String; = "WallpaperManagerEx"

.field private static final blacklist TAG_DEFAULT_LOCK_WALLPAPER:Ljava/lang/String; = "DefaultWallpaperLock"

.field private static final blacklist TAG_DEFAULT_WALLPAPER:Ljava/lang/String; = "DefaultWallpaper"

.field private static final blacklist TAG_DEFAULT_WALLPAPER_COMPONENT:Ljava/lang/String; = "DefaultWallpaperComponent"

.field private static final blacklist TAG_PHONE_COLOR:Ljava/lang/String; = "PhoneColor"

.field private static final blacklist WALLPAPER_CUSTOM_FILE_DIR:Ljava/lang/String; = "/media/wallpaper/"

.field private static final blacklist WALLPAPER_SUFFIX:Ljava/lang/String; = ".png"

.field private static final blacklist XML_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static blacklist sCurrentCustomThemeDir:Ljava/lang/String;

.field private static blacklist sDefaultWallpaperCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sDefaultWallpaperCacheUserId:I

.field private static blacklist sDefaultWallpaperComponent:Landroid/content/ComponentName;

.field private static blacklist sDefaultWallpaperComponentInited:Z

.field private static volatile blacklist sInstance:Landroid/app/WallpaperManagerExtImpl;

.field private static blacklist sIsCurrentCustomTheme:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getOplusProductDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/decouping_wallpaper/default/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/WallpaperManagerExtImpl;->BASE_PRODUCT_DEFAULT_DIR:Ljava/lang/String;

    .line 63
    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyCompanyDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/WallpaperManagerExtImpl;->CUSTOM_WALLPAPER:Ljava/lang/String;

    .line 90
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/WallpaperManagerExtImpl;->sIsCurrentCustomTheme:Z

    .line 91
    const-string v1, "default"

    sput-object v1, Landroid/app/WallpaperManagerExtImpl;->sCurrentCustomThemeDir:Ljava/lang/String;

    .line 92
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    sput-object v1, Landroid/app/WallpaperManagerExtImpl;->sDefaultWallpaperCache:Ljava/util/Map;

    .line 93
    sput v0, Landroid/app/WallpaperManagerExtImpl;->sDefaultWallpaperCacheUserId:I

    .line 94
    const/4 v1, 0x0

    sput-object v1, Landroid/app/WallpaperManagerExtImpl;->sDefaultWallpaperComponent:Landroid/content/ComponentName;

    .line 95
    sput-boolean v0, Landroid/app/WallpaperManagerExtImpl;->sDefaultWallpaperComponentInited:Z

    .line 97
    sput-object v1, Landroid/app/WallpaperManagerExtImpl;->sInstance:Landroid/app/WallpaperManagerExtImpl;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "base"    # Ljava/lang/Object;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    return-void
.end method

.method private static declared-synchronized blacklist addDefaultWallpaperCache(ILjava/lang/String;)V
    .locals 3
    .param p0, "which"    # I
    .param p1, "wallpaper"    # Ljava/lang/String;

    const-class v0, Landroid/app/WallpaperManagerExtImpl;

    monitor-enter v0

    .line 159
    :try_start_0
    sget-object v1, Landroid/app/WallpaperManagerExtImpl;->sDefaultWallpaperCache:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    monitor-exit v0

    return-void

    .line 158
    .end local p0    # "which":I
    .end local p1    # "wallpaper":Ljava/lang/String;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static blacklist findPhoneColorDefaultWallpaper(Ljava/lang/String;)[Ljava/lang/String;
    .locals 14
    .param p0, "phoneColorName"    # Ljava/lang/String;

    .line 394
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "WallpaperManagerEx"

    if-eqz v0, :cond_0

    .line 395
    const-string v0, "findPhoneColorDefaultWallpaper: The phoneColorName is empty!"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    return-object v1

    .line 399
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 400
    .local v0, "defaultTheme":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 402
    .local v3, "inputStream":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 403
    .local v4, "phoneColorMapFile":Ljava/io/File;
    const-string v5, "findPhoneColorDefaultWallpaper: Closing inputStream. e = "

    const/4 v6, 0x0

    if-nez v4, :cond_2

    .line 404
    :try_start_0
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Landroid/app/WallpaperManagerExtImpl;->BASE_PRODUCT_DEFAULT_DIR:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "phone_color_default_theme_maps"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".xml"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v7

    .line 405
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 406
    const-string v7, "findPhoneColorDefaultWallpaper: The phone color map file is not exists!"

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    nop

    .line 454
    if-eqz v3, :cond_1

    .line 456
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 459
    goto :goto_0

    .line 457
    :catch_0
    move-exception v6

    .line 458
    .local v6, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-object v1

    .line 454
    .end local v4    # "phoneColorMapFile":Ljava/io/File;
    :catchall_0
    move-exception v1

    goto/16 :goto_9

    .line 451
    :catch_1
    move-exception v1

    goto/16 :goto_7

    .line 410
    .restart local v4    # "phoneColorMapFile":Ljava/io/File;
    :cond_2
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "findPhoneColorDefaultWallpaper: phoneColorMapFile = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v7

    .line 413
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 414
    .local v7, "pullParser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v8, "UTF-8"

    invoke-interface {v7, v3, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 416
    const/4 v8, 0x0

    .line 417
    .local v8, "foundColorName":Ljava/lang/String;
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v9

    .line 418
    .local v9, "event":I
    :goto_1
    const/4 v10, 0x1

    if-eq v9, v10, :cond_8

    .line 419
    packed-switch v9, :pswitch_data_0

    :pswitch_0
    goto :goto_3

    .line 423
    :pswitch_1
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 424
    .local v11, "pullParserName":Ljava/lang/String;
    const-string v12, "PhoneColor"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 425
    new-instance v12, Ljava/lang/String;

    invoke-interface {v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 426
    .local v12, "colorName":Ljava/lang/String;
    invoke-virtual {p0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 427
    move-object v8, v12

    goto :goto_2

    .line 429
    :cond_3
    const/4 v8, 0x0

    .line 430
    aput-object v1, v0, v6

    .line 431
    aput-object v1, v0, v10

    .line 434
    .end local v12    # "colorName":Ljava/lang/String;
    :cond_4
    :goto_2
    if-eqz v8, :cond_6

    .line 435
    const-string v12, "DefaultWallpaper"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 436
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v0, v6

    goto :goto_3

    .line 437
    :cond_5
    const-string v12, "DefaultWallpaperLock"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 438
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v0, v10

    goto :goto_3

    .line 421
    .end local v11    # "pullParserName":Ljava/lang/String;
    :pswitch_2
    nop

    .line 445
    :cond_6
    :goto_3
    aget-object v11, v0, v6

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7

    aget-object v10, v0, v10

    .line 446
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 447
    goto :goto_4

    .line 449
    :cond_7
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v9, v10

    goto :goto_1

    .line 454
    .end local v4    # "phoneColorMapFile":Ljava/io/File;
    .end local v7    # "pullParser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "foundColorName":Ljava/lang/String;
    .end local v9    # "event":I
    :cond_8
    :goto_4
    nop

    .line 456
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 459
    :goto_5
    goto :goto_8

    .line 457
    :catch_2
    move-exception v1

    .line 458
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_6
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_5

    .line 452
    .restart local v1    # "e":Ljava/lang/Exception;
    :goto_7
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "findPhoneColorDefaultWallpaper: e = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 454
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_9

    .line 456
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_5

    .line 457
    :catch_3
    move-exception v1

    .line 458
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_6

    .line 463
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_9
    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findPhoneColorDefaultWallpaper: defaultTheme = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v4, v0, v6

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " defaultTheme[]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    return-object v0

    .line 454
    :goto_9
    if-eqz v3, :cond_a

    .line 456
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 459
    goto :goto_a

    .line 457
    :catch_4
    move-exception v4

    .line 458
    .local v4, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_a
    :goto_a
    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static blacklist findPhoneColorDefaultWallpaperComponet(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "phoneColorName"    # Ljava/lang/String;

    .line 523
    const-string v0, "findPhoneColorDefaultWallpaperComponet: Closing inputStream. e = "

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "WallpaperManagerEx"

    if-eqz v1, :cond_0

    .line 524
    const-string v1, "findPhoneColorDefaultWallpaperComponet: The phoneColorName is empty!"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_0
    const/4 v1, 0x0

    .line 528
    .local v1, "defaultWallpaperComponet":Ljava/lang/String;
    const/4 v3, 0x0

    .line 529
    .local v3, "noColorDefaultWallpaperComponet":Ljava/lang/String;
    const/4 v4, 0x0

    .line 531
    .local v4, "inputStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Landroid/app/WallpaperManagerExtImpl;->BASE_PRODUCT_DEFAULT_DIR:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "phone_color_default_theme_maps"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 532
    .local v5, "phoneColorMapFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 533
    const-string v6, "findPhoneColorDefaultWallpaperComponet: The phone color map file is not exists!"

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 534
    const/4 v6, 0x0

    .line 585
    if-eqz v4, :cond_1

    .line 587
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 590
    goto :goto_0

    .line 588
    :catch_0
    move-exception v7

    .line 589
    .local v7, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-object v6

    .line 537
    :cond_2
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "findPhoneColorDefaultWallpaperComponet: phoneColorMapFile = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v4, v6

    .line 540
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 541
    .local v6, "xmlPullParser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v7, "UTF-8"

    invoke-interface {v6, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 543
    const/4 v7, 0x0

    .line 544
    .local v7, "foundColorName":Z
    const/4 v8, 0x0

    .line 545
    .local v8, "foundWallpaperName":Z
    const/4 v9, 0x0

    .line 546
    .local v9, "inPhoneColorTag":Z
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 547
    .local v10, "eventType":I
    :goto_1
    const/4 v11, 0x1

    if-eq v10, v11, :cond_8

    .line 548
    const-string v11, "PhoneColor"

    packed-switch v10, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    .line 572
    :pswitch_1
    :try_start_3
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 573
    const/4 v9, 0x0

    goto :goto_2

    .line 552
    :pswitch_2
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 553
    .local v12, "tagName":Ljava/lang/String;
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 554
    const/4 v9, 0x1

    .line 555
    new-instance v11, Ljava/lang/String;

    const/4 v13, 0x0

    invoke-interface {v6, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 556
    .local v11, "colorName":Ljava/lang/String;
    invoke-virtual {p0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 557
    const/4 v7, 0x1

    .line 559
    .end local v11    # "colorName":Ljava/lang/String;
    :cond_3
    goto :goto_2

    :cond_4
    const-string v11, "DefaultWallpaperComponent"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 560
    if-eqz v7, :cond_5

    .line 561
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v11

    move-object v1, v11

    .line 562
    const/4 v8, 0x1

    goto :goto_2

    .line 563
    :cond_5
    if-nez v9, :cond_6

    .line 564
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v11

    move-object v3, v11

    .line 565
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 566
    const/4 v8, 0x1

    goto :goto_2

    .line 550
    .end local v12    # "tagName":Ljava/lang/String;
    :pswitch_3
    nop

    .line 577
    :cond_6
    :goto_2
    if-eqz v8, :cond_7

    .line 578
    goto :goto_3

    .line 580
    :cond_7
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v10, v11

    goto :goto_1

    .line 585
    .end local v5    # "phoneColorMapFile":Ljava/io/File;
    .end local v6    # "xmlPullParser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "foundColorName":Z
    .end local v8    # "foundWallpaperName":Z
    .end local v9    # "inPhoneColorTag":Z
    .end local v10    # "eventType":I
    :cond_8
    :goto_3
    nop

    .line 587
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 590
    :goto_4
    goto :goto_6

    .line 588
    :catch_1
    move-exception v5

    .line 589
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    :goto_5
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v5    # "e":Ljava/lang/Exception;
    goto :goto_4

    .line 585
    :catchall_0
    move-exception v5

    goto :goto_7

    .line 582
    :catch_2
    move-exception v5

    .line 583
    .restart local v5    # "e":Ljava/lang/Exception;
    :try_start_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "findPhoneColorDefaultWallpaperComponet: e = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 585
    nop

    .end local v5    # "e":Ljava/lang/Exception;
    if-eqz v4, :cond_9

    .line 587
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_4

    .line 588
    :catch_3
    move-exception v5

    .line 589
    .restart local v5    # "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_5

    .line 594
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_9
    :goto_6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 595
    move-object v1, v3

    .line 597
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findPhoneColorDefaultWallpaperComponet: defaultWallpaperComponet = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    return-object v1

    .line 585
    :goto_7
    if-eqz v4, :cond_b

    .line 587
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 590
    goto :goto_8

    .line 588
    :catch_4
    move-exception v6

    .line 589
    .local v6, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_b
    :goto_8
    throw v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static blacklist getColorFileName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "which"    # I

    .line 278
    const/4 v0, 0x0

    .line 279
    .local v0, "fileName":Ljava/lang/String;
    const-string v1, "ro.hw.phone.color"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, "hwPhoneColor":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "WallpaperManagerEx"

    if-nez v2, :cond_5

    .line 281
    invoke-static {v1}, Landroid/app/WallpaperManagerExtImpl;->findPhoneColorDefaultWallpaper(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 282
    .local v2, "wallpaper":[Ljava/lang/String;
    if-eqz v2, :cond_4

    const/4 v4, 0x0

    aget-object v5, v2, v4

    .line 283
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v5, 0x1

    aget-object v6, v2, v5

    .line 284
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 285
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Landroid/app/WallpaperManagerExtImpl;->BASE_PRODUCT_DEFAULT_DIR:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v4, v2, v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".png"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 286
    .local v4, "systemFileName":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v2, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 287
    .local v6, "lockFileName":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 288
    .local v7, "systemFile":Ljava/io/File;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 289
    .local v8, "lockFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 290
    invoke-static {v5, v4}, Landroid/app/WallpaperManagerExtImpl;->addDefaultWallpaperCache(ILjava/lang/String;)V

    .line 291
    if-ne p1, v5, :cond_1

    .line 292
    move-object v0, v4

    goto :goto_0

    .line 295
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getColorFileName system not exist system =  "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_1
    :goto_0
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 298
    const/4 v3, 0x2

    invoke-static {v3, v6}, Landroid/app/WallpaperManagerExtImpl;->addDefaultWallpaperCache(ILjava/lang/String;)V

    .line 299
    if-ne p1, v3, :cond_3

    .line 300
    move-object v0, v6

    goto :goto_1

    .line 303
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getColorFileName lock not exist  lock  = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    .end local v4    # "systemFileName":Ljava/lang/String;
    .end local v6    # "lockFileName":Ljava/lang/String;
    .end local v7    # "systemFile":Ljava/io/File;
    .end local v8    # "lockFile":Ljava/io/File;
    :cond_3
    :goto_1
    goto :goto_2

    .line 306
    :cond_4
    const-string v4, "getColorFileName phoneColorDefaultTheme is empty"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    .end local v2    # "wallpaper":[Ljava/lang/String;
    :goto_2
    goto :goto_3

    .line 309
    :cond_5
    const-string v2, "getColorFileName hwPhoneColor is empty"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :goto_3
    return-object v0
.end method

.method public static blacklist getCurrentCustomThemeDir(Landroid/content/Context;I)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 618
    const-string v0, "/"

    const-string v1, "default"

    .line 619
    .local v1, "customThemeDir":Ljava/lang/String;
    const-string v2, "WallpaperManagerEx"

    if-nez p0, :cond_0

    .line 620
    const-string v0, "getCurrentCustomThemeDir: context is null"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    return-object v1

    .line 625
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "custom_theme_path_setting"

    invoke-static {v3, v4, p1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 626
    .local v3, "customThemePath":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/oplus/theme/OplusThemeUtil;->CUSTOM_THEME_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 627
    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 628
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 630
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 631
    .local v0, "tempDir":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_2

    .line 632
    move-object v1, v0

    .line 638
    .end local v0    # "tempDir":Ljava/lang/String;
    .end local v3    # "customThemePath":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 635
    :catch_0
    move-exception v0

    .line 636
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentCustomThemeDir: e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    const-string v1, "default"

    .line 640
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentCustomThemeDir: customThemeDir = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    return-object v1
.end method

.method private static blacklist getCurrentUserId(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 649
    const/4 v0, 0x0

    .line 651
    .local v0, "userId":I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 657
    goto :goto_0

    .line 652
    :catch_0
    move-exception v1

    .line 653
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentUserId: e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WallpaperManagerEx"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    if-eqz p0, :cond_0

    .line 655
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v0

    .line 658
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return v0
.end method

.method public static blacklist getCustomLiveWallpaperConfig()Ljava/io/File;
    .locals 3

    .line 614
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/app/WallpaperManagerExtImpl;->CUSTOM_WALLPAPER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/media/wallpaper/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "phone_color_default_theme_maps.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static blacklist getCustomThemeFileName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "which"    # I

    .line 351
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v0

    .line 352
    .local v0, "userId":I
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 353
    invoke-static {p0}, Landroid/app/WallpaperManagerExtImpl;->getCurrentUserId(Landroid/content/Context;)I

    move-result v0

    .line 355
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCustomThemeFileName: userId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WallpaperManagerEx"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-static {v0}, Landroid/app/WallpaperManagerExtImpl;->isCurrentCustomTheme(I)Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_1

    .line 357
    return-object v4

    .line 360
    :cond_1
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyCompanyDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/media/wallpaper/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p0, v0}, Landroid/app/WallpaperManagerExtImpl;->getCurrentCustomThemeDir(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 361
    .local v2, "customWallpaperDir":Ljava/io/File;
    if-ne p1, v1, :cond_3

    .line 362
    new-instance v1, Ljava/io/File;

    const-string v5, "default_wallpaper_lock.png"

    invoke-direct {v1, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 363
    .local v1, "customWallpaperLock":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCustomThemeFileName. customWallpaperLock = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 365
    const-string v4, "getCustomThemeFileName customWallpaperLock exist"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 368
    :cond_2
    const-string v5, "getCustomThemeFileName customWallpaperLock not exist"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    .end local v1    # "customWallpaperLock":Ljava/io/File;
    goto :goto_0

    .line 371
    :cond_3
    new-instance v1, Ljava/io/File;

    const-string v5, "default_wallpaper.png"

    invoke-direct {v1, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 372
    .local v1, "customWallpaperSystem":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCustomThemeFileName. customWallpaperSystem = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 374
    const-string v4, "getCustomThemeFileName customWallpaperSystem exist"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 377
    :cond_4
    const-string v5, "getCustomThemeFileName customWallpaperSystem not exist"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    .end local v1    # "customWallpaperSystem":Ljava/io/File;
    :goto_0
    return-object v4
.end method

.method private static blacklist getDefaultWallpaperComponetString(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 512
    const-string v0, "ro.hw.phone.color"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 513
    .local v0, "hwPhoneColor":Ljava/lang/String;
    invoke-static {v0}, Landroid/app/WallpaperManagerExtImpl;->findPhoneColorDefaultWallpaperComponet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getDefaultWallpaperFileName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "which"    # I

    .line 174
    invoke-static {p1}, Landroid/app/WallpaperManagerExtImpl;->getCurrentUserId(Landroid/content/Context;)I

    move-result v0

    .line 175
    .local v0, "userId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDefaultWallpaperFileName: userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WallpaperManagerEx"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-static {v0}, Landroid/app/WallpaperManagerExtImpl;->isCurrentCustomTheme(I)Z

    move-result v1

    sget-boolean v3, Landroid/app/WallpaperManagerExtImpl;->sIsCurrentCustomTheme:Z

    if-eq v1, v3, :cond_0

    .line 177
    sget-object v1, Landroid/app/WallpaperManagerExtImpl;->sDefaultWallpaperCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 178
    sget-boolean v1, Landroid/app/WallpaperManagerExtImpl;->sIsCurrentCustomTheme:Z

    xor-int/lit8 v1, v1, 0x1

    sput-boolean v1, Landroid/app/WallpaperManagerExtImpl;->sIsCurrentCustomTheme:Z

    .line 180
    :cond_0
    invoke-static {p1, v0}, Landroid/app/WallpaperManagerExtImpl;->getCurrentCustomThemeDir(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, "currentCustomThemeDir":Ljava/lang/String;
    sget-object v3, Landroid/app/WallpaperManagerExtImpl;->sCurrentCustomThemeDir:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 182
    sget-object v3, Landroid/app/WallpaperManagerExtImpl;->sDefaultWallpaperCache:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 183
    sput-object v1, Landroid/app/WallpaperManagerExtImpl;->sCurrentCustomThemeDir:Ljava/lang/String;

    .line 186
    :cond_1
    sget v3, Landroid/app/WallpaperManagerExtImpl;->sDefaultWallpaperCacheUserId:I

    if-eq v0, v3, :cond_2

    .line 187
    sget-object v3, Landroid/app/WallpaperManagerExtImpl;->sDefaultWallpaperCache:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 188
    const/4 v3, 0x0

    sput v3, Landroid/app/WallpaperManagerExtImpl;->sDefaultWallpaperCacheUserId:I

    .line 191
    :cond_2
    sget-object v3, Landroid/app/WallpaperManagerExtImpl;->sDefaultWallpaperCache:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 192
    .local v3, "cacheDefaultWallpaper":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDefaultWallpaperFileName cacheDefaultWallpaper = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " which = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 194
    return-object v3

    .line 197
    :cond_3
    const/4 v4, 0x0

    .line 200
    .local v4, "fileName":Ljava/lang/String;
    invoke-static {p1, p2}, Landroid/app/WallpaperManagerExtImpl;->getMyEngineeringFileName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 203
    if-nez v4, :cond_4

    invoke-static {}, Lcom/oplus/multiuser/OplusMultiUserManager;->getInstance()Lcom/oplus/multiuser/OplusMultiUserManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/oplus/multiuser/OplusMultiUserManager;->isMultiSystemUserId(I)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v0}, Landroid/app/WallpaperManagerExtImpl;->isCurrentCustomTheme(I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 204
    invoke-static {p1, p2}, Landroid/app/WallpaperManagerExtImpl;->getMultiSystemFileName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 207
    :cond_4
    if-nez v4, :cond_5

    .line 208
    invoke-virtual {p0, p1, p2}, Landroid/app/WallpaperManagerExtImpl;->getModuleWallpaperFileName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 211
    :cond_5
    if-nez v4, :cond_6

    .line 212
    invoke-static {p1, p2}, Landroid/app/WallpaperManagerExtImpl;->getOperatorFileName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 215
    :cond_6
    if-nez v4, :cond_7

    .line 216
    invoke-static {p1, p2}, Landroid/app/WallpaperManagerExtImpl;->getCustomThemeFileName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 219
    :cond_7
    if-nez v4, :cond_8

    .line 220
    invoke-static {p1, p2}, Landroid/app/WallpaperManagerExtImpl;->getColorFileName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 223
    :cond_8
    if-nez v4, :cond_9

    .line 224
    invoke-static {p1, p2}, Landroid/app/WallpaperManagerExtImpl;->getNoColorFileName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 226
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDefaultWallpaperFileName final fileName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 228
    invoke-static {p2, v4}, Landroid/app/WallpaperManagerExtImpl;->addDefaultWallpaperCache(ILjava/lang/String;)V

    .line 229
    sput v0, Landroid/app/WallpaperManagerExtImpl;->sDefaultWallpaperCacheUserId:I

    .line 231
    :cond_a
    return-object v4
.end method

.method private static blacklist getDefaultWallpaperResId(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 155
    const v0, 0xc080016

    return v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Landroid/app/IWallpaperManagerExt;
    .locals 2
    .param p0, "base"    # Ljava/lang/Object;

    .line 100
    sget-object v0, Landroid/app/WallpaperManagerExtImpl;->sInstance:Landroid/app/WallpaperManagerExtImpl;

    if-nez v0, :cond_1

    .line 101
    const-class v0, Landroid/app/WallpaperManagerExtImpl;

    monitor-enter v0

    .line 102
    :try_start_0
    sget-object v1, Landroid/app/WallpaperManagerExtImpl;->sInstance:Landroid/app/WallpaperManagerExtImpl;

    if-nez v1, :cond_0

    .line 103
    new-instance v1, Landroid/app/WallpaperManagerExtImpl;

    invoke-direct {v1, p0}, Landroid/app/WallpaperManagerExtImpl;-><init>(Ljava/lang/Object;)V

    sput-object v1, Landroid/app/WallpaperManagerExtImpl;->sInstance:Landroid/app/WallpaperManagerExtImpl;

    .line 105
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 107
    :cond_1
    :goto_0
    sget-object v0, Landroid/app/WallpaperManagerExtImpl;->sInstance:Landroid/app/WallpaperManagerExtImpl;

    return-object v0
.end method

.method private static blacklist getMultiSystemFileName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "which"    # I

    .line 248
    const/4 v0, 0x0

    .line 249
    .local v0, "fileName":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/app/WallpaperManagerExtImpl;->BASE_PRODUCT_DEFAULT_DIR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "default_multi_sys_wallpaper"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 251
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 252
    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMultiSystemFileName default fileName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WallpaperManagerEx"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 254
    const-string v2, "getMultiSystemFileName default fileName not exist"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/4 v0, 0x0

    .line 258
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    return-object v0
.end method

.method private static blacklist getMyEngineeringFileName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "which"    # I

    .line 235
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyEngineeringDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/media/wallpaper"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 236
    .local v0, "engineerWallpaperDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "default_wallpaper.png"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 237
    .local v1, "customWallpaper":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMyEngineeringFileName. customWallpaper = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WallpaperManagerEx"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 239
    const-string v2, "getMyEngineeringFileName customWallpaper dir exist"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 242
    :cond_0
    const-string v2, "getMyEngineeringFileName customWallpaper dir not exist"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const/4 v2, 0x0

    return-object v2
.end method

.method private static blacklist getNoColorFileName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "which"    # I

    .line 262
    const/4 v0, 0x0

    .line 263
    .local v0, "fileName":Ljava/lang/String;
    const-string v1, ".png"

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 264
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/app/WallpaperManagerExtImpl;->BASE_PRODUCT_DEFAULT_DIR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "default_wallpaper_lock"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 266
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/app/WallpaperManagerExtImpl;->BASE_PRODUCT_DEFAULT_DIR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "default_wallpaper"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 268
    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 269
    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNoColorFileName default fileName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WallpaperManagerEx"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 271
    const-string v2, "getNoColorFileName default fileName not exist"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const/4 v0, 0x0

    .line 274
    :cond_1
    return-object v0
.end method

.method private static blacklist getOperatorFileName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "which"    # I

    .line 315
    const/4 v0, 0x0

    .line 316
    .local v0, "fileName":Ljava/lang/String;
    const-string v1, "ro.vendor.oplus.operator"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 317
    .local v1, "sysOperatorName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "WallpaperManagerEx"

    if-eqz v2, :cond_3

    .line 318
    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v2

    const-string v4, "oplus.software.wallpaper_carrier_tim"

    invoke-virtual {v2, v4}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 319
    const-string v1, "tim"

    goto :goto_0

    .line 320
    :cond_0
    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v2

    const-string v4, "oplus.software.wallpaper_carrier_claro"

    invoke-virtual {v2, v4}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 321
    const-string v1, "claro"

    goto :goto_0

    .line 322
    :cond_1
    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v2

    const-string v4, "oplus.software.wallpaper_carrier_telcel"

    invoke-virtual {v2, v4}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 323
    const-string v1, "telcel"

    .line 325
    :cond_2
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sysOperatorName is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 329
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 330
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 331
    const/4 v2, 0x2

    const-string v4, ".png"

    const-string v5, "operator"

    const-string v6, "_"

    if-ne p1, v2, :cond_4

    .line 332
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Landroid/app/WallpaperManagerExtImpl;->BASE_PRODUCT_DEFAULT_DIR:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "default_wallpaper_lock"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 335
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Landroid/app/WallpaperManagerExtImpl;->BASE_PRODUCT_DEFAULT_DIR:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "default_wallpaper"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 338
    :goto_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 339
    .local v2, "file":Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getOperatorFileName operator fileName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_5

    .line 341
    const-string v4, "getOperatorFileName operator not exist "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const/4 v0, 0x0

    .line 344
    .end local v2    # "file":Ljava/io/File;
    :cond_5
    goto :goto_2

    .line 345
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOperatorFileName valid operator  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :goto_2
    return-object v0
.end method

.method public static blacklist isCtsTest()Z
    .locals 2

    .line 645
    const-string v0, "persist.sys.permission.enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method

.method private static blacklist isCurrentCustomTheme(I)Z
    .locals 7
    .param p0, "userId"    # I

    .line 145
    const-string v0, "persist.sys.themeflag"

    .line 146
    .local v0, "key":Ljava/lang/String;
    if-lez p0, :cond_0

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    :cond_0
    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 150
    .local v3, "themeFlag":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isCurrentCustomTheme. themeFlag = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "WallpaperManagerEx"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const-wide/16 v5, 0x100

    and-long/2addr v5, v3

    cmp-long v1, v5, v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static blacklist isCustomThemeStaticWallpaper(Landroid/content/Context;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 610
    invoke-static {p1}, Landroid/app/WallpaperManagerExtImpl;->isCurrentCustomTheme(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/app/WallpaperManagerExtImpl;->getCustomLiveWallpaperConfig()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static blacklist openDefaultWallpaperFromRes(Landroid/content/Context;I)Ljava/io/InputStream;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "which"    # I

    .line 384
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0}, Landroid/app/WallpaperManagerExtImpl;->getDefaultWallpaperResId(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method private blacklist supportSeparateWallpaper()Z
    .locals 2

    .line 687
    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v0

    .line 688
    const-string v1, "oplus.software.wallpaper.separate_wallpaper_for_multi_display"

    invoke-virtual {v0, v1}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    .line 687
    return v0
.end method


# virtual methods
.method public blacklist getDarkModeWallpaperWindowAlpha(Landroid/content/Context;FLandroid/service/wallpaper/WallpaperService$Engine;)F
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "alpha"    # F
    .param p3, "engine"    # Landroid/service/wallpaper/WallpaperService$Engine;

    .line 603
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/service/wallpaper/WallpaperService$Engine;->isPreview()Z

    move-result v0

    if-nez v0, :cond_0

    .line 604
    invoke-static {p1}, Landroid/service/wallpaper/OplusWallpaperServiceHelper;->getDarkModeWallpaperWindowAlpha(Landroid/content/Context;)F

    move-result v0

    return v0

    .line 606
    :cond_0
    return p2
.end method

.method public blacklist getDefaultWallpaperComponent(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 141
    invoke-static {p1}, Landroid/app/OplusWallpaperManagerHelper;->getDefaultWallpaperComponent(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getModuleWallpaperFileName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "which"    # I

    .line 479
    const-string v0, "WallpaperManagerEx"

    const/4 v1, 0x3

    const/4 v2, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyCompanyDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    .line 480
    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyCarrierDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v1, v5

    .line 481
    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyBigballDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v1, v5

    .line 483
    .local v1, "imgMouleDirs":[Ljava/lang/String;
    array-length v3, v1

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v6, v1, v4

    .line 484
    .local v6, "wallpaperDir":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getModuleWallpaperFileName:current module: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/decouping_wallpaper/default/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 486
    .local v7, "oplusCustomWallpaperDir":Ljava/io/File;
    if-ne p2, v5, :cond_1

    .line 487
    new-instance v8, Ljava/io/File;

    const-string v9, "default_wallpaper_lock.png"

    invoke-direct {v8, v7, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 488
    .local v8, "oplusCustomWallpaperLock":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 489
    const-string v3, "getModuleWallpaperFileName WallpaperLock exist in this module"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 492
    :cond_0
    const-string v9, "getModuleWallpaperFileName WallpaperLock not exist in this module"

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    nop

    .end local v8    # "oplusCustomWallpaperLock":Ljava/io/File;
    goto :goto_1

    .line 495
    :cond_1
    new-instance v8, Ljava/io/File;

    const-string v9, "default_wallpaper.png"

    invoke-direct {v8, v7, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 496
    .local v8, "oplusCustomWallpaperSystem":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 497
    const-string v3, "getModuleWallpaperFileName WallpaperSystem exist in this module"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 500
    :cond_2
    const-string v9, "getModuleWallpaperFileName WallpaperSystem not exist in this module"

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    .end local v6    # "wallpaperDir":Ljava/lang/String;
    .end local v7    # "oplusCustomWallpaperDir":Ljava/io/File;
    .end local v8    # "oplusCustomWallpaperSystem":Ljava/io/File;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 504
    :cond_3
    return-object v2

    .line 505
    .end local v1    # "imgMouleDirs":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 506
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getModuleWallpaperFileName: e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    return-object v2
.end method

.method public blacklist getWallpaperType(I)I
    .locals 1
    .param p1, "which"    # I

    .line 665
    and-int/lit8 v0, p1, 0x3

    return v0
.end method

.method public blacklist isNotAvailableWhichWithSinglePhysicalDisplayFlag(I)Z
    .locals 5
    .param p1, "which"    # I

    .line 670
    invoke-direct {p0}, Landroid/app/WallpaperManagerExtImpl;->supportSeparateWallpaper()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 671
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 673
    .local v0, "availableWhichValues":[I
    const/4 v2, 0x1

    .line 674
    .local v2, "isNotAvailable":Z
    array-length v3, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget v4, v0, v1

    .line 675
    .local v4, "whichValues":I
    if-ne p1, v4, :cond_0

    .line 676
    const/4 v2, 0x0

    .line 677
    goto :goto_1

    .line 674
    .end local v4    # "whichValues":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 680
    :cond_1
    :goto_1
    return v2

    .line 683
    .end local v0    # "availableWhichValues":[I
    .end local v2    # "isNotAvailable":Z
    :cond_2
    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    move v1, v0

    :cond_3
    return v1

    nop

    :array_0
    .array-data 4
        0x1
        0x11
        0x21
        0x2
        0x12
        0x22
    .end array-data
.end method

.method public blacklist openDefaultWallpaper(Landroid/content/Context;I)Ljava/io/InputStream;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "which"    # I

    .line 116
    const-string v0, "WallpaperManagerEx"

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 117
    .local v1, "startTime":J
    const/4 v3, 0x0

    .line 118
    .local v3, "inputStream":Ljava/io/InputStream;
    invoke-direct {p0, p1, p2}, Landroid/app/WallpaperManagerExtImpl;->getDefaultWallpaperFileName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 119
    .local v4, "defaultWallpaperFileName":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v5, :cond_0

    .line 121
    :try_start_1
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v5

    .line 125
    goto :goto_0

    .line 122
    :catch_0
    move-exception v5

    .line 123
    .local v5, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 124
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "openDefaultWallpaper. failed to open "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , e = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    if-nez v3, :cond_1

    .line 128
    invoke-static {p1, p2}, Landroid/app/WallpaperManagerExtImpl;->openDefaultWallpaperFromRes(Landroid/content/Context;I)Ljava/io/InputStream;

    move-result-object v5

    move-object v3, v5

    .line 130
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    .line 131
    .local v5, "costTime":J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "openDefaultWallpaper. costTime = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , defaultWallpaperFileName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , which = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 132
    return-object v3

    .line 133
    .end local v1    # "startTime":J
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "defaultWallpaperFileName":Ljava/lang/String;
    .end local v5    # "costTime":J
    :catch_1
    move-exception v1

    .line 134
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openDefaultWallpaper: e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v0, 0x0

    return-object v0
.end method
