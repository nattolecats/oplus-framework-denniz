.class public Landroid/app/OplusWallpaperManagerHelper;
.super Ljava/lang/Object;
.source "OplusWallpaperManagerHelper.java"


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

.field private static final blacklist OPERATOR:Ljava/lang/String; = "operator"

.field private static final blacklist OPLUS_MODULE_DEFAULT_WALLPAPER_DIR:Ljava/lang/String; = "/decouping_wallpaper/default/"

.field private static final blacklist PHONE_COLOR_MAPS_FILE_NAME:Ljava/lang/String; = "phone_color_default_theme_maps"

.field private static final blacklist PHONE_COLOR_MAPS_FILE_SUFFIX:Ljava/lang/String; = ".xml"

.field private static final blacklist PROP_HW_PHONE_COLOR:Ljava/lang/String; = "ro.hw.phone.color"

.field private static final blacklist TAG:Ljava/lang/String; = "OplusWallpaperManagerHelper"

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

.field private static blacklist sDefaultWallpaperComponent:Landroid/content/ComponentName;

.field private static blacklist sDefaultWallpaperComponentInited:Z

.field private static blacklist sIsCurrentCustomTheme:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 57
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

    sput-object v0, Landroid/app/OplusWallpaperManagerHelper;->BASE_PRODUCT_DEFAULT_DIR:Ljava/lang/String;

    .line 59
    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyCompanyDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/OplusWallpaperManagerHelper;->CUSTOM_WALLPAPER:Ljava/lang/String;

    .line 78
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/OplusWallpaperManagerHelper;->sIsCurrentCustomTheme:Z

    .line 79
    const-string v1, "default"

    sput-object v1, Landroid/app/OplusWallpaperManagerHelper;->sCurrentCustomThemeDir:Ljava/lang/String;

    .line 80
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    sput-object v1, Landroid/app/OplusWallpaperManagerHelper;->sDefaultWallpaperCache:Ljava/util/Map;

    .line 81
    const/4 v1, 0x0

    sput-object v1, Landroid/app/OplusWallpaperManagerHelper;->sDefaultWallpaperComponent:Landroid/content/ComponentName;

    .line 82
    sput-boolean v0, Landroid/app/OplusWallpaperManagerHelper;->sDefaultWallpaperComponentInited:Z

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized blacklist addDefaultWallpaperCache(ILjava/lang/String;)V
    .locals 3
    .param p0, "which"    # I
    .param p1, "wallpaper"    # Ljava/lang/String;

    const-class v0, Landroid/app/OplusWallpaperManagerHelper;

    monitor-enter v0

    .line 164
    :try_start_0
    sget-object v1, Landroid/app/OplusWallpaperManagerHelper;->sDefaultWallpaperCache:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    monitor-exit v0

    return-void

    .line 163
    .end local p0    # "which":I
    .end local p1    # "wallpaper":Ljava/lang/String;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static whitelist checkCustomizeWallpaperDir()Z
    .locals 10

    .line 508
    const-string v0, "OplusWallpaperManagerHelper"

    const/4 v1, 0x3

    const/4 v2, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyCompanyDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 509
    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyCarrierDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const/4 v3, 0x2

    .line 510
    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyBigballDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    .line 512
    .local v1, "imgMouleDirs":[Ljava/lang/String;
    array-length v3, v1

    move v5, v2

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v1, v5

    .line 513
    .local v6, "wallpaperDir":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkCustomizeWallpaperDir:current module: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
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

    .line 515
    .local v7, "oplusCustomWallpaperDir":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v8, :cond_0

    .line 516
    return v4

    .line 512
    .end local v6    # "wallpaperDir":Ljava/lang/String;
    .end local v7    # "oplusCustomWallpaperDir":Ljava/io/File;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 519
    :cond_1
    return v2

    .line 520
    .end local v1    # "imgMouleDirs":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 521
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkCustomizeWallpaperDir: e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    return v2
.end method

.method private static blacklist findCustomDefaultDynamicWallpaper(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .line 691
    const-string v0, "findCustomDefaultDynamicWallpaper: Closing inputStream. e = "

    const-string v1, "OplusWallpaperManagerHelper"

    const/4 v2, 0x0

    .line 692
    .local v2, "defaultWallpaper":Landroid/content/ComponentName;
    const/4 v3, 0x0

    .line 694
    .local v3, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-static {}, Landroid/app/OplusWallpaperManagerHelper;->getCustomLiveWallpaperConfig()Ljava/io/File;

    move-result-object v4

    .line 695
    .local v4, "phoneColorMapFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 696
    const-string v5, "findCustomDefaultDynamicWallpaper: The phone color map file is not exists!"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 697
    const/4 v5, 0x0

    .line 733
    if-eqz v3, :cond_0

    .line 735
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 738
    goto :goto_0

    .line 736
    :catch_0
    move-exception v6

    .line 737
    .local v6, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-object v5

    .line 700
    :cond_1
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "findCustomDefaultDynamicWallpaper: phoneColorMapFile = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v5

    .line 703
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 704
    .local v5, "pullParser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v6, "UTF-8"

    invoke-interface {v5, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 706
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    .line 707
    .local v6, "event":I
    :goto_1
    const/4 v7, 0x1

    if-eq v6, v7, :cond_5

    .line 708
    packed-switch v6, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    .line 712
    :pswitch_1
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 713
    .local v7, "pullParserName":Ljava/lang/String;
    const-string v8, "DefaultWallpaperComponent"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 714
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    .line 715
    .local v8, "defaultWallpaperComponentStr":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "findCustomDefaultDynamicWallpaper: defaultWallpaperComponentStr = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v9

    .line 717
    .local v9, "defaultWallpaperComp":Landroid/content/ComponentName;
    if-eqz v9, :cond_2

    invoke-static {p0, v9}, Landroid/app/OplusWallpaperManagerHelper;->isWallpaperExist(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 718
    move-object v2, v9

    .line 720
    .end local v8    # "defaultWallpaperComponentStr":Ljava/lang/String;
    .end local v9    # "defaultWallpaperComp":Landroid/content/ComponentName;
    :cond_2
    goto :goto_2

    .line 710
    .end local v7    # "pullParserName":Ljava/lang/String;
    :pswitch_2
    nop

    .line 725
    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    .line 726
    goto :goto_3

    .line 728
    :cond_4
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v6, v7

    goto :goto_1

    .line 733
    .end local v4    # "phoneColorMapFile":Ljava/io/File;
    .end local v5    # "pullParser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "event":I
    :cond_5
    :goto_3
    nop

    .line 735
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 738
    :goto_4
    goto :goto_6

    .line 736
    :catch_1
    move-exception v4

    .line 737
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_5
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_4

    .line 733
    :catchall_0
    move-exception v4

    goto :goto_7

    .line 730
    :catch_2
    move-exception v4

    .line 731
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "findCustomDefaultDynamicWallpaper: e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 733
    nop

    .end local v4    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_6

    .line 735
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    .line 736
    :catch_3
    move-exception v4

    .line 737
    .restart local v4    # "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_5

    .line 742
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findCustomDefaultDynamicWallpaper: defaultWallpaper = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    return-object v2

    .line 733
    :goto_7
    if-eqz v3, :cond_7

    .line 735
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 738
    goto :goto_8

    .line 736
    :catch_4
    move-exception v5

    .line 737
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_8
    throw v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static blacklist findPhoneColorDefaultWallpaper(Ljava/lang/String;)[Ljava/lang/String;
    .locals 14
    .param p0, "phoneColorName"    # Ljava/lang/String;

    .line 386
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "OplusWallpaperManagerHelper"

    if-eqz v0, :cond_0

    .line 387
    const-string v0, "findPhoneColorDefaultWallpaper: The phoneColorName is empty!"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    return-object v1

    .line 391
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 392
    .local v0, "defaultTheme":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 394
    .local v3, "inputStream":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 395
    .local v4, "phoneColorMapFile":Ljava/io/File;
    const-string v5, "findPhoneColorDefaultWallpaper: Closing inputStream. e = "

    const/4 v6, 0x0

    if-nez v4, :cond_2

    .line 396
    :try_start_0
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Landroid/app/OplusWallpaperManagerHelper;->BASE_PRODUCT_DEFAULT_DIR:Ljava/lang/String;

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

    .line 397
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 398
    const-string v7, "findPhoneColorDefaultWallpaper: The phone color map file is not exists!"

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    nop

    .line 446
    if-eqz v3, :cond_1

    .line 448
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 451
    goto :goto_0

    .line 449
    :catch_0
    move-exception v6

    .line 450
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

    .line 399
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-object v1

    .line 446
    .end local v4    # "phoneColorMapFile":Ljava/io/File;
    :catchall_0
    move-exception v1

    goto/16 :goto_9

    .line 443
    :catch_1
    move-exception v1

    goto/16 :goto_7

    .line 402
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

    .line 404
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v7

    .line 405
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 406
    .local v7, "pullParser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v8, "UTF-8"

    invoke-interface {v7, v3, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 408
    const/4 v8, 0x0

    .line 409
    .local v8, "foundColorName":Ljava/lang/String;
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v9

    .line 410
    .local v9, "event":I
    :goto_1
    const/4 v10, 0x1

    if-eq v9, v10, :cond_8

    .line 411
    packed-switch v9, :pswitch_data_0

    :pswitch_0
    goto :goto_3

    .line 415
    :pswitch_1
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 416
    .local v11, "pullParserName":Ljava/lang/String;
    const-string v12, "PhoneColor"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 417
    new-instance v12, Ljava/lang/String;

    invoke-interface {v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 418
    .local v12, "colorName":Ljava/lang/String;
    invoke-virtual {p0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 419
    move-object v8, v12

    goto :goto_2

    .line 421
    :cond_3
    const/4 v8, 0x0

    .line 422
    aput-object v1, v0, v6

    .line 423
    aput-object v1, v0, v10

    .line 426
    .end local v12    # "colorName":Ljava/lang/String;
    :cond_4
    :goto_2
    if-eqz v8, :cond_6

    .line 427
    const-string v12, "DefaultWallpaper"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 428
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v0, v6

    goto :goto_3

    .line 429
    :cond_5
    const-string v12, "DefaultWallpaperLock"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 430
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v0, v10

    goto :goto_3

    .line 413
    .end local v11    # "pullParserName":Ljava/lang/String;
    :pswitch_2
    nop

    .line 437
    :cond_6
    :goto_3
    aget-object v11, v0, v6

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7

    aget-object v10, v0, v10

    .line 438
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 439
    goto :goto_4

    .line 441
    :cond_7
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v9, v10

    goto :goto_1

    .line 446
    .end local v4    # "phoneColorMapFile":Ljava/io/File;
    .end local v7    # "pullParser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "foundColorName":Ljava/lang/String;
    .end local v9    # "event":I
    :cond_8
    :goto_4
    nop

    .line 448
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 451
    :goto_5
    goto :goto_8

    .line 449
    :catch_2
    move-exception v1

    .line 450
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

    .line 444
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

    .line 446
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_9

    .line 448
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_5

    .line 449
    :catch_3
    move-exception v1

    .line 450
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_6

    .line 455
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

    .line 456
    return-object v0

    .line 446
    :goto_9
    if-eqz v3, :cond_a

    .line 448
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 451
    goto :goto_a

    .line 449
    :catch_4
    move-exception v4

    .line 450
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

    .line 453
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

    .line 538
    const-string v0, "findPhoneColorDefaultWallpaperComponet: Closing inputStream. e = "

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "OplusWallpaperManagerHelper"

    if-eqz v1, :cond_0

    .line 539
    const-string v1, "findPhoneColorDefaultWallpaperComponet: The phoneColorName is empty!"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_0
    const/4 v1, 0x0

    .line 543
    .local v1, "defaultWallpaperComponet":Ljava/lang/String;
    const/4 v3, 0x0

    .line 544
    .local v3, "noColorDefaultWallpaperComponet":Ljava/lang/String;
    const/4 v4, 0x0

    .line 546
    .local v4, "inputStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Landroid/app/OplusWallpaperManagerHelper;->BASE_PRODUCT_DEFAULT_DIR:Ljava/lang/String;

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

    .line 547
    .local v5, "phoneColorMapFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 548
    const-string v6, "findPhoneColorDefaultWallpaperComponet: The phone color map file is not exists!"

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 549
    const/4 v6, 0x0

    .line 600
    if-eqz v4, :cond_1

    .line 602
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 605
    goto :goto_0

    .line 603
    :catch_0
    move-exception v7

    .line 604
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

    .line 549
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-object v6

    .line 552
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

    .line 554
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v4, v6

    .line 555
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 556
    .local v6, "xmlPullParser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v7, "UTF-8"

    invoke-interface {v6, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 558
    const/4 v7, 0x0

    .line 559
    .local v7, "foundColorName":Z
    const/4 v8, 0x0

    .line 560
    .local v8, "foundWallpaperName":Z
    const/4 v9, 0x0

    .line 561
    .local v9, "inPhoneColorTag":Z
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 562
    .local v10, "eventType":I
    :goto_1
    const/4 v11, 0x1

    if-eq v10, v11, :cond_8

    .line 563
    const-string v11, "PhoneColor"

    packed-switch v10, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    .line 587
    :pswitch_1
    :try_start_3
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 588
    const/4 v9, 0x0

    goto :goto_2

    .line 567
    :pswitch_2
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 568
    .local v12, "tagName":Ljava/lang/String;
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 569
    const/4 v9, 0x1

    .line 570
    new-instance v11, Ljava/lang/String;

    const/4 v13, 0x0

    invoke-interface {v6, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 571
    .local v11, "colorName":Ljava/lang/String;
    invoke-virtual {p0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 572
    const/4 v7, 0x1

    .line 574
    .end local v11    # "colorName":Ljava/lang/String;
    :cond_3
    goto :goto_2

    :cond_4
    const-string v11, "DefaultWallpaperComponent"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 575
    if-eqz v7, :cond_5

    .line 576
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v11

    move-object v1, v11

    .line 577
    const/4 v8, 0x1

    goto :goto_2

    .line 578
    :cond_5
    if-nez v9, :cond_6

    .line 579
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v11

    move-object v3, v11

    .line 580
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 581
    const/4 v8, 0x1

    goto :goto_2

    .line 565
    .end local v12    # "tagName":Ljava/lang/String;
    :pswitch_3
    nop

    .line 592
    :cond_6
    :goto_2
    if-eqz v8, :cond_7

    .line 593
    goto :goto_3

    .line 595
    :cond_7
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v10, v11

    goto :goto_1

    .line 600
    .end local v5    # "phoneColorMapFile":Ljava/io/File;
    .end local v6    # "xmlPullParser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "foundColorName":Z
    .end local v8    # "foundWallpaperName":Z
    .end local v9    # "inPhoneColorTag":Z
    .end local v10    # "eventType":I
    :cond_8
    :goto_3
    nop

    .line 602
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 605
    :goto_4
    goto :goto_6

    .line 603
    :catch_1
    move-exception v5

    .line 604
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

    .line 600
    :catchall_0
    move-exception v5

    goto :goto_7

    .line 597
    :catch_2
    move-exception v5

    .line 598
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

    .line 600
    nop

    .end local v5    # "e":Ljava/lang/Exception;
    if-eqz v4, :cond_9

    .line 602
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_4

    .line 603
    :catch_3
    move-exception v5

    .line 604
    .restart local v5    # "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_5

    .line 609
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_9
    :goto_6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 610
    move-object v1, v3

    .line 612
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

    .line 613
    return-object v1

    .line 600
    :goto_7
    if-eqz v4, :cond_b

    .line 602
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 605
    goto :goto_8

    .line 603
    :catch_4
    move-exception v6

    .line 604
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

    .line 607
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

    .line 281
    const/4 v0, 0x0

    .line 282
    .local v0, "fileName":Ljava/lang/String;
    const-string v1, "ro.hw.phone.color"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 283
    .local v1, "hwPhoneColor":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "OplusWallpaperManagerHelper"

    if-nez v2, :cond_5

    .line 284
    invoke-static {v1}, Landroid/app/OplusWallpaperManagerHelper;->findPhoneColorDefaultWallpaper(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 285
    .local v2, "wallpaper":[Ljava/lang/String;
    if-eqz v2, :cond_4

    const/4 v4, 0x0

    aget-object v5, v2, v4

    .line 286
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v5, 0x1

    aget-object v6, v2, v5

    .line 287
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 288
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Landroid/app/OplusWallpaperManagerHelper;->BASE_PRODUCT_DEFAULT_DIR:Ljava/lang/String;

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

    .line 289
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

    .line 290
    .local v6, "lockFileName":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 291
    .local v7, "systemFile":Ljava/io/File;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 292
    .local v8, "lockFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 293
    invoke-static {v5, v4}, Landroid/app/OplusWallpaperManagerHelper;->addDefaultWallpaperCache(ILjava/lang/String;)V

    .line 294
    if-ne p1, v5, :cond_1

    .line 295
    move-object v0, v4

    goto :goto_0

    .line 298
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

    .line 300
    :cond_1
    :goto_0
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 301
    const/4 v3, 0x2

    invoke-static {v3, v6}, Landroid/app/OplusWallpaperManagerHelper;->addDefaultWallpaperCache(ILjava/lang/String;)V

    .line 302
    if-ne p1, v3, :cond_3

    .line 303
    move-object v0, v6

    goto :goto_1

    .line 306
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

    .line 308
    .end local v4    # "systemFileName":Ljava/lang/String;
    .end local v6    # "lockFileName":Ljava/lang/String;
    .end local v7    # "systemFile":Ljava/io/File;
    .end local v8    # "lockFile":Ljava/io/File;
    :cond_3
    :goto_1
    goto :goto_2

    .line 309
    :cond_4
    const-string v4, "getColorFileName phoneColorDefaultTheme is empty"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    .end local v2    # "wallpaper":[Ljava/lang/String;
    :goto_2
    goto :goto_3

    .line 312
    :cond_5
    const-string v2, "getColorFileName hwPhoneColor is empty"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :goto_3
    return-object v0
.end method

.method public static whitelist getCurrentCustomThemeDir(Landroid/content/Context;I)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 647
    const-string v0, "/"

    const-string v1, "default"

    .line 648
    .local v1, "customThemeDir":Ljava/lang/String;
    const-string v2, "OplusWallpaperManagerHelper"

    if-nez p0, :cond_0

    .line 649
    const-string v0, "getCurrentCustomThemeDir: context is null"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    return-object v1

    .line 654
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "custom_theme_path_setting"

    invoke-static {v3, v4, p1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 655
    .local v3, "customThemePath":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/oplus/theme/OplusThemeUtil;->CUSTOM_THEME_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 656
    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 657
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 659
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 660
    .local v0, "tempDir":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_2

    .line 661
    move-object v1, v0

    .line 667
    .end local v0    # "tempDir":Ljava/lang/String;
    .end local v3    # "customThemePath":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 664
    :catch_0
    move-exception v0

    .line 665
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

    .line 666
    const-string v1, "default"

    .line 669
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

    .line 670
    return-object v1
.end method

.method private static blacklist getCurrentUserId(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 678
    const/4 v0, 0x0

    .line 680
    .local v0, "userId":I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 686
    goto :goto_0

    .line 681
    :catch_0
    move-exception v1

    .line 682
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

    const-string v3, "OplusWallpaperManagerHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    if-eqz p0, :cond_0

    .line 684
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v0

    .line 687
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return v0
.end method

.method public static whitelist getCustomLiveWallpaperConfig()Ljava/io/File;
    .locals 3

    .line 643
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/app/OplusWallpaperManagerHelper;->CUSTOM_WALLPAPER:Ljava/lang/String;

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

    .line 343
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v0

    .line 344
    .local v0, "userId":I
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 345
    invoke-static {p0}, Landroid/app/OplusWallpaperManagerHelper;->getCurrentUserId(Landroid/content/Context;)I

    move-result v0

    .line 347
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

    const-string v3, "OplusWallpaperManagerHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-static {v0}, Landroid/app/OplusWallpaperManagerHelper;->isCurrentCustomTheme(I)Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_1

    .line 349
    return-object v4

    .line 352
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

    invoke-static {p0, v0}, Landroid/app/OplusWallpaperManagerHelper;->getCurrentCustomThemeDir(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 353
    .local v2, "customWallpaperDir":Ljava/io/File;
    if-ne p1, v1, :cond_3

    .line 354
    new-instance v1, Ljava/io/File;

    const-string v5, "default_wallpaper_lock.png"

    invoke-direct {v1, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 355
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

    .line 356
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 357
    const-string v4, "getCustomThemeFileName customWallpaperLock exist"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 360
    :cond_2
    const-string v5, "getCustomThemeFileName customWallpaperLock not exist"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    .end local v1    # "customWallpaperLock":Ljava/io/File;
    goto :goto_0

    .line 363
    :cond_3
    new-instance v1, Ljava/io/File;

    const-string v5, "default_wallpaper.png"

    invoke-direct {v1, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 364
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

    .line 365
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 366
    const-string v4, "getCustomThemeFileName customWallpaperSystem exist"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 369
    :cond_4
    const-string v5, "getCustomThemeFileName customWallpaperSystem not exist"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    .end local v1    # "customWallpaperSystem":Ljava/io/File;
    :goto_0
    return-object v4
.end method

.method public static whitelist getDefaultWallpaperComponent(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 146
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-static {p0, v0}, Landroid/app/OplusWallpaperManagerHelper;->getDefaultWallpaperComponent(Landroid/content/Context;I)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getDefaultWallpaperComponent(Landroid/content/Context;I)Landroid/content/ComponentName;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 111
    const/4 v0, 0x0

    const-string v1, "OplusWallpaperManagerHelper"

    if-nez p0, :cond_0

    .line 112
    :try_start_0
    const-string v2, "getDefaultWallpaperComponent: The context is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-object v0

    .line 116
    :cond_0
    const/4 v2, 0x0

    .line 117
    .local v2, "defaultWallpaper":Landroid/content/ComponentName;
    invoke-static {p1}, Landroid/app/OplusWallpaperManagerHelper;->isCurrentCustomTheme(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Landroid/app/OplusWallpaperManagerHelper;->isPacmanVersion()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 118
    :cond_1
    invoke-static {p0}, Landroid/app/OplusWallpaperManagerHelper;->findCustomDefaultDynamicWallpaper(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v3

    move-object v2, v3

    .line 120
    :cond_2
    if-eqz v2, :cond_3

    .line 121
    return-object v2

    .line 124
    :cond_3
    sget-boolean v3, Landroid/app/OplusWallpaperManagerHelper;->sDefaultWallpaperComponentInited:Z

    if-nez v3, :cond_5

    .line 125
    invoke-static {p0}, Landroid/app/OplusWallpaperManagerHelper;->getDefaultWallpaperComponetString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 126
    .local v3, "defaultWallpaperStr":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 127
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    move-object v2, v4

    .line 128
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.service.wallpaper.WallpaperService"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    .local v4, "defaultWallpaperIntent":Landroid/content/Intent;
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 131
    sput-object v2, Landroid/app/OplusWallpaperManagerHelper;->sDefaultWallpaperComponent:Landroid/content/ComponentName;

    .line 134
    .end local v4    # "defaultWallpaperIntent":Landroid/content/Intent;
    :cond_4
    const/4 v4, 0x1

    sput-boolean v4, Landroid/app/OplusWallpaperManagerHelper;->sDefaultWallpaperComponentInited:Z

    .line 136
    .end local v3    # "defaultWallpaperStr":Ljava/lang/String;
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultWallpaperComponent sDefaultWallpaperComponent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/app/OplusWallpaperManagerHelper;->sDefaultWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    sget-object v0, Landroid/app/OplusWallpaperManagerHelper;->sDefaultWallpaperComponent:Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 139
    .end local v2    # "defaultWallpaper":Landroid/content/ComponentName;
    :catch_0
    move-exception v2

    .line 140
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultWallpaperComponent: e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return-object v0
.end method

.method private static blacklist getDefaultWallpaperComponetString(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 527
    const-string v0, "ro.hw.phone.color"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 528
    .local v0, "hwPhoneColor":Ljava/lang/String;
    invoke-static {v0}, Landroid/app/OplusWallpaperManagerHelper;->findPhoneColorDefaultWallpaperComponet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist getDefaultWallpaperFileName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "which"    # I

    .line 179
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v0

    .line 180
    .local v0, "userId":I
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 181
    invoke-static {p0}, Landroid/app/OplusWallpaperManagerHelper;->getCurrentUserId(Landroid/content/Context;)I

    move-result v0

    .line 183
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDefaultWallpaperFileName: userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusWallpaperManagerHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-static {v0}, Landroid/app/OplusWallpaperManagerHelper;->isCurrentCustomTheme(I)Z

    move-result v1

    sget-boolean v3, Landroid/app/OplusWallpaperManagerHelper;->sIsCurrentCustomTheme:Z

    if-eq v1, v3, :cond_1

    .line 185
    sget-object v1, Landroid/app/OplusWallpaperManagerHelper;->sDefaultWallpaperCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 186
    sget-boolean v1, Landroid/app/OplusWallpaperManagerHelper;->sIsCurrentCustomTheme:Z

    xor-int/lit8 v1, v1, 0x1

    sput-boolean v1, Landroid/app/OplusWallpaperManagerHelper;->sIsCurrentCustomTheme:Z

    .line 188
    :cond_1
    invoke-static {p0, v0}, Landroid/app/OplusWallpaperManagerHelper;->getCurrentCustomThemeDir(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, "currentCustomThemeDir":Ljava/lang/String;
    sget-object v3, Landroid/app/OplusWallpaperManagerHelper;->sCurrentCustomThemeDir:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 190
    sget-object v3, Landroid/app/OplusWallpaperManagerHelper;->sDefaultWallpaperCache:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 191
    sput-object v1, Landroid/app/OplusWallpaperManagerHelper;->sCurrentCustomThemeDir:Ljava/lang/String;

    .line 195
    :cond_2
    sget-object v3, Landroid/app/OplusWallpaperManagerHelper;->sDefaultWallpaperCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 196
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

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 198
    return-object v3

    .line 201
    :cond_3
    const/4 v4, 0x0

    .line 204
    .local v4, "fileName":Ljava/lang/String;
    invoke-static {p0, p1}, Landroid/app/OplusWallpaperManagerHelper;->getMyEngineeringFileName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 207
    if-nez v4, :cond_4

    invoke-static {}, Lcom/oplus/multiuser/OplusMultiUserManager;->getInstance()Lcom/oplus/multiuser/OplusMultiUserManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/oplus/multiuser/OplusMultiUserManager;->isMultiSystemUserId(I)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v0}, Landroid/app/OplusWallpaperManagerHelper;->isCurrentCustomTheme(I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 208
    invoke-static {p0, p1}, Landroid/app/OplusWallpaperManagerHelper;->getMultiSystemFileName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 211
    :cond_4
    if-nez v4, :cond_5

    .line 212
    invoke-static {p0, p1}, Landroid/app/OplusWallpaperManagerHelper;->getModuleWallpaperFileName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 215
    :cond_5
    if-nez v4, :cond_6

    .line 216
    invoke-static {p0, p1}, Landroid/app/OplusWallpaperManagerHelper;->getOperatorFileName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 219
    :cond_6
    if-nez v4, :cond_7

    .line 220
    invoke-static {p0, p1}, Landroid/app/OplusWallpaperManagerHelper;->getCustomThemeFileName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 223
    :cond_7
    if-nez v4, :cond_8

    .line 224
    invoke-static {p0, p1}, Landroid/app/OplusWallpaperManagerHelper;->getColorFileName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 227
    :cond_8
    if-nez v4, :cond_9

    .line 228
    invoke-static {p0, p1}, Landroid/app/OplusWallpaperManagerHelper;->getNoColorFileName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 230
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

    .line 231
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 232
    invoke-static {p1, v4}, Landroid/app/OplusWallpaperManagerHelper;->addDefaultWallpaperCache(ILjava/lang/String;)V

    .line 234
    :cond_a
    return-object v4
.end method

.method private static blacklist getDefaultWallpaperResId(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 160
    const v0, 0xc080016

    return v0
.end method

.method public static whitelist getModuleWallpaperFileName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "which"    # I

    .line 471
    const-string v0, "OplusWallpaperManagerHelper"

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

    .line 472
    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyCarrierDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v1, v5

    .line 473
    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyBigballDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v1, v5

    .line 475
    .local v1, "imgMouleDirs":[Ljava/lang/String;
    array-length v3, v1

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v6, v1, v4

    .line 476
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

    .line 477
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

    .line 478
    .local v7, "oplusCustomWallpaperDir":Ljava/io/File;
    if-ne p1, v5, :cond_1

    .line 479
    new-instance v8, Ljava/io/File;

    const-string v9, "default_wallpaper_lock.png"

    invoke-direct {v8, v7, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 480
    .local v8, "oplusCustomWallpaperLock":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 481
    const-string v3, "getModuleWallpaperFileName WallpaperLock exist in this module"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 484
    :cond_0
    const-string v9, "getModuleWallpaperFileName WallpaperLock not exist in this module"

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    nop

    .end local v8    # "oplusCustomWallpaperLock":Ljava/io/File;
    goto :goto_1

    .line 487
    :cond_1
    new-instance v8, Ljava/io/File;

    const-string v9, "default_wallpaper.png"

    invoke-direct {v8, v7, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 488
    .local v8, "oplusCustomWallpaperSystem":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 489
    const-string v3, "getModuleWallpaperFileName WallpaperSystem exist in this module"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 492
    :cond_2
    const-string v9, "getModuleWallpaperFileName WallpaperSystem not exist in this module"

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    .end local v6    # "wallpaperDir":Ljava/lang/String;
    .end local v7    # "oplusCustomWallpaperDir":Ljava/io/File;
    .end local v8    # "oplusCustomWallpaperSystem":Ljava/io/File;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 496
    :cond_3
    return-object v2

    .line 497
    .end local v1    # "imgMouleDirs":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 498
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

    .line 499
    return-object v2
.end method

.method private static blacklist getMultiSystemFileName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "which"    # I

    .line 251
    const/4 v0, 0x0

    .line 252
    .local v0, "fileName":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/app/OplusWallpaperManagerHelper;->BASE_PRODUCT_DEFAULT_DIR:Ljava/lang/String;

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

    .line 254
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 255
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

    const-string v3, "OplusWallpaperManagerHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 257
    const-string v2, "getMultiSystemFileName default fileName not exist"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const/4 v0, 0x0

    .line 261
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    return-object v0
.end method

.method private static blacklist getMyEngineeringFileName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "which"    # I

    .line 238
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

    .line 239
    .local v0, "engineerWallpaperDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "default_wallpaper.png"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 240
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

    const-string v3, "OplusWallpaperManagerHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 242
    const-string v2, "getMyEngineeringFileName customWallpaper dir exist"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 245
    :cond_0
    const-string v2, "getMyEngineeringFileName customWallpaper dir not exist"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const/4 v2, 0x0

    return-object v2
.end method

.method private static blacklist getNoColorFileName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "which"    # I

    .line 265
    const/4 v0, 0x0

    .line 266
    .local v0, "fileName":Ljava/lang/String;
    const-string v1, ".png"

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/app/OplusWallpaperManagerHelper;->BASE_PRODUCT_DEFAULT_DIR:Ljava/lang/String;

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

    .line 269
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/app/OplusWallpaperManagerHelper;->BASE_PRODUCT_DEFAULT_DIR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "default_wallpaper"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 271
    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 272
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

    const-string v3, "OplusWallpaperManagerHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 274
    const-string v2, "getNoColorFileName default fileName not exist"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const/4 v0, 0x0

    .line 277
    :cond_1
    return-object v0
.end method

.method private static blacklist getOperatorFileName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "which"    # I

    .line 318
    const/4 v0, 0x0

    .line 319
    .local v0, "fileName":Ljava/lang/String;
    const-string v1, "ro.vendor.oplus.operator"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 320
    .local v1, "sysOperatorName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "OplusWallpaperManagerHelper"

    if-nez v2, :cond_2

    .line 321
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 322
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 323
    const/4 v2, 0x2

    const-string v4, ".png"

    const-string v5, "operator"

    const-string v6, "_"

    if-ne p1, v2, :cond_0

    .line 324
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Landroid/app/OplusWallpaperManagerHelper;->BASE_PRODUCT_DEFAULT_DIR:Ljava/lang/String;

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

    goto :goto_0

    .line 327
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Landroid/app/OplusWallpaperManagerHelper;->BASE_PRODUCT_DEFAULT_DIR:Ljava/lang/String;

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

    .line 330
    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 331
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

    .line 332
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 333
    const-string v4, "getOperatorFileName operator not exist "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const/4 v0, 0x0

    .line 336
    .end local v2    # "file":Ljava/io/File;
    :cond_1
    goto :goto_1

    .line 337
    :cond_2
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

    .line 339
    :goto_1
    return-object v0
.end method

.method public static whitelist isCtsTest()Z
    .locals 2

    .line 674
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

    .line 150
    const-string v0, "persist.sys.themeflag"

    .line 151
    .local v0, "key":Ljava/lang/String;
    if-lez p0, :cond_0

    .line 152
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

    .line 154
    :cond_0
    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 155
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

    const-string v6, "OplusWallpaperManagerHelper"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
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

.method public static whitelist isCustomThemeStaticWallpaper(Landroid/content/Context;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 639
    invoke-static {p1}, Landroid/app/OplusWallpaperManagerHelper;->isCurrentCustomTheme(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/app/OplusWallpaperManagerHelper;->getCustomLiveWallpaperConfig()Ljava/io/File;

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

.method private static blacklist isPacmanVersion()Z
    .locals 5

    .line 758
    const-string v0, "ro.vendor.oplus.market.name"

    .line 759
    .local v0, "key":Ljava/lang/String;
    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 760
    .local v1, "name":Ljava/lang/String;
    const-string v2, "OnePlus Nord 2 PAC-MAN ED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 761
    .local v2, "isPacman":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPacmanVersion. isPacman = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OplusWallpaperManagerHelper"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    return v2
.end method

.method private static blacklist isWallpaperExist(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wallpaper"    # Landroid/content/ComponentName;

    .line 748
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.service.wallpaper.WallpaperService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 749
    .local v1, "wallpaperIntent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 750
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 751
    .end local v1    # "wallpaperIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 752
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isWallpaperExist: e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OplusWallpaperManagerHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    return v0
.end method

.method public static whitelist needDefaultImageWallpaper(Landroid/content/Context;I)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 617
    const-string v0, "OplusWallpaperManagerHelper"

    const/4 v1, 0x1

    if-nez p0, :cond_0

    .line 618
    const-string v2, "needDefaultImageWallpaper: context is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    return v1

    .line 621
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needDefaultImageWallpaper: userId is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    invoke-static {p0, v1}, Landroid/app/OplusWallpaperManagerHelper;->getMyEngineeringFileName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 623
    return v1

    .line 625
    :cond_1
    invoke-static {}, Landroid/app/OplusWallpaperManagerHelper;->checkCustomizeWallpaperDir()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 626
    return v1

    .line 628
    :cond_2
    invoke-static {p1}, Landroid/app/OplusWallpaperManagerHelper;->isCurrentCustomTheme(I)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Landroid/app/OplusWallpaperManagerHelper;->isPacmanVersion()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 631
    :cond_3
    invoke-static {}, Lcom/oplus/multiuser/OplusMultiUserManager;->getInstance()Lcom/oplus/multiuser/OplusMultiUserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/multiuser/OplusMultiUserManager;->isMultiSystemUserId(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 632
    return v1

    .line 635
    :cond_4
    const/4 v0, 0x0

    return v0

    .line 629
    :cond_5
    :goto_0
    invoke-static {}, Landroid/app/OplusWallpaperManagerHelper;->getCustomLiveWallpaperConfig()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method

.method public static whitelist openDefaultWallpaper(Landroid/content/Context;I)Ljava/io/InputStream;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "which"    # I

    .line 86
    const-string v0, "OplusWallpaperManagerHelper"

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 87
    .local v1, "startTime":J
    const/4 v3, 0x0

    .line 88
    .local v3, "inputStream":Ljava/io/InputStream;
    invoke-static {p0, p1}, Landroid/app/OplusWallpaperManagerHelper;->getDefaultWallpaperFileName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 89
    .local v4, "defaultWallpaperFileName":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v5, :cond_0

    .line 91
    :try_start_1
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v5

    .line 95
    goto :goto_0

    .line 92
    :catch_0
    move-exception v5

    .line 93
    .local v5, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 94
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

    .line 97
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    if-nez v3, :cond_1

    .line 98
    invoke-static {p0, p1}, Landroid/app/OplusWallpaperManagerHelper;->openDefaultWallpaperFromRes(Landroid/content/Context;I)Ljava/io/InputStream;

    move-result-object v5

    move-object v3, v5

    .line 100
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    .line 101
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

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 102
    return-object v3

    .line 103
    .end local v1    # "startTime":J
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "defaultWallpaperFileName":Ljava/lang/String;
    .end local v5    # "costTime":J
    :catch_1
    move-exception v1

    .line 104
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

    .line 105
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist openDefaultWallpaperFromRes(Landroid/content/Context;I)Ljava/io/InputStream;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "which"    # I

    .line 376
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0}, Landroid/app/OplusWallpaperManagerHelper;->getDefaultWallpaperResId(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
