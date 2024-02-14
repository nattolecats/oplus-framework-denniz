.class public Lcom/oplus/theme/OplusThemeUtil;
.super Ljava/lang/Object;
.source "OplusThemeUtil.java"


# static fields
.field public static final whitelist ACCESS_CHANGE_SETTING:Ljava/lang/String; = "access_color_setting"

.field public static final whitelist CUSTOM_THEME_FLAG:I = 0x100

.field public static final whitelist CUSTOM_THEME_PATH:Ljava/lang/String;

.field public static final whitelist CUSTOM_THEME_PATH_DEFAULT:Ljava/lang/String; = "custom_theme_path_default_prop"

.field public static final whitelist CUSTOM_THEME_PATH_SETTING:Ljava/lang/String; = "custom_theme_path_setting"

.field public static final whitelist DATA_THEME_PATH:Ljava/lang/String; = "/data/theme/"

.field public static final blacklist DEFAULT_DARKMODE_BACKGROUNDMAXL:F = 0.0f

.field public static final blacklist DEFAULT_DARKMODE_BACKGROUNDMAXL_MEDIUM:F = 8.0f

.field public static final blacklist DEFAULT_DARKMODE_DIALOGBGMAXL:F = 27.0f

.field public static final blacklist DEFAULT_DARKMODE_FOREGROUNDMINL:F = 100.0f

.field public static final whitelist DEFAULT_DETECT_MASK_BORDER_OFFSET:F = 0.065f

.field public static final whitelist ICON_APCK_NAME:Ljava/lang/String; = "icon_pack_name"

.field public static final whitelist INPUT_STREAM_CACHE_BYTE_COUNT:I = 0x2000

.field public static final whitelist MATERIAL_OPLUS_MODE:Ljava/lang/String; = "material_color_mode"

.field private static final blacklist MAXO:Ljava/lang/String;

.field public static final whitelist OPLUS_THEME_SETTING:Ljava/lang/String; = "color_theme_setting"

.field public static final whitelist SYSTEM_THEME_DEFAULT_PATH:Ljava/lang/String;

.field public static final whitelist SYSTEM_THEME_SECOND_PATH:Ljava/lang/String;

.field public static final whitelist SYSTEM_THEME_THIRD_PATH:Ljava/lang/String;

.field private static final blacklist TAG:Ljava/lang/String; = "OplusThemeUtil"

.field private static final blacklist TAG_NAME:Ljava/lang/String; = "name"

.field private static final blacklist TAG_PACKAGE:Ljava/lang/String; = "package"

.field private static final blacklist TAG_PCKAGE_INFO:Ljava/lang/String; = "packageInfo"

.field private static final blacklist TAG_ROOT:Ljava/lang/String;

.field private static final blacklist TAG_THEME_VERSION:Ljava/lang/String; = "EditorVersion"

.field private static final blacklist TAG_VERSION:Ljava/lang/String; = "version"

.field public static final whitelist THEME_CUSTOM_MODE:Ljava/lang/String; = "theme_change_mode"

.field public static final whitelist THEME_FLAG_SETTING:Ljava/lang/String; = "theme_flag_setting"

.field public static final whitelist THEME_INFO_NAME:Ljava/lang/String; = "themeInfo.xml"

.field public static final whitelist THEME_SKIN_CHANGED:Ljava/lang/String; = "theme_skin_changed"

.field public static final whitelist THEME_VERSION_META_DATA:Ljava/lang/String; = "theme_version_metadata"

.field public static final whitelist THEME_VERSION_PROP_KEY:Ljava/lang/String; = "ro.oplus.theme.version"

.field public static final whitelist UXICON_CHANGE_MODE:Ljava/lang/String; = "uxicon_change_mode"

.field private static final blacklist mVersionQueue:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sDefaultThemePath:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 4

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyStockDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/media/theme/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/theme/OplusThemeUtil;->SYSTEM_THEME_DEFAULT_PATH:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyRegionDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/theme/OplusThemeUtil;->SYSTEM_THEME_SECOND_PATH:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyCarrierDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/theme/OplusThemeUtil;->SYSTEM_THEME_THIRD_PATH:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyCompanyDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/theme/OplusThemeUtil;->CUSTOM_THEME_PATH:Ljava/lang/String;

    .line 70
    const/4 v0, 0x4

    new-array v0, v0, [C

    sget-object v1, Lcom/oplus/theme/OplusThirdPartUtil;->CHARS:[C

    const/16 v2, 0x28

    aget-char v1, v1, v2

    const/4 v2, 0x0

    aput-char v1, v0, v2

    sget-object v1, Lcom/oplus/theme/OplusThirdPartUtil;->CHARS:[C

    const/16 v2, 0xf

    aget-char v1, v1, v2

    const/4 v3, 0x1

    aput-char v1, v0, v3

    sget-object v1, Lcom/oplus/theme/OplusThirdPartUtil;->CHARS:[C

    aget-char v1, v1, v2

    const/4 v2, 0x2

    aput-char v1, v0, v2

    sget-object v1, Lcom/oplus/theme/OplusThirdPartUtil;->CHARS:[C

    const/16 v2, 0xe

    aget-char v1, v1, v2

    const/4 v2, 0x3

    aput-char v1, v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/theme/OplusThemeUtil;->MAXO:Ljava/lang/String;

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SmartPhoneThemeInfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/theme/OplusThemeUtil;->TAG_ROOT:Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oplus/theme/OplusThemeUtil;->mVersionQueue:Ljava/util/HashMap;

    .line 79
    const/4 v0, 0x0

    sput-object v0, Lcom/oplus/theme/OplusThemeUtil;->sDefaultThemePath:Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist getAppThemeVersion(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "change"    # Z

    .line 122
    sget-object v0, Lcom/oplus/theme/OplusThemeUtil;->mVersionQueue:Ljava/util/HashMap;

    monitor-enter v0

    .line 123
    if-nez p1, :cond_0

    .line 124
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 126
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 127
    monitor-exit v0

    return-object v2

    .line 129
    :cond_1
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object p0, v1

    .line 132
    :cond_2
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "themeInfo.xml"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, "infoPath":Ljava/lang/String;
    invoke-static {v1}, Lcom/oplus/theme/OplusThemeUtil;->getThemeVerisonList(Ljava/lang/String;)V

    .line 135
    .end local v1    # "infoPath":Ljava/lang/String;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    const-string v1, "OplusThemeUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAppThemeVersion: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-object v2

    .line 135
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static whitelist getCustomThemeList()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 96
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/oplus/theme/OplusThemeUtil;->CUSTOM_THEME_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    .local v0, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 98
    .local v2, "list":[Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 99
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 101
    :cond_0
    if-eqz v2, :cond_5

    array-length v3, v2

    if-nez v3, :cond_1

    goto :goto_2

    .line 104
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 105
    .local v3, "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter v3

    .line 106
    :try_start_0
    const-string v4, "custom_theme_path_default_prop"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 107
    .local v4, "path":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 109
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 111
    :cond_2
    array-length v1, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_4

    aget-object v6, v2, v5

    .line 112
    .local v6, "child":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 113
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    .end local v6    # "child":Ljava/io/File;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 117
    .end local v4    # "path":Ljava/lang/String;
    :cond_4
    :goto_1
    monitor-exit v3

    .line 118
    return-object v3

    .line 117
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 102
    .end local v3    # "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    :goto_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public static whitelist getDefaultThemePath()Ljava/lang/String;
    .locals 2

    .line 82
    sget-object v0, Lcom/oplus/theme/OplusThemeUtil;->sDefaultThemePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 83
    return-object v0

    .line 85
    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/oplus/theme/OplusThemeUtil;->SYSTEM_THEME_DEFAULT_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    sput-object v1, Lcom/oplus/theme/OplusThemeUtil;->sDefaultThemePath:Ljava/lang/String;

    goto :goto_0

    .line 87
    :cond_1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/oplus/theme/OplusThemeUtil;->SYSTEM_THEME_SECOND_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    sput-object v1, Lcom/oplus/theme/OplusThemeUtil;->sDefaultThemePath:Ljava/lang/String;

    goto :goto_0

    .line 90
    :cond_2
    sget-object v0, Lcom/oplus/theme/OplusThemeUtil;->SYSTEM_THEME_THIRD_PATH:Ljava/lang/String;

    sput-object v0, Lcom/oplus/theme/OplusThemeUtil;->sDefaultThemePath:Ljava/lang/String;

    .line 92
    :goto_0
    sget-object v0, Lcom/oplus/theme/OplusThemeUtil;->sDefaultThemePath:Ljava/lang/String;

    return-object v0
.end method

.method private static blacklist getThemeVerisonList(Ljava/lang/String;)V
    .locals 8
    .param p0, "path"    # Ljava/lang/String;

    .line 141
    const-string v0, "getThemeVerisonList IOException, msg = "

    const-string v1, "OplusThemeUtil"

    const/4 v2, 0x0

    .line 142
    .local v2, "fileInputStream":Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 143
    .local v3, "xmlpullparser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v4, 0x0

    .line 145
    .local v4, "bufferedinputstream":Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    .local v5, "xmlFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 147
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v6

    .line 149
    :cond_0
    if-nez v2, :cond_3

    .line 160
    if-eqz v4, :cond_1

    .line 161
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_0

    .line 166
    :catch_0
    move-exception v6

    goto :goto_1

    .line 163
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 164
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 167
    .local v6, "e":Ljava/io/IOException;
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 168
    .end local v6    # "e":Ljava/io/IOException;
    :cond_2
    :goto_2
    nop

    .line 150
    :goto_3
    return-void

    .line 152
    :cond_3
    :try_start_2
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v6

    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    move-object v3, v6

    .line 153
    new-instance v6, Ljava/io/BufferedInputStream;

    const/16 v7, 0x2000

    invoke-direct {v6, v2, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object v4, v6

    .line 154
    const/4 v6, 0x0

    invoke-interface {v3, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 155
    invoke-static {v3}, Lcom/oplus/theme/OplusThemeUtil;->readThemeInfo(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 160
    .end local v5    # "xmlFile":Ljava/io/File;
    nop

    .line 161
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 163
    if-eqz v2, :cond_4

    .line 164
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 168
    :cond_4
    :goto_4
    goto :goto_8

    .line 166
    :catch_1
    move-exception v5

    .line 167
    .local v5, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    :goto_5
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_8

    .line 159
    :catchall_0
    move-exception v5

    goto :goto_9

    .line 156
    :catch_2
    move-exception v5

    .line 157
    .local v5, "e":Ljava/lang/Exception;
    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getThemeVerisonList exception, msg = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 160
    .end local v5    # "e":Ljava/lang/Exception;
    if-eqz v4, :cond_5

    .line 161
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_6

    .line 166
    :catch_3
    move-exception v5

    goto :goto_7

    .line 163
    :cond_5
    :goto_6
    if-eqz v2, :cond_4

    .line 164
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    .line 167
    .local v5, "e":Ljava/io/IOException;
    :goto_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_5

    .line 170
    .end local v5    # "e":Ljava/io/IOException;
    :goto_8
    return-void

    .line 160
    :goto_9
    if-eqz v4, :cond_6

    .line 161
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_a

    .line 166
    :catch_4
    move-exception v6

    goto :goto_b

    .line 163
    :cond_6
    :goto_a
    if-eqz v2, :cond_7

    .line 164
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_c

    .line 167
    .restart local v6    # "e":Ljava/io/IOException;
    :goto_b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 168
    .end local v6    # "e":Ljava/io/IOException;
    :cond_7
    :goto_c
    nop

    .line 169
    :goto_d
    throw v5
.end method

.method private static blacklist readThemeInfo(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 11
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 173
    const-string v0, "packageInfo"

    const-string v1, "OplusThemeUtil"

    const-string v2, ""

    .line 175
    .local v2, "themeVerison":Ljava/lang/String;
    :try_start_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 176
    sget-object v3, Lcom/oplus/theme/OplusThemeUtil;->TAG_ROOT:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-interface {p0, v5, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 177
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v6, 0x3

    if-eq v3, v6, :cond_9

    .line 178
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-eq v3, v5, :cond_0

    .line 179
    goto :goto_0

    .line 181
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 182
    .local v3, "name":Ljava/lang/String;
    const-string v7, "EditorVersion"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 183
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 184
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 185
    goto/16 :goto_2

    .line 187
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 188
    invoke-interface {p0, v5, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_2
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-eq v7, v6, :cond_8

    .line 190
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    if-eq v7, v5, :cond_3

    .line 191
    goto :goto_1

    .line 194
    :cond_3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "package"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 195
    const-string v7, "name"

    invoke-interface {p0, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 196
    .local v7, "pkg":Ljava/lang/String;
    const-string v8, "version"

    invoke-interface {p0, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 197
    .local v8, "value":Ljava/lang/String;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    .line 198
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 199
    goto :goto_1

    .line 201
    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 202
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    .line 204
    :cond_5
    sget-object v9, Lcom/oplus/theme/OplusThemeUtil;->mVersionQueue:Ljava/util/HashMap;

    invoke-virtual {v9, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readThemeInfo package= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", value: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", themeVerison: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    nop

    .end local v7    # "pkg":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    goto :goto_1

    .line 207
    :cond_6
    invoke-static {p0}, Lcom/oplus/theme/OplusThemeUtil;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    .line 211
    :cond_7
    invoke-static {p0}, Lcom/oplus/theme/OplusThemeUtil;->skip(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    .end local v3    # "name":Ljava/lang/String;
    :cond_8
    goto/16 :goto_0

    .line 216
    :cond_9
    :goto_2
    goto :goto_3

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readThemeInfo Exception, msg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method private static blacklist skip(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 223
    const/4 v0, 0x1

    .line 224
    .local v0, "depth":I
    :goto_0
    if-eqz v0, :cond_0

    .line 225
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 227
    :pswitch_0
    add-int/lit8 v0, v0, -0x1

    .line 228
    goto :goto_1

    .line 230
    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    .line 231
    :goto_1
    goto :goto_0

    .line 234
    :cond_0
    return-void

    .line 221
    .end local v0    # "depth":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
