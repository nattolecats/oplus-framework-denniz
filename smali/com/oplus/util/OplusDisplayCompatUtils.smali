.class public Lcom/oplus/util/OplusDisplayCompatUtils;
.super Ljava/lang/Object;
.source "OplusDisplayCompatUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/util/OplusDisplayCompatUtils$MyPackageMonitor;,
        Lcom/oplus/util/OplusDisplayCompatUtils$SettingsContentObserver;,
        Lcom/oplus/util/OplusDisplayCompatUtils$ConfigFileObserver;
    }
.end annotation


# static fields
.field public static final blacklist COMPAT_ASPECT_RATIO:F = 1.7778f

.field private static final blacklist CUTOUT_MODE_DEFAULT:I = 0x0

.field private static final blacklist CUTOUT_MODE_HIDE:I = 0x2

.field private static final blacklist CUTOUT_MODE_SHOW:I = 0x1

.field private static final blacklist CUTOUT_MODE_SUPPLIERS_TYPES:[I

.field public static final whitelist DEBUG:Z

.field private static final blacklist DEFAULT_FOLD_SCREEN_AUTO_MATCH_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEFAULT_FOLD_SCREEN_FORCE_AUTO_MATCH_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEFAULT_FOLD_SCREEN_FORCE_NON_HIDE_CUTOUT_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEFAULT_FOLD_SCREEN_NON_FORCE_IMMERSIVE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEFAULT_MAX_ASPECT_RATIO:F = 2.0f

.field private static final blacklist DEFAULT_NON_IMMERSIVE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEFAULT_NO_COMPAT_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DISPLAY_CUTOUT_POSITION_LEFT:I = 0x1

.field private static final blacklist DISPLAY_CUTOUT_POSITION_MIDDLE:I = 0x2

.field private static final blacklist DISPLAY_CUTOUT_POSITION_NONE:I = 0x0

.field private static final blacklist IS_FOLD_SCREEN:Z

.field private static final blacklist KEY_APP_LIST_CUTOUT_DEFAULT:Ljava/lang/String; = "key_display_nonimmersive_local_apps"

.field private static final blacklist KEY_APP_LIST_CUTOUT_HIDE:Ljava/lang/String; = "cutout_hide_app_list"

.field private static final blacklist KEY_APP_LIST_CUTOUT_SHOW:Ljava/lang/String; = "key_display_immersive_local_apps"

.field private static final blacklist KEY_LOCAL_COMPAT_APPS:Ljava/lang/String; = "key_display_compat_local_apps_v1"

.field private static final blacklist KEY_LOCAL_FULLSCREEN_APPS:Ljava/lang/String; = "key_display_fullscreen_local_apps_v1"

.field private static final blacklist KEY_SHOW_FULLSCREEN_DIALOG_APPS:Ljava/lang/String; = "key_display_show_dialog_local_apps"

.field private static final blacklist OPLUS_DISPLAY_COMPAT_CONFIG_DIR:Ljava/lang/String; = "/data/oplus/os/displaycompat"

.field private static final blacklist OPLUS_DISPLAY_COMPAT_CONFIG_FILE_PATH:Ljava/lang/String; = "/data/oplus/os/displaycompat/sys_display_compat_config.xml"

.field public static final whitelist OPLUS_LAYOUT_IN_DISPLAY_CUTOUT_MODE_SHOW:I = 0x5

.field private static final blacklist OPLUS_PERMISSION_SAFE_WINDOW:Ljava/lang/String; = "com.oplus.permission.safe.WINDOW"

.field public static final blacklist SUPPORT_REVISE_SQUARE_DISPLAY_ORIENTATION:Z

.field private static final blacklist TAG:Ljava/lang/String; = "OplusDisplayCompatUtils"

.field private static final blacklist TAG_ENABLE:Ljava/lang/String; = "enable_display_compat"

.field private static final blacklist TAG_ENABLE_IMMERSIVE:Ljava/lang/String; = "enable_display_immersive"

.field private static final blacklist TAG_FOLD_SCREEN_PREFIX:Ljava/lang/String; = "fold_"

.field private static final blacklist TAG_TO_TYPE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist THIRD_PARTY_APP_EXCLUDE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist THIRD_PARTY_APP_INCLUDE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TYPE_TO_CUTOUT_MODE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile blacklist sDisplayCompatUtils:Lcom/oplus/util/OplusDisplayCompatUtils;


# instance fields
.field private final blacklist mCompatData:Lcom/oplus/util/OplusDisplayCompatData;

.field private blacklist mConfigFileObserver:Lcom/oplus/util/OplusDisplayCompatUtils$ConfigFileObserver;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mIsSystem:Z

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mMyPackageMonitor:Lcom/oplus/util/OplusDisplayCompatUtils$MyPackageMonitor;

.field private blacklist mPackageManager:Landroid/content/pm/PackageManager;

.field private blacklist mSettingsContentObserver:Lcom/oplus/util/OplusDisplayCompatUtils$SettingsContentObserver;


# direct methods
.method static bridge synthetic blacklist -$$Nest$misThirdPartyApp(Lcom/oplus/util/OplusDisplayCompatUtils;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/util/OplusDisplayCompatUtils;->isThirdPartyApp(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mloadInstalledImeAppList(Lcom/oplus/util/OplusDisplayCompatUtils;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/util/OplusDisplayCompatUtils;->loadInstalledImeAppList()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mshouldCompat(Lcom/oplus/util/OplusDisplayCompatUtils;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/util/OplusDisplayCompatUtils;->shouldCompat(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mupdate(Lcom/oplus/util/OplusDisplayCompatUtils;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/util/OplusDisplayCompatUtils;->update()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateSettings(Lcom/oplus/util/OplusDisplayCompatUtils;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/util/OplusDisplayCompatUtils;->updateSettings()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 25

    .line 102
    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v0

    const-string v1, "oplus.software.revise_square_display_orientation"

    invoke-virtual {v0, v1}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/oplus/util/OplusDisplayCompatUtils;->SUPPORT_REVISE_SQUARE_DISPLAY_ORIENTATION:Z

    .line 106
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    .line 244
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 106
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oplus/util/OplusDisplayCompatUtils;->DEBUG:Z

    .line 140
    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v0

    .line 141
    const-string v1, "oplus.software.display.default_top_display"

    invoke-virtual {v0, v1}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/oplus/util/OplusDisplayCompatUtils;->IS_FOLD_SCREEN:Z

    .line 143
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/oplus/util/OplusDisplayCompatUtils;->THIRD_PARTY_APP_INCLUDE:Ljava/util/Set;

    .line 144
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/oplus/util/OplusDisplayCompatUtils;->THIRD_PARTY_APP_EXCLUDE:Ljava/util/Set;

    .line 145
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/oplus/util/OplusDisplayCompatUtils;->DEFAULT_FOLD_SCREEN_NON_FORCE_IMMERSIVE_LIST:Ljava/util/List;

    .line 146
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lcom/oplus/util/OplusDisplayCompatUtils;->DEFAULT_FOLD_SCREEN_FORCE_AUTO_MATCH_LIST:Ljava/util/List;

    .line 147
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sput-object v5, Lcom/oplus/util/OplusDisplayCompatUtils;->DEFAULT_FOLD_SCREEN_FORCE_NON_HIDE_CUTOUT_LIST:Ljava/util/List;

    .line 148
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sput-object v6, Lcom/oplus/util/OplusDisplayCompatUtils;->DEFAULT_NO_COMPAT_LIST:Ljava/util/List;

    .line 149
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    sput-object v7, Lcom/oplus/util/OplusDisplayCompatUtils;->DEFAULT_NON_IMMERSIVE_LIST:Ljava/util/List;

    .line 150
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    sput-object v8, Lcom/oplus/util/OplusDisplayCompatUtils;->DEFAULT_FOLD_SCREEN_AUTO_MATCH_LIST:Ljava/util/List;

    .line 152
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    sput-object v9, Lcom/oplus/util/OplusDisplayCompatUtils;->TAG_TO_TYPE:Ljava/util/Map;

    .line 157
    const/16 v10, 0x9

    new-array v10, v10, [I

    fill-array-data v10, :array_0

    sput-object v10, Lcom/oplus/util/OplusDisplayCompatUtils;->CUTOUT_MODE_SUPPLIERS_TYPES:[I

    .line 171
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    sput-object v10, Lcom/oplus/util/OplusDisplayCompatUtils;->TYPE_TO_CUTOUT_MODE:Ljava/util/Map;

    .line 173
    const/4 v11, 0x0

    sput-object v11, Lcom/oplus/util/OplusDisplayCompatUtils;->sDisplayCompatUtils:Lcom/oplus/util/OplusDisplayCompatUtils;

    .line 188
    const-string v12, "com.nearme.gamecenter.ddz.nearme.gamecenter"

    const-string v13, "com.google.android.inputmethod.latin"

    const-string v14, "jp.softbank.mb.parentalcontrols"

    const-string v15, "com.android.vending"

    const-string v16, "com.android.chrome"

    const-string v17, "com.google.android.dialer"

    const-string v18, "com.android.permissioncontroller"

    const-string v19, "com.google.android.permissioncontroller"

    const-string v20, "com.google.android.apps.maps"

    const-string v21, "com.heytap.yoli"

    const-string v22, "com.google.android.gms"

    const-string v23, "com.felicanetworks.mfs"

    const-string v24, "com.justsafe.seed"

    filled-new-array/range {v12 .. v24}, [Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v0, v11}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 204
    const-string v12, "com.android.calculator2"

    const-string v13, "com.android.calendar"

    const-string v14, "com.ctsi.emm"

    const-string v15, "com.justsy.launcher"

    const-string v16, "com.justsy.portal"

    const-string v17, "com.justsy.mdm"

    filled-new-array/range {v12 .. v17}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 213
    const-string v0, "com.meitu.meiyancamera"

    const-string v1, "com.adobe.reader"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 218
    const-string v1, "com.tencent.mm"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 222
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 226
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 230
    const-string v0, "com.justsy.launcher"

    const-string v1, "com.justsy.portal"

    const-string v3, "com.justsy.mdm"

    const-string v4, "com.ctsi.emm"

    filled-new-array {v0, v1, v3, v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 236
    const-string v4, "com.walkgame.ismarttv"

    const-string v5, "net.fetnet.fetvod"

    filled-new-array {v4, v5, v0, v1, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 244
    const-string v0, "white"

    invoke-interface {v9, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "black"

    invoke-interface {v9, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "immersive"

    invoke-interface {v9, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    const/16 v3, 0xb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "nonimmersive"

    invoke-interface {v9, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const/16 v4, 0x12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "fold_auto_match"

    invoke-interface {v9, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const/16 v5, 0x11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "fold_non_immersive"

    invoke-interface {v9, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    const/16 v6, 0x10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "fold_immersive"

    invoke-interface {v9, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const/16 v7, 0xd

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "fold_non_force_immersive"

    invoke-interface {v9, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const/16 v7, 0xe

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "fold_force_auto_match"

    invoke-interface {v9, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-string v8, "fold_force_non_hide_cutout"

    invoke-interface {v9, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    invoke-interface {v10, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v10, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v10, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const/4 v7, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v10, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    invoke-interface {v10, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    invoke-interface {v10, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    invoke-interface {v10, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    invoke-interface {v10, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    invoke-interface {v10, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    return-void

    :array_0
    .array-data 4
        0xe
        0x4
        0x5
        0x6
        0x12
        0x10
        0x11
        0xa
        0xb
    .end array-data
.end method

.method private constructor blacklist <init>()V
    .locals 2

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    new-instance v0, Lcom/oplus/util/OplusDisplayCompatData;

    invoke-direct {v0}, Lcom/oplus/util/OplusDisplayCompatData;-><init>()V

    iput-object v0, p0, Lcom/oplus/util/OplusDisplayCompatUtils;->mCompatData:Lcom/oplus/util/OplusDisplayCompatData;

    .line 175
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oplus/util/OplusDisplayCompatUtils;->mLock:Ljava/lang/Object;

    .line 176
    new-instance v0, Lcom/oplus/util/OplusDisplayCompatUtils$MyPackageMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oplus/util/OplusDisplayCompatUtils$MyPackageMonitor;-><init>(Lcom/oplus/util/OplusDisplayCompatUtils;Lcom/oplus/util/OplusDisplayCompatUtils$MyPackageMonitor-IA;)V

    iput-object v0, p0, Lcom/oplus/util/OplusDisplayCompatUtils;->mMyPackageMonitor:Lcom/oplus/util/OplusDisplayCompatUtils$MyPackageMonitor;

    .line 178
    iput-object v1, p0, Lcom/oplus/util/OplusDisplayCompatUtils;->mContext:Landroid/content/Context;

    .line 179
    iput-object v1, p0, Lcom/oplus/util/OplusDisplayCompatUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 270
    return-void
.end method

.method private blacklist changeModFile(Ljava/lang/String;)V
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;

    .line 440
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 441
    .local v0, "file":Ljava/io/File;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 442
    .local v1, "perms":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/PosixFilePermission;>;"
    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 443
    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 444
    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 445
    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 446
    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 447
    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 448
    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 449
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    .line 450
    .local v2, "path":Ljava/nio/file/Path;
    invoke-static {v2, v1}, Ljava/nio/file/Files;->setPosixFilePermissions(Ljava/nio/file/Path;Ljava/util/Set;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    nop

    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "perms":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/PosixFilePermission;>;"
    .end local v2    # "path":Ljava/nio/file/Path;
    goto :goto_0

    .line 451
    :catch_0
    move-exception v0

    .line 452
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusDisplayCompatUtils"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static varargs blacklist formatLogD(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 1387
    const-string v0, "OplusDisplayCompatUtils"

    if-nez p0, :cond_0

    .line 1388
    return-void

    .line 1391
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1394
    goto :goto_0

    .line 1392
    :catch_0
    move-exception v1

    .line 1393
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "format error."

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1395
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static varargs blacklist formatLogDIfNeeded(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 1378
    sget-boolean v0, Lcom/oplus/util/OplusDisplayCompatUtils;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1379
    invoke-static {p0, p1}, Lcom/oplus/util/OplusDisplayCompatUtils;->formatLogD(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1381
    :cond_0
    return-void
.end method

.method public static whitelist getInstance()Lcom/oplus/util/OplusDisplayCompatUtils;
    .locals 2

    .line 278
    sget-object v0, Lcom/oplus/util/OplusDisplayCompatUtils;->sDisplayCompatUtils:Lcom/oplus/util/OplusDisplayCompatUtils;

    if-nez v0, :cond_1

    .line 279
    const-class v0, Lcom/oplus/util/OplusDisplayCompatUtils;

    monitor-enter v0

    .line 280
    :try_start_0
    sget-object v1, Lcom/oplus/util/OplusDisplayCompatUtils;->sDisplayCompatUtils:Lcom/oplus/util/OplusDisplayCompatUtils;

    if-nez v1, :cond_0

    .line 281
    new-instance v1, Lcom/oplus/util/OplusDisplayCompatUtils;

    invoke-direct {v1}, Lcom/oplus/util/OplusDisplayCompatUtils;-><init>()V

    sput-object v1, Lcom/oplus/util/OplusDisplayCompatUtils;->sDisplayCompatUtils:Lcom/oplus/util/OplusDisplayCompatUtils;

    .line 283
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 285
    :cond_1
    :goto_0
    sget-object v0, Lcom/oplus/util/OplusDisplayCompatUtils;->sDisplayCompatUtils:Lcom/oplus/util/OplusDisplayCompatUtils;

    return-object v0
.end method

.method private blacklist initDefaultAppList()V
    .locals 3

    .line 933
    sget-boolean v0, Lcom/oplus/util/OplusDisplayCompatUtils;->IS_FOLD_SCREEN:Z

    if-eqz v0, :cond_0

    .line 934
    iget-object v0, p0, Lcom/oplus/util/OplusDisplayCompatUtils;->mCompatData:Lcom/oplus/util/OplusDisplayCompatData;

    const/16 v1, 0xd

    sget-object v2, Lcom/oplus/util/OplusDisplayCompatUtils;->DEFAULT_FOLD_SCREEN_NON_FORCE_IMMERSIVE_LIST:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/oplus/util/OplusDisplayCompatData;->putList(ILjava/util/List;)V

    .line 935
    iget-object v0, p0, Lcom/oplus/util/OplusDisplayCompatUtils;->mCompatData:Lcom/oplus/util/OplusDisplayCompatData;

    const/16 v1, 0xe

    sget-object v2, Lcom/oplus/util/OplusDisplayCompatUtils;->DEFAULT_FOLD_SCREEN_FORCE_AUTO_MATCH_LIST:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/oplus/util/OplusDisplayCompatData;->putList(ILjava/util/List;)V

    .line 936
    iget-object v0, p0, Lcom/oplus/util/OplusDisplayCompatUtils;->mCompatData:Lcom/oplus/util/OplusDisplayCompatData;

    const/16 v1, 0xf

    sget-object v2, Lcom/oplus/util/OplusDisplayCompatUtils;->DEFAULT_FOLD_SCREEN_FORCE_NON_HIDE_CUTOUT_LIST:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/oplus/util/OplusDisplayCompatData;->putList(ILjava/util/List;)V

    .line 937
    iget-object v0, p0, Lcom/oplus/util/OplusDisplayCompatUtils;->mCompatData:Lcom/oplus/util/OplusDisplayCompatData;

    const/16 v1, 0x12

    sget-object v2, Lcom/oplus/util/OplusDisplayCompatUtils;->DEFAULT_FOLD_SCREEN_AUTO_MATCH_LIST:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/oplus/util/OplusDisplayCompatData;->putList(ILjava/util/List;)V

    .line 939
    :cond_0
    iget-object v0, p0, Lcom/oplus/util/OplusDisplayCompatUtils;->mCompatData:Lcom/oplus/util/OplusDisplayCompatData;

    const/4 v1, 0x1

    sget-object v2, Lcom/oplus/util/OplusDisplayCompatUtils;->DEFAULT_NO_COMPAT_LIST:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/oplus/util/OplusDisplayCompatData;->putList(ILjava/util/List;)V

    .line 940
    iget-object v0, p0, Lcom/oplus/util/OplusDisplayCompatUtils;->mCompatData:Lcom/oplus/util/OplusDisplayCompatData;

    const/16 v1, 0xb

    sget-object v2, Lcom/oplus/util/OplusDisplayCompatUtils;->DEFAULT_NON_IMMERSIVE_LIST:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/oplus/util/OplusDisplayCompatData;->putList(ILjava/util/List;)V

    .line 941
    return-void
.end method

.method private blacklist initDir()V
    .locals 6

    .line 412
    sget-boolean v0, Lcom/oplus/util/OplusDisplayCompatUtils;->DEBUG:Z

    const-string v1, "OplusDisplayCompatUtils"

    if-eqz v0, :cond_0

    .line 413
    const-string v0, "initDir start"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/oplus/os/displaycompat"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 416
    .local v0, "displayCompatDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/oplus/os/displaycompat/sys_display_compat_config.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 419
    .local v2, "displayCompatConfigFile":Ljava/io/File;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 420
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 423
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 424
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    :cond_2
    goto :goto_0

    .line 426
    :catch_0
    move-exception v4

    .line 427
    .local v4, "e":Ljava/io/IOException;
    const-string v5, "initDir failed!!!"

    invoke-static {v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    .end local v4    # "e":Ljava/io/IOException;
    :goto_0
    invoke-direct {p0, v3}, Lcom/oplus/util/OplusDisplayCompatUtils;->changeModFile(Ljava/lang/String;)V

    .line 431
    return-void
.end method

.method private blacklist initFileObserver()V
    .locals 2

    .line 434
    new-instance v0, Lcom/oplus/util/OplusDisplayCompatUtils$ConfigFileObserver;

    const-string v1, "/data/oplus/os/displaycompat/sys_display_compat_config.xml"

    invoke-direct {v0, p0, v1}, Lcom/oplus/util/OplusDisplayCompatUtils$ConfigFileObserver;-><init>(Lcom/oplus/util/OplusDisplayCompatUtils;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oplus/util/OplusDisplayCompatUtils;->mConfigFileObserver:Lcom/oplus/util/OplusDisplayCompatUtils$ConfigFileObserver;

    .line 435
    invoke-virtual {v0}, Lcom/oplus/util/OplusDisplayCompatUtils$ConfigFileObserver;->startWatching()V

    .line 436
    return-void
.end method

.method private blacklist initRUSObserver()V
    .locals 0

    .line 344
    invoke-direct {p0}, Lcom/oplus/util/OplusDisplayCompatUtils;->initDir()V

    .line 345
    invoke-direct {p0}, Lcom/oplus/util/OplusDisplayCompatUtils;->initFileObserver()V

    .line 346
    return-void
.end method

.method private blacklist isOplusApp(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 974
    iget-object v0, p0, Lcom/oplus/util/OplusDisplayCompatUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc07002e    # 1.0400076E-31f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 975
    .local v0, "prefixs":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 976
    .local v4, "prefix":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 977
    const/4 v1, 0x1

    return v1

    .line 975
    .end local v4    # "prefix":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 980
    :cond_1
    return v2
.end method

.method private blacklist isThirdPartyApp(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 984
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 985
    return v1

    .line 987
    :cond_0
    sget-object v0, Lcom/oplus/util/OplusDisplayCompatUtils;->THIRD_PARTY_APP_INCLUDE:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 988
    return v2

    .line 990
    :cond_1
    sget-object v0, Lcom/oplus/util/OplusDisplayCompatUtils;->THIRD_PARTY_APP_EXCLUDE:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 991
    return v1

    .line 993
    :cond_2
    invoke-direct {p0, p1}, Lcom/oplus/util/OplusDisplayCompatUtils;->isOplusApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 994
    return v1

    .line 997
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/oplus/util/OplusDisplayCompatUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_4

    .line 998
    return v1

    .line 1000
    :cond_4
    const/16 v3, 0x2000

    .line 1001
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 1000
    invoke-virtual {v0, p1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1002
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr v3, v2

    if-nez v3, :cond_5

    move v3, v2

    goto :goto_0

    :cond_5
    move v3, v1

    .line 1003
    .local v3, "isDataApp":Z
    :goto_0
    if-eqz v3, :cond_6

    .line 1004
    return v2

    .line 1008
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "isDataApp":Z
    :cond_6
    goto :goto_1

    .line 1006
    :catch_0
    move-exception v0

    .line 1009
    :goto_1
    return v1
.end method

.method private blacklist loadInstalledCompatAppList()V
    .locals 9

    .line 1087
    iget-object v0, p0, Lcom/oplus/util/OplusDisplayCompatUtils;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1088
    return-void

    .line 1090
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1091
    .local v0, "begin":J
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1092
    .local v2, "thirdPartyNeedCompatAppsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/oplus/util/OplusDisplayCompatUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1094
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v4

    .line 1096
    .local v4, "installedPackageList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1098
    .local v6, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v6, :cond_1

    .line 1099
    :try_start_1
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1100
    .local v7, "packageName":Ljava/lang/String;
    invoke-direct {p0, v7, v6}, Lcom/oplus/util/OplusDisplayCompatUtils;->shouldCompat(Ljava/lang/String;Landroid/content/pm/PackageInfo;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1101
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1105
    .end local v7    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v7

    goto :goto_2

    .line 1107
    :cond_1
    :goto_1
    nop

    .line 1108
    .end local v6    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_2
    goto :goto_0

    .line 1111
    .end local v4    # "installedPackageList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_2
    goto :goto_3

    .line 1109
    :catch_1
    move-exception v4

    .line 1113
    :goto_3
    iget-object v4, p0, Lcom/oplus/util/OplusDisplayCompatUtils;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1114
    const/4 v5, 0x7

    :try_start_2
    invoke-virtual {p0, v5, v2}, Lcom/oplus/util/OplusDisplayCompatUtils;->putAppList(ILjava/util/List;)V

    .line 1115
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    .line 1117
    .local v4, "cost":J
    const-string v6, "OplusDisplayCompatUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadInstalledCompatAppList time cost ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    return-void

    .line 1115
    .end local v4    # "cost":J
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5
.end method

.method private blacklist loadInstalledImeAppList()V
    .locals 5

    .line 1062
    iget-object v0, p0, Lcom/oplus/util/OplusDisplayCompatUtils;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1063
    return-void

    .line 1065
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1067
    .local v0, "imeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Lcom/oplus/util/OplusDisplayCompatUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.view.InputMethod"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v3, 0x20080

    .line 1069
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 1068
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    .line 1070
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_2

    .line 1071
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 1072
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_1

    .line 1073
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 1074
    .local v4, "packageName":Ljava/lang/String;
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1076
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 1080
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2
    goto :goto_1

    .line 1078
    :catch_0
    move-exception v1

    .line 1079
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "OplusDisplayCompatUtils"

    const-string v3, "loadInstalledImeAppList failed"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    iget-object v1, p0, Lcom/oplus/util/OplusDisplayCompatUtils;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1082
    const/16 v2, 0x8

    :try_start_1
    invoke-virtual {p0, v2, v0}, Lcom/oplus/util/OplusDisplayCompatUtils;->putAppList(ILjava/util/List;)V

    .line 1083
    monitor-exit v1

    .line 1084
    return-void

    .line 1083
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private blacklist loadInstalledThirdPartyApps()V
    .locals 11

    .line 1121
    const-string v0, "OplusDisplayCompatUtils"

    iget-object v1, p0, Lcom/oplus/util/OplusDisplayCompatUtils;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 1122
    return-void

    .line 1124
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1125
    .local v1, "thirdPartyAppsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/oplus/util/OplusDisplayCompatUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1127
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v3

    .line 1128
    .local v3, "installedPackageList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    .line 1129
    .local v6, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v6, :cond_1

    iget-object v7, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-nez v7, :cond_2

    .line 1130
    goto :goto_0

    .line 1132
    :cond_2
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1133
    .local v7, "packageName":Ljava/lang/String;
    sget-object v8, Lcom/oplus/util/OplusDisplayCompatUtils;->THIRD_PARTY_APP_INCLUDE:Ljava/util/Set;

    invoke-interface {v8, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1134
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1135
    goto :goto_0

    .line 1137
    :cond_3
    sget-object v8, Lcom/oplus/util/OplusDisplayCompatUtils;->THIRD_PARTY_APP_EXCLUDE:Ljava/util/Set;

    invoke-interface {v8, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1138
    goto :goto_0

    .line 1140
    :cond_4
    invoke-direct {p0, v7}, Lcom/oplus/util/OplusDisplayCompatUtils;->isOplusApp(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1141
    goto :goto_0

    .line 1143
    :cond_5
    iget-object v8, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v9, 0x1

    and-int/2addr v8, v9

    if-nez v8, :cond_6

    goto :goto_1

    :cond_6
    move v9, v4

    :goto_1
    move v8, v9

    .line 1144
    .local v8, "isDataApp":Z
    if-eqz v8, :cond_7

    .line 1145
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1146
    sget-boolean v9, Lcom/oplus/util/OplusDisplayCompatUtils;->DEBUG:Z

    if-eqz v9, :cond_7

    .line 1147
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "thirdPartyAppsList add : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1150
    .end local v6    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "isDataApp":Z
    :cond_7
    goto :goto_0

    .line 1153
    .end local v3    # "installedPackageList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_8
    goto :goto_2

    .line 1151
    :catch_0
    move-exception v3

    .line 1152
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to loadInstalledThirdPartyApps: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    const/16 v0, 0xc

    invoke-virtual {p0, v0, v1}, Lcom/oplus/util/OplusDisplayCompatUtils;->putAppList(ILjava/util/List;)V

    .line 1155
    return-void
.end method

.method private blacklist loadLocalAppListFromSettings(Ljava/lang/String;I)V
    .locals 4
    .param p1, "settingsKey"    # Ljava/lang/String;
    .param p2, "listType"    # I

    .line 1048
    iget-object v0, p0, Lcom/oplus/util/OplusDisplayCompatUtils;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1049
    return-void

    .line 1051
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1052
    .local v0, "pkgList":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1053
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1054
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1056
    :cond_1
    iget-object v2, p0, Lcom/oplus/util/OplusDisplayCompatUtils;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1057
    :try_start_0
    iget-object v3, p0, Lcom/oplus/util/OplusDisplayCompatUtils;->mCompatData:Lcom/oplus/util/OplusDisplayCompatData;

    invoke-virtual {v3, p2, v1}, Lcom/oplus/util/OplusDisplayCompatData;->putList(ILjava/util/List;)V

    .line 1058
    monitor-exit v2

    .line 1059
    return-void

    .line 1058
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static blacklist logD(Ljava/lang/String;)V
    .locals 1
    .param p0, "content"    # Ljava/lang/String;

    .line 1362
    const-string v0, "OplusDisplayCompatUtils"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    return-void
.end method

.method public static blacklist logDIfNeeded(Ljava/lang/String;)V
    .locals 1
    .param p0, "content"    # Ljava/lang/String;

    .line 1369
    sget-boolean v0, Lcom/oplus/util/OplusDisplayCompatUtils;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1370
    invoke-static {p0}, Lcom/oplus/util/OplusDisplayCompatUtils;->logD(Ljava/lang/String;)V

    .line 1372
    :cond_0
    return-void
.end method

.method private blacklist onSystemReady(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 331
    iput-object p1, p0, Lcom/oplus/util/OplusDisplayCompatUtils;->mContext:Landroid/content/Context;

    .line 332
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/util/OplusDisplayCompatUtils;->mIsSystem:Z

    .line 334
    invoke-direct {p0}, Lcom/oplus/util/OplusDisplayCompatUtils;->registerSettingsObserver()V

    .line 335
    invoke-direct {p0}, Lcom/oplus/util/OplusDisplayCompatUtils;->registerReceivers()V

    .line 336
    invoke-direct {p0}, Lcom/oplus/util/OplusDisplayCompatUtils;->registerPackageMonitor()V

    .line 338
    invoke-direct {p0}, Lcom/oplus/util/OplusDisplayCompatUtils;->initRUSObserver()V

    .line 340
    invoke-direct {p0}, Lcom/oplus/util/OplusDisplayCompatUtils;->update()V

    .line 341
    return-void
.end method

.method private blacklist parseSafeString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "tag"    # Ljava/lang/String;

    .line 522
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 523
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method private blacklist registerPackageMonitor()V
    .locals 5

    .line 527
    iget-boolean v0, p0, Lcom/oplus/util/OplusDisplayCompatUtils;->mIsSystem:Z

    if-nez v0, :cond_0

    .line 528
    return-void

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/oplus/util/OplusDisplayCompatUtils;->mMyPackageMonitor:Lcom/oplus/util/OplusDisplayCompatUtils$MyPackageMonitor;

    iget-object v1, p0, Lcom/oplus/util/OplusDisplayCompatUtils;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/oplus/util/OplusDisplayCompatUtils$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 531
    return-void
.end method

.method private blacklist registerReceivers()V
    .locals 4

    .line 306
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 307
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 308
    iget-object v1, p0, Lcom/oplus/util/OplusDisplayCompatUtils;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/oplus/util/OplusDisplayCompatUtils$1;

    invoke-direct {v2, p0}, Lcom/oplus/util/OplusDisplayCompatUtils$1;-><init>(Lcom/oplus/util/OplusDisplayCompatUtils;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 318
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 319
    .local v1, "filterMultiUser":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 320
    const-string v2, "android.intent.action.USER_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 321
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 322
    iget-object v2, p0, Lcom/oplus/util/OplusDisplayCompatUtils;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/oplus/util/OplusDisplayCompatUtils$2;

    invoke-direct {v3, p0}, Lcom/oplus/util/OplusDisplayCompatUtils$2;-><init>(Lcom/oplus/util/OplusDisplayCompatUtils;)V

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 328
    return-void
.end method

.method private blacklist registerSettingsObserver()V
    .locals 3

    .line 361
    new-instance v0, Lcom/oplus/util/OplusDisplayCompatUtils$SettingsContentObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/oplus/util/OplusDisplayCompatUtils$SettingsContentObserver;-><init>(Lcom/oplus/util/OplusDisplayCompatUtils;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oplus/util/OplusDisplayCompatUtils;->mSettingsContentObserver:Lcom/oplus/util/OplusDisplayCompatUtils$SettingsContentObserver;

    .line 362
    const-string v0, "key_display_compat_local_apps_v1"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/util/OplusDisplayCompatUtils;->registerSettingsObserver(Landroid/net/Uri;)V

    .line 363
    const-string v0, "key_display_fullscreen_local_apps_v1"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/util/OplusDisplayCompatUtils;->registerSettingsObserver(Landroid/net/Uri;)V

    .line 364
    const-string v0, "key_display_nonimmersive_local_apps"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/util/OplusDisplayCompatUtils;->registerSettingsObserver(Landroid/net/Uri;)V

    .line 365
    const-string v0, "key_display_immersive_local_apps"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/util/OplusDisplayCompatUtils;->registerSettingsObserver(Landroid/net/Uri;)V

    .line 366
    const-string v0, "cutout_hide_app_list"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/util/OplusDisplayCompatUtils;->registerSettingsObserver(Landroid/net/Uri;)V

    .line 367
    const-string v0, "key_display_show_dialog_local_apps"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/util/OplusDisplayCompatUtils;->registerSettingsObserver(Landroid/net/Uri;)V

    .line 368
    return-void
.end method

.method private blacklist registerSettingsObserver(Landroid/net/Uri;)V
    .locals 3
    .param p1, "settingUri"    # Landroid/net/Uri;

    .line 371
    iget-object v0, p0, Lcom/oplus/util/OplusDisplayCompatUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/util/OplusDisplayCompatUtils;->mSettingsContentObserver:Lcom/oplus/util/OplusDisplayCompatUtils$SettingsContentObserver;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 373
    return-void
.end method

.method private blacklist removeCompatApp(Ljava/lang/String;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 883
    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "key_display_compat_local_apps_v1"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/oplus/util/OplusDisplayCompatUtils;->updateLocalApp(Ljava/lang/String;ZILjava/lang/String;)V

    .line 884
    const/4 v0, 0x1

    const/4 v1, 0x3

    const-string v2, "key_display_fullscreen_local_apps_v1"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/oplus/util/OplusDisplayCompatUtils;->updateLocalApp(Ljava/lang/String;ZILjava/lang/String;)V

    .line 885
    return-void
.end method

.method private blacklist setDisplayCutoutType()V
    .locals 7

    .line 1217
    const/4 v0, 0x1

    .line 1219
    .local v0, "cutoutType":I
    :try_start_0
    const-string v1, "ro.oplus.display.screen.heteromorphism"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/OplusSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1220
    .local v1, "value":Ljava/lang/String;
    const-string v2, "OplusDisplayCompatUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cutout size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    if-nez v1, :cond_0

    .line 1222
    return-void

    .line 1224
    :cond_0
    const-string v2, "[,:]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1225
    .local v2, "sizes":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1226
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1227
    .local v3, "x1":I
    const/4 v4, 0x2

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1228
    .local v4, "x2":I
    const/16 v5, 0x32

    .line 1229
    .local v5, "leftEdge":I
    const/16 v6, 0x12c

    .line 1230
    .local v6, "rightEdge":I
    if-ge v3, v5, :cond_1

    if-lt v4, v6, :cond_2

    .line 1231
    :cond_1
    const/4 v0, 0x2

    .line 1234
    .end local v3    # "x1":I
    .end local v4    # "x2":I
    .end local v5    # "leftEdge":I
    .end local v6    # "rightEdge":I
    :cond_2
    iget-object v3, p0, Lcom/oplus/util/OplusDisplayCompatUtils;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1235
    :try_start_1
    iget-object v4, p0, Lcom/oplus/util/OplusDisplayCompatUtils;->mCompatData:Lcom/oplus/util/OplusDisplayCompatData;

    invoke-virtual {v4, v0}, Lcom/oplus/util/OplusDisplayCompatData;->setDisplayCutoutType(I)V

    .line 1236
    monitor-exit v3

    .line 1239
    .end local v1    # "value":Ljava/lang/String;
    .end local v2    # "sizes":[Ljava/lang/String;
    goto :goto_0

    .line 1236
    .restart local v1    # "value":Ljava/lang/String;
    .restart local v2    # "sizes":[Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "cutoutType":I
    .end local p0    # "this":Lcom/oplus/util/OplusDisplayCompatUtils;
    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1237
    .end local v1    # "value":Ljava/lang/String;
    .end local v2    # "sizes":[Ljava/lang/String;
    .restart local v0    # "cutoutType":I
    .restart local p0    # "this":Lcom/oplus/util/OplusDisplayCompatUtils;
    :catch_0
    move-exception v1

    .line 1238
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "OplusDisplayCompatUtils"

    const-string v3, "fail to set display cutout type"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    const-string v1, "OplusDisplayCompatUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set display cutout type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    return-void
.end method

.method private blacklist shouldCompat(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 944
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oplus/util/OplusDisplayCompatUtils;->shouldCompat(Ljava/lang/String;Landroid/content/pm/PackageInfo;)Z

    move-result v0

    return v0
.end method

.method private blacklist shouldCompat(Ljava/lang/String;Landroid/content/pm/PackageInfo;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pkgInfo"    # Landroid/content/pm/PackageInfo;

    .line 948
    const/high16 v0, 0x40000000    # 2.0f

    .line 949
    .local v0, "maxAspectRatio":F
    const/4 v1, 0x0

    .line 950
    .local v1, "privateFlags":I
    invoke-direct {p0, p1}, Lcom/oplus/util/OplusDisplayCompatUtils;->isThirdPartyApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 952
    :try_start_0
    iget-object v2, p0, Lcom/oplus/util/OplusDisplayCompatUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v2, :cond_0

    if-nez p2, :cond_0

    .line 953
    const/16 v3, 0x2000

    .line 954
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 953
    invoke-virtual {v2, p1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2

    move-object p2, v2

    .line 956
    :cond_0
    if-eqz p2, :cond_2

    .line 957
    iget-object v2, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->maxAspectRatio:F

    move v0, v2

    .line 958
    iget-object v2, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_1

    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_1

    .line 960
    const/high16 v0, 0x40000000    # 2.0f

    .line 962
    :cond_1
    iget-object v2, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 966
    :cond_2
    goto :goto_0

    .line 964
    :catch_0
    move-exception v2

    .line 968
    :cond_3
    :goto_0
    const/high16 v2, 0x40000000    # 2.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_4

    and-int/lit16 v2, v1, 0x400

    if-nez v2, :cond_4

    and-int/lit16 v2, v1, 0x1000

    if-nez v2, :cond_4

    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method private blacklist update()V
    .locals 0

    .line 349
    invoke-direct {p0}, Lcom/oplus/util/OplusDisplayCompatUtils;->updateSettings()V

    .line 350
    invoke-direct {p0}, Lcom/oplus/util/OplusDisplayCompatUtils;->updateInstalledApps()V

    .line 351
    invoke-virtual {p0}, Lcom/oplus/util/OplusDisplayCompatUtils;->readDisplayCompatConfig()V

    .line 352
    return-void
.end method

.method private blacklist updateInstalledApps()V
    .locals 0

    .line 355
    invoke-direct {p0}, Lcom/oplus/util/OplusDisplayCompatUtils;->loadInstalledImeAppList()V

    .line 356
    invoke-direct {p0}, Lcom/oplus/util/OplusDisplayCompatUtils;->loadInstalledCompatAppList()V

    .line 357
    invoke-direct {p0}, Lcom/oplus/util/OplusDisplayCompatUtils;->loadInstalledThirdPartyApps()V

    .line 358
    return-void
.end method

.method private blacklist updateLocalApp(Ljava/lang/String;ZILjava/lang/String;)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "add"    # Z
    .param p3, "type"    # I
    .param p4, "key"    # Ljava/lang/String;

    .line 888
    iget-object v0, p0, Lcom/oplus/util/OplusDisplayCompatUtils;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 889
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/oplus/util/OplusDisplayCompatUtils;->getAppList(I)Ljava/util/List;

    move-result-object v1

    .line 890
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 891
    .local v2, "contains":Z
    if-nez v2, :cond_0

    if-eqz p2, :cond_0

    .line 892
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 893
    :cond_0
    if-eqz v2, :cond_1

    if-nez p2, :cond_1

    .line 894
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 896
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/oplus/util/OplusDisplayCompatUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, ","

    invoke-static {v4, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, p4, v4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 897
    nop

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "contains":Z
    monitor-exit v0

    .line 898
    return-void

    .line 897
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist updateSettings()V
    .locals 2

    .line 1169
    const-string v0, "key_display_nonimmersive_local_apps"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/oplus/util/OplusDisplayCompatUtils;->loadLocalAppListFromSettings(Ljava/lang/String;I)V

    .line 1170
    const-string v0, "key_display_immersive_local_apps"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/oplus/util/OplusDisplayCompatUtils;->loadLocalAppListFromSettings(Ljava/lang/String;I)V

    .line 1171
    const-string v0, "cutout_hide_app_list"

    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, Lcom/oplus/util/OplusDisplayCompatUtils;->loadLocalAppListFromSettings(Ljava/lang/String;I)V

    .line 1173
    const-string v0, "key_display_compat_local_apps_v1"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/oplus/util/OplusDisplayCompatUtils;->loadLocalAppListFromSettings(Ljava/lang/String;I)V

    .line 1174
    const-string v0, "key_display_fullscreen_local_apps_v1"

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/oplus/util/OplusDisplayCompatUtils;->loadLocalAppListFromSettings(Ljava/lang/String;I)V

    .line 1176
    const-string v0, "key_display_show_dialog_local_apps"

    const/16 v1, 0x9

    invoke-direct {p0, v0, v1}, Lcom/oplus/util/OplusDisplayCompatUtils;->loadLocalAppListFromSettings(Ljava/lang/String;I)V

    .line 1177
    return-void
.end method


# virtual methods
.method public whitelist addPkgInList(Ljava/lang/String;I)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "type"    # I

    .line 1272
    invoke-static {p2}, Lcom/oplus/util/OplusDisplayCompatData;->checkTypeInvalid(I)Z

    move-result v0

    const-string v1, "OplusDisplayCompatUtils"

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1276
    :cond_0
    iget-object v0, p0, Lcom/oplus/util/OplusDisplayCompatUtils;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 1277
    const-string v0, "addPkgInList no-context"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    return-void

    .line 1280
    :cond_1
    const-string v1, "com.oplus.permission.safe.WINDOW"

    const-string v2, "addPkgInList"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1283
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/oplus/util/OplusDisplayCompatUtils;->updatePkgInList(Ljava/lang/String;IZ)V

    .line 1284
    return-void

    .line 1273
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addPkgInList: invalid params "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    return-void
.end method

.method public blacklist checkIfCtsOrEmptyPkg(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 1018
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1019
    const-string v0, "android.server.cts"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1020
    const-string v0, "android.server.am"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1021
    const-string v0, "android.view.cts"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1022
    const-string v0, "android.assist"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1018
    :goto_1
    return v0
.end method

.method public whitelist getAppCutoutMode(Ljava/lang/String;)I
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;

    .line 795
    const/4 v0, 0x1

    .line 796
    .local v0, "mode":I
    invoke-virtual {p0, p1}, Lcom/oplus/util/OplusDisplayCompatUtils;->inInstalledThirdPartyAppList(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/oplus/util/OplusDisplayCompatUtils;->inInstalledImeList(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 797
    :cond_0
    const/4 v0, 0x0

    .line 800
    :cond_1
    sget-object v1, Lcom/oplus/util/OplusDisplayCompatUtils;->CUTOUT_MODE_SUPPLIERS_TYPES:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget v4, v1, v3

    .line 801
    .local v4, "type":I
    invoke-virtual {p0, p1, v4}, Lcom/oplus/util/OplusDisplayCompatUtils;->isPkgInList(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 802
    sget-object v1, Lcom/oplus/util/OplusDisplayCompatUtils;->TYPE_TO_CUTOUT_MODE:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 803
    goto :goto_1

    .line 800
    .end local v4    # "type":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 806
    :cond_3
    :goto_1
    return v0
.end method

.method public whitelist getAppList(I)Ljava/util/List;
    .locals 3
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1253
    invoke-static {p1}, Lcom/oplus/util/OplusDisplayCompatData;->checkTypeInvalid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1254
    const-string v0, "OplusDisplayCompatUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAppList: invalid params "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 1257
    :cond_0
    iget-object v0, p0, Lcom/oplus/util/OplusDisplayCompatUtils;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1258
    :try_start_0
    iget-object v1, p0, Lcom/oplus/util/OplusDisplayCompatUtils;->mCompatData:Lcom/oplus/util/OplusDisplayCompatData;

    invoke-virtual {v1, p1}, Lcom/oplus/util/OplusDisplayCompatData;->getList(I)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1259
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getDisplayCompatData()Lcom/oplus/util/OplusDisplayCompatData;
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/oplus/util/OplusDisplayCompatUtils;->mCompatData:Lcom/oplus/util/OplusDisplayCompatData;

    return-object v0
.end method

.method public whitelist getImmersiveDefault()Z
    .locals 2

    .line 557
    iget-object v0, p0, Lcom/oplus/util/OplusDisplayCompatUtils;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 558
    :try_start_0
    iget-object v1, p0, Lcom/oplus/util/OplusDisplayCompatUtils;->mCompatData:Lcom/oplus/util/OplusDisplayCompatData;

    invoke-virtual {v1}, Lcom/oplus/util/OplusDisplayCompatData;->getRusImmersiveDefault()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 559
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getMaxAspectRatio(Landroid/content/pm/ActivityInfo;)F
    .locals 7
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .line 817
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getMaxAspectRatio()F

    move-result v0

    .line 818
    .local v0, "maxAspectRatio":F
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/oplus/util/OplusDisplayCompatUtils;->shouldCompatAdjustForPkg(Ljava/lang/String;)Z

    move-result v1

    .line 819
    .local v1, "compat":Z
    const-string v2, " >>> "

    const-string v3, ", maxAspectRatio: "

    const-string v4, "OplusDisplayCompatUtils"

    if-eqz v1, :cond_0

    .line 820
    const v0, 0x3fe38ef3    # 1.7778f

    .line 821
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getMaxAspectRatio()F

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 822
    :cond_0
    iget-object v5, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/oplus/util/OplusDisplayCompatUtils;->inLocalFullScreenPkgList(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 823
    const/4 v0, 0x0

    .line 824
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getMaxAspectRatio()F

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    :cond_1
    :goto_0
    return v0
.end method

.method public whitelist hasHeteromorphismFeature()Z
    .locals 1

    .line 548
    iget-object v0, p0, Lcom/oplus/util/OplusDisplayCompatUtils;->mCompatData:Lcom/oplus/util/OplusDisplayCompatData;

    invoke-virtual {v0}, Lcom/oplus/util/OplusDisplayCompatData;->hasHeteromorphismFeature()Z

    move-result v0

    return v0
.end method

.method public whitelist inAlreadyShowDialogList(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .line 675
    const/16 v0, 0x9

    invoke-virtual {p0, p1, v0}, Lcom/oplus/util/OplusDisplayCompatUtils;->isPkgInList(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public whitelist inBlackPkgList(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .line 579
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/oplus/util/OplusDisplayCompatUtils;->isPkgInList(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public whitelist inCompatPkgList(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .line 695
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist inInstalledCompatPkgList(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .line 645
    const/4 v0, 0x7

    invoke-virtual {p0, p1, v0}, Lcom/oplus/util/OplusDisplayCompatUtils;->isPkgInList(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public whitelist inInstalledImeList(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .line 665
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Lcom/oplus/util/OplusDisplayCompatUtils;->isPkgInList(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public whitelist inInstalledThirdPartyAppList(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .line 655
    const/16 v0, 0xc

    invoke-virtual {p0, p1, v0}, Lcom/oplus/util/OplusDisplayCompatUtils;->isPkgInList(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public whitelist inLocalCompatPkgList(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .line 617
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/oplus/util/OplusDisplayCompatUtils;->isPkgInList(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public whitelist inLocalFullScreenPkgList(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .line 627
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/oplus/util/OplusDisplayCompatUtils;->isPkgInList(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public whitelist inLocalImmersivePkgList(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .line 635
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/oplus/util/OplusDisplayCompatUtils;->isPkgInList(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public whitelist inLocalNonImmersivePkgList(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .line 631
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/oplus/util/OplusDisplayCompatUtils;->isPkgInList(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public whitelist inNeedAdujstSizeList(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .line 685
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist inRusImmersivePkgList(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .line 589
    const/16 v0, 0xa

    invoke-virtual {p0, p1, v0}, Lcom/oplus/util/OplusDisplayCompatUtils;->isPkgInList(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public whitelist inRusNonImmersivePkgList(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 599
    iget-object v0, p0, Lcom/oplus/util/OplusDisplayCompatUtils;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 600
    :try_start_0
    iget-object v1, p0, Lcom/oplus/util/OplusDisplayCompatUtils;->mCompatData:Lcom/oplus/util/OplusDisplayCompatData;

    invoke-virtual {v1}, Lcom/oplus/util/OplusDisplayCompatData;->getDisplayCutoutType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 601
    sget-boolean v1, Lcom/oplus/util/OplusDisplayCompatUtils;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 602
    const-string v1, "OplusDisplayCompatUtils"

    const-string v2, "because this is not a left cutout, the nonimmersive list is not working"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 606
    :cond_1
    const/16 v1, 0xb

    invoke-virtual {p0, p1, v1}, Lcom/oplus/util/OplusDisplayCompatUtils;->isPkgInList(Ljava/lang/String;I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 607
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist inWhitePkgList(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .line 569
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oplus/util/OplusDisplayCompatUtils;->isPkgInList(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public whitelist init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 294
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/util/OplusDisplayCompatUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 295
    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstacne()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v0

    const-string v1, "oplus.software.display.screen_heteromorphism"

    .line 296
    invoke-virtual {v0, v1}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    invoke-direct {p0}, Lcom/oplus/util/OplusDisplayCompatUtils;->setDisplayCutoutType()V

    .line 298
    iget-object v0, p0, Lcom/oplus/util/OplusDisplayCompatUtils;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 299
    :try_start_0
    iget-object v1, p0, Lcom/oplus/util/OplusDisplayCompatUtils;->mCompatData:Lcom/oplus/util/OplusDisplayCompatData;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/oplus/util/OplusDisplayCompatData;->setHasHeteromorphismFeature(Z)V

    .line 300
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 302
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/oplus/util/OplusDisplayCompatUtils;->onSystemReady(Landroid/content/Context;)V

    .line 303
    return-void
.end method

.method public whitelist initData()V
    .locals 4

    .line 393
    :try_start_0
    invoke-static {}, Landroid/app/OplusActivityManager;->getInstance()Landroid/app/OplusActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/OplusActivityManager;->getDisplayCompatData()Lcom/oplus/util/OplusDisplayCompatData;

    move-result-object v0

    .line 394
    .local v0, "serverData":Lcom/oplus/util/OplusDisplayCompatData;
    iget-object v1, p0, Lcom/oplus/util/OplusDisplayCompatUtils;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :try_start_1
    invoke-virtual {p0}, Lcom/oplus/util/OplusDisplayCompatUtils;->getDisplayCompatData()Lcom/oplus/util/OplusDisplayCompatData;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/oplus/util/OplusDisplayCompatData;->updateFrom(Lcom/oplus/util/OplusDisplayCompatData;)Lcom/oplus/util/OplusDisplayCompatData;

    .line 396
    monitor-exit v1

    .line 399
    .end local v0    # "serverData":Lcom/oplus/util/OplusDisplayCompatData;
    goto :goto_0

    .line 396
    .restart local v0    # "serverData":Lcom/oplus/util/OplusDisplayCompatData;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/oplus/util/OplusDisplayCompatUtils;
    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 397
    .end local v0    # "serverData":Lcom/oplus/util/OplusDisplayCompatData;
    .restart local p0    # "this":Lcom/oplus/util/OplusDisplayCompatUtils;
    :catch_0
    move-exception v0

    .line 398
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusDisplayCompatUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init data error , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist initData(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 381
    iput-object p1, p0, Lcom/oplus/util/OplusDisplayCompatUtils;->mContext:Landroid/content/Context;

    .line 382
    if-eqz p1, :cond_0

    .line 383
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/util/OplusDisplayCompatUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 385
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/util/OplusDisplayCompatUtils;->initData()V

    .line 386
    return-void
.end method

.method public blacklist isForceHideCutout(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    .line 777
    const/4 v0, 0x0

    .line 778
    .local v0, "ret":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 779
    const/16 v1, 0xf

    invoke-virtual {p0, p1, v1}, Lcom/oplus/util/OplusDisplayCompatUtils;->isPkgInList(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 780
    const/4 v0, 0x0

    goto :goto_0

    .line 781
    :cond_0
    const/16 v1, 0xe

    invoke-virtual {p0, p1, v1}, Lcom/oplus/util/OplusDisplayCompatUtils;->isPkgInList(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 782
    const/4 v0, 0x0

    goto :goto_0

    .line 783
    :cond_1
    const/4 v1, 0x6

    invoke-virtual {p0, p1, v1}, Lcom/oplus/util/OplusDisplayCompatUtils;->isPkgInList(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 784
    const/4 v0, 0x1

    goto :goto_0

    .line 785
    :cond_2
    invoke-virtual {p0, p1}, Lcom/oplus/util/OplusDisplayCompatUtils;->inRusNonImmersivePkgList(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 786
    const/4 v0, 0x1

    .line 789
    :cond_3
    :goto_0
    return v0
.end method

.method public whitelist isOnlyDisplayCompatEnabled()Z
    .locals 1

    .line 539
    iget-object v0, p0, Lcom/oplus/util/OplusDisplayCompatUtils;->mCompatData:Lcom/oplus/util/OplusDisplayCompatData;

    invoke-virtual {v0}, Lcom/oplus/util/OplusDisplayCompatData;->getDisplayCompatEnabled()Z

    move-result v0

    return v0
.end method

.method public whitelist isPkgInList(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "type"    # I

    .line 1321
    invoke-static {p2}, Lcom/oplus/util/OplusDisplayCompatData;->checkTypeInvalid(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1325
    :cond_0
    iget-object v0, p0, Lcom/oplus/util/OplusDisplayCompatUtils;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1326
    :try_start_0
    iget-object v1, p0, Lcom/oplus/util/OplusDisplayCompatUtils;->mCompatData:Lcom/oplus/util/OplusDisplayCompatData;

    invoke-virtual {v1, p2}, Lcom/oplus/util/OplusDisplayCompatData;->getList(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1327
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1322
    :cond_1
    :goto_0
    const-string v0, "OplusDisplayCompatUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPkgInList: invalid params "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist needCompatPkgByVersionName(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .line 705
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist neverLayoutInDisplayCutout(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 733
    invoke-virtual {p0, p1}, Lcom/oplus/util/OplusDisplayCompatUtils;->inRusNonImmersivePkgList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/oplus/util/OplusDisplayCompatUtils;->inLocalImmersivePkgList(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 734
    const/4 v0, 0x1

    return v0

    .line 736
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist putAppList(ILjava/util/List;)V
    .locals 3
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1334
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/oplus/util/OplusDisplayCompatData;->checkTypeInvalid(I)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1338
    :cond_0
    iget-object v0, p0, Lcom/oplus/util/OplusDisplayCompatUtils;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1339
    :try_start_0
    iget-object v1, p0, Lcom/oplus/util/OplusDisplayCompatUtils;->mCompatData:Lcom/oplus/util/OplusDisplayCompatData;

    invoke-virtual {v1, p1, p2}, Lcom/oplus/util/OplusDisplayCompatData;->putList(ILjava/util/List;)V

    .line 1340
    monitor-exit v0

    .line 1341
    return-void

    .line 1340
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1335
    :cond_1
    :goto_0
    const-string v0, "OplusDisplayCompatUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "putAppList: invalid params "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    return-void
.end method

.method public whitelist readDisplayCompatConfig()V
    .locals 15

    .line 460
    iget-boolean v0, p0, Lcom/oplus/util/OplusDisplayCompatUtils;->mIsSystem:Z

    if-nez v0, :cond_0

    .line 461
    return-void

    .line 464
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/oplus/os/displaycompat/sys_display_compat_config.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 465
    .local v0, "configFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    goto/16 :goto_9

    .line 469
    :cond_1
    const-string v1, "OplusDisplayCompatUtils.readDisplayCompatConfig"

    const-wide/16 v2, 0x20

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 470
    const-string v1, "readDisplayCompatConfig: start"

    invoke-static {v1}, Lcom/oplus/util/OplusDisplayCompatUtils;->logDIfNeeded(Ljava/lang/String;)V

    .line 471
    const/4 v1, 0x0

    .line 473
    .local v1, "stream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v4

    .line 475
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 476
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v5, 0x0

    invoke-interface {v4, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 478
    const/4 v5, -0x1

    .line 480
    .local v5, "type":I
    :cond_2
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    move v5, v6

    .line 481
    const/4 v6, 0x1

    const/4 v7, 0x2

    if-ne v5, v7, :cond_7

    .line 482
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 483
    .local v8, "tagName":Ljava/lang/String;
    iget-object v9, p0, Lcom/oplus/util/OplusDisplayCompatUtils;->mLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 484
    :try_start_1
    sget-object v10, Lcom/oplus/util/OplusDisplayCompatUtils;->TAG_TO_TYPE:Ljava/util/Map;

    invoke-interface {v10, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    const/4 v12, 0x0

    if-eqz v11, :cond_4

    .line 485
    sget-boolean v11, Lcom/oplus/util/OplusDisplayCompatUtils;->IS_FOLD_SCREEN:Z

    if-nez v11, :cond_3

    const-string v11, "fold_"

    invoke-virtual {v8, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 486
    monitor-exit v9

    goto/16 :goto_2

    .line 488
    :cond_3
    invoke-interface {v10, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 489
    .local v10, "dataType":Ljava/lang/Integer;
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v11

    .line 490
    .local v11, "pkg":Ljava/lang/String;
    iget-object v13, p0, Lcom/oplus/util/OplusDisplayCompatUtils;->mCompatData:Lcom/oplus/util/OplusDisplayCompatData;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/oplus/util/OplusDisplayCompatData;->getList(I)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 491
    const-string v13, "readDisplayCompatConfig: tag=%s, type=%d, pkg=%s"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v8, v14, v12

    aput-object v10, v14, v6

    aput-object v11, v14, v7

    invoke-static {v13, v14}, Lcom/oplus/util/OplusDisplayCompatUtils;->formatLogDIfNeeded(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 493
    .end local v10    # "dataType":Ljava/lang/Integer;
    .end local v11    # "pkg":Ljava/lang/String;
    goto :goto_1

    :cond_4
    const-string v10, "enable_display_compat"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 494
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 495
    .local v10, "enabled":Z
    iget-object v11, p0, Lcom/oplus/util/OplusDisplayCompatUtils;->mCompatData:Lcom/oplus/util/OplusDisplayCompatData;

    invoke-virtual {v11, v10}, Lcom/oplus/util/OplusDisplayCompatData;->setDisplatOptEnabled(Z)V

    .line 496
    const-string v11, "readDisplayCompatConfig: tag=%s, enable=%b"

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v8, v7, v12

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v7, v6

    invoke-static {v11, v7}, Lcom/oplus/util/OplusDisplayCompatUtils;->formatLogDIfNeeded(Ljava/lang/String;[Ljava/lang/Object;)V

    .end local v10    # "enabled":Z
    goto :goto_0

    .line 497
    :cond_5
    const-string v10, "enable_display_immersive"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 498
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 499
    .restart local v10    # "enabled":Z
    iget-object v11, p0, Lcom/oplus/util/OplusDisplayCompatUtils;->mCompatData:Lcom/oplus/util/OplusDisplayCompatData;

    invoke-virtual {v11, v10}, Lcom/oplus/util/OplusDisplayCompatData;->setRusImmersiveDefault(Z)V

    .line 500
    const-string v11, "readDisplayCompatConfig: tag=%s, enable=%b"

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v8, v7, v12

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v7, v6

    invoke-static {v11, v7}, Lcom/oplus/util/OplusDisplayCompatUtils;->formatLogDIfNeeded(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 497
    .end local v10    # "enabled":Z
    :cond_6
    :goto_0
    nop

    .line 502
    :goto_1
    monitor-exit v9

    goto :goto_2

    :catchall_0
    move-exception v6

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "configFile":Ljava/io/File;
    .end local v1    # "stream":Ljava/io/FileInputStream;
    .end local p0    # "this":Lcom/oplus/util/OplusDisplayCompatUtils;
    :try_start_2
    throw v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 504
    .end local v8    # "tagName":Ljava/lang/String;
    .restart local v0    # "configFile":Ljava/io/File;
    .restart local v1    # "stream":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/oplus/util/OplusDisplayCompatUtils;
    :cond_7
    :goto_2
    if-ne v5, v6, :cond_2

    .line 510
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "type":I
    nop

    .line 511
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 515
    :cond_8
    :goto_3
    goto :goto_5

    .line 513
    :catch_0
    move-exception v4

    .line 514
    .local v4, "e":Ljava/io/IOException;
    const-string v5, "OplusDisplayCompatUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    :goto_4
    const-string v7, "Failed to close state FileInputStream "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_5

    .line 509
    :catchall_1
    move-exception v2

    goto :goto_6

    .line 505
    :catch_1
    move-exception v4

    .line 506
    .local v4, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v5, "OplusDisplayCompatUtils"

    const-string v6, "failed parsing "

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 507
    invoke-direct {p0}, Lcom/oplus/util/OplusDisplayCompatUtils;->initDefaultAppList()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 510
    .end local v4    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_8

    .line 511
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    .line 513
    :catch_2
    move-exception v4

    .line 514
    .local v4, "e":Ljava/io/IOException;
    const-string v5, "OplusDisplayCompatUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_4

    .line 517
    .end local v4    # "e":Ljava/io/IOException;
    :goto_5
    const-string v4, "readDisplayCompatConfig: end"

    invoke-static {v4}, Lcom/oplus/util/OplusDisplayCompatUtils;->logDIfNeeded(Ljava/lang/String;)V

    .line 518
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 519
    return-void

    .line 510
    :goto_6
    if-eqz v1, :cond_9

    .line 511
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_7

    .line 513
    :catch_3
    move-exception v3

    .line 514
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "OplusDisplayCompatUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to close state FileInputStream "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 515
    .end local v3    # "e":Ljava/io/IOException;
    :cond_9
    :goto_7
    nop

    .line 516
    :goto_8
    throw v2

    .line 466
    .end local v1    # "stream":Ljava/io/FileInputStream;
    :cond_a
    :goto_9
    invoke-direct {p0}, Lcom/oplus/util/OplusDisplayCompatUtils;->initDefaultAppList()V

    .line 467
    return-void
.end method

.method public whitelist removeLocalShowDialogListForPkg(Ljava/lang/String;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 926
    iget-object v0, p0, Lcom/oplus/util/OplusDisplayCompatUtils;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 927
    return-void

    .line 929
    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0x9

    const-string v2, "key_display_show_dialog_local_apps"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/oplus/util/OplusDisplayCompatUtils;->updateLocalApp(Ljava/lang/String;ZILjava/lang/String;)V

    .line 930
    return-void
.end method

.method public whitelist removePkgInList(Ljava/lang/String;I)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "type"    # I

    .line 1296
    invoke-static {p2}, Lcom/oplus/util/OplusDisplayCompatData;->checkTypeInvalid(I)Z

    move-result v0

    const-string v1, "OplusDisplayCompatUtils"

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1300
    :cond_0
    iget-object v0, p0, Lcom/oplus/util/OplusDisplayCompatUtils;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 1301
    const-string v0, "addPkgInList no-context"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    return-void

    .line 1304
    :cond_1
    const-string v1, "com.oplus.permission.safe.WINDOW"

    const-string v2, "removePkgInList"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/oplus/util/OplusDisplayCompatUtils;->updatePkgInList(Ljava/lang/String;IZ)V

    .line 1308
    return-void

    .line 1297
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removePkgInList: invalid params "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    return-void
.end method

.method public whitelist shouldAdjustRealSizeForPkg(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .line 868
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist shouldCompatAdjustForPkg(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    .line 715
    const/4 v0, 0x0

    .line 716
    .local v0, "result":Z
    invoke-virtual {p0}, Lcom/oplus/util/OplusDisplayCompatUtils;->isOnlyDisplayCompatEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 717
    invoke-virtual {p0, p1}, Lcom/oplus/util/OplusDisplayCompatUtils;->inInstalledImeList(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 718
    const/4 v0, 0x0

    goto :goto_0

    .line 719
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oplus/util/OplusDisplayCompatUtils;->inBlackPkgList(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 720
    const/4 v0, 0x0

    goto :goto_0

    .line 721
    :cond_1
    invoke-virtual {p0, p1}, Lcom/oplus/util/OplusDisplayCompatUtils;->inWhitePkgList(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 722
    const/4 v0, 0x1

    goto :goto_0

    .line 723
    :cond_2
    invoke-virtual {p0, p1}, Lcom/oplus/util/OplusDisplayCompatUtils;->inLocalFullScreenPkgList(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 724
    const/4 v0, 0x0

    goto :goto_0

    .line 725
    :cond_3
    invoke-virtual {p0, p1}, Lcom/oplus/util/OplusDisplayCompatUtils;->inInstalledCompatPkgList(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 726
    const/4 v0, 0x1

    .line 729
    :cond_4
    :goto_0
    return v0
.end method

.method public whitelist shouldHideFullscreenButtonForPkg(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    .line 836
    const/4 v0, 0x0

    .line 838
    .local v0, "result":Z
    invoke-virtual {p0, p1}, Lcom/oplus/util/OplusDisplayCompatUtils;->inWhitePkgList(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 839
    const/4 v0, 0x1

    .line 842
    :cond_0
    return v0
.end method

.method public whitelist shouldNonImmersiveAdjustForPkg(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    .line 746
    const/4 v0, 0x0

    .line 747
    .local v0, "result":Z
    invoke-virtual {p0}, Lcom/oplus/util/OplusDisplayCompatUtils;->getImmersiveDefault()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 748
    const/4 v0, 0x0

    goto :goto_0

    .line 751
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oplus/util/OplusDisplayCompatUtils;->inInstalledThirdPartyAppList(Ljava/lang/String;)Z

    move-result v0

    .line 753
    :goto_0
    invoke-virtual {p0, p1}, Lcom/oplus/util/OplusDisplayCompatUtils;->inInstalledImeList(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 754
    const/4 v0, 0x1

    .line 756
    :cond_1
    invoke-virtual {p0, p1}, Lcom/oplus/util/OplusDisplayCompatUtils;->inLocalImmersivePkgList(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 757
    const/4 v0, 0x0

    goto :goto_3

    .line 758
    :cond_2
    invoke-virtual {p0, p1}, Lcom/oplus/util/OplusDisplayCompatUtils;->inLocalNonImmersivePkgList(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 759
    const/4 v0, 0x1

    goto :goto_3

    .line 760
    :cond_3
    invoke-virtual {p0, p1}, Lcom/oplus/util/OplusDisplayCompatUtils;->inRusImmersivePkgList(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const/16 v1, 0x10

    invoke-virtual {p0, p1, v1}, Lcom/oplus/util/OplusDisplayCompatUtils;->isPkgInList(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    .line 762
    :cond_4
    invoke-virtual {p0, p1}, Lcom/oplus/util/OplusDisplayCompatUtils;->inRusNonImmersivePkgList(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const/16 v1, 0x11

    invoke-virtual {p0, p1, v1}, Lcom/oplus/util/OplusDisplayCompatUtils;->isPkgInList(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    .line 764
    :cond_5
    invoke-virtual {p0, p1}, Lcom/oplus/util/OplusDisplayCompatUtils;->shouldCompatAdjustForPkg(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 765
    const/4 v0, 0x1

    goto :goto_3

    .line 763
    :cond_6
    :goto_1
    const/4 v0, 0x1

    goto :goto_3

    .line 761
    :cond_7
    :goto_2
    const/4 v0, 0x0

    .line 767
    :cond_8
    :goto_3
    return v0
.end method

.method public whitelist shouldShowFullscreenDialogForPkg(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    .line 852
    const/4 v0, 0x1

    .line 854
    .local v0, "result":Z
    invoke-virtual {p0, p1}, Lcom/oplus/util/OplusDisplayCompatUtils;->inAlreadyShowDialogList(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 855
    const/4 v0, 0x0

    .line 858
    :cond_0
    return v0
.end method

.method public whitelist updateLocalAppsListForPkg(Ljava/lang/String;)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .line 877
    iget-boolean v0, p0, Lcom/oplus/util/OplusDisplayCompatUtils;->mIsSystem:Z

    if-eqz v0, :cond_0

    .line 878
    invoke-direct {p0, p1}, Lcom/oplus/util/OplusDisplayCompatUtils;->removeCompatApp(Ljava/lang/String;)V

    .line 880
    :cond_0
    return-void
.end method

.method public whitelist updateLocalImmersiveListForPkg(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;

    .line 906
    return-void
.end method

.method public whitelist updateLocalShowDialogListForPkg(Ljava/lang/String;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 914
    iget-object v0, p0, Lcom/oplus/util/OplusDisplayCompatUtils;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 915
    return-void

    .line 917
    :cond_0
    const/4 v0, 0x1

    const/16 v1, 0x9

    const-string v2, "key_display_show_dialog_local_apps"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/oplus/util/OplusDisplayCompatUtils;->updateLocalApp(Ljava/lang/String;ZILjava/lang/String;)V

    .line 918
    return-void
.end method

.method public blacklist updatePkgInList(Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "add"    # Z

    .line 1347
    iget-object v0, p0, Lcom/oplus/util/OplusDisplayCompatUtils;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1348
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/oplus/util/OplusDisplayCompatUtils;->getAppList(I)Ljava/util/List;

    move-result-object v1

    .line 1349
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 1350
    .local v2, "contains":Z
    if-nez v2, :cond_0

    if-eqz p3, :cond_0

    .line 1351
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1352
    :cond_0
    if-eqz v2, :cond_1

    if-nez p3, :cond_1

    .line 1353
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1355
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "contains":Z
    :cond_1
    :goto_0
    monitor-exit v0

    .line 1356
    return-void

    .line 1355
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
