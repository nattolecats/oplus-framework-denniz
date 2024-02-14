.class public Lcom/oplus/util/OplusDisplayOptimizationUtils;
.super Ljava/lang/Object;
.source "OplusDisplayOptimizationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/util/OplusDisplayOptimizationUtils$SwitchObserverPolicy;,
        Lcom/oplus/util/OplusDisplayOptimizationUtils$FileObserverPolicy;
    }
.end annotation


# static fields
.field private static final blacklist COLOR_DISPLAY_OPTIMIZATION_CONFIG_FILE_PATH:Ljava/lang/String; = "/data/oplus/cosa/sys_display_opt_config.xml"

.field private static final blacklist COLOR_DISPLAY_OPTIMIZATION_DIR:Ljava/lang/String; = "/data/oplus/cosa"

.field public static whitelist DEBUG_SWITCH:Z = false

.field private static final blacklist GRAPHICS_ACCELERATION_FOR_GAME_SPACE_MODE:Ljava/lang/String; = "graphics_acceleration_for_game_space_mode"

.field private static final blacklist POLICY_OTHERS:I = 0x2

.field private static final blacklist POLICY_USE_BLACK_LIST:I = 0x1

.field private static final blacklist POLICY_USE_WHITE_LIST:I = 0x0

.field private static final blacklist SWITCH_DEFAULT:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "OplusDisplayOptimizationUtils"

.field private static final blacklist TAG_BLACK:Ljava/lang/String; = "black"

.field private static final blacklist TAG_ENABLE:Ljava/lang/String; = "enable_display_opt"

.field private static final blacklist TAG_ENABLE_POLICY:Ljava/lang/String; = "enable_policy"

.field private static final blacklist TAG_EXCLUDE_PROCESS:Ljava/lang/String; = "excludeProcess"

.field private static final blacklist TAG_EXCLUDE_WINDOW:Ljava/lang/String; = "excludeWindow"

.field private static final blacklist TAG_SPECIAL:Ljava/lang/String; = "special"

.field private static final blacklist TAG_WHITE:Ljava/lang/String; = "white"

.field private static volatile blacklist sDisplayOptUtils:Lcom/oplus/util/OplusDisplayOptimizationUtils;

.field private static blacklist sOptimizationData:Lcom/oplus/util/OplusDisplayOptimizationData;


# instance fields
.field private blacklist mBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mContext:Landroid/content/Context;

.field private final blacklist mDisplayOptBlackListLock:Ljava/lang/Object;

.field private final blacklist mDisplayOptEnableLock:Ljava/lang/Object;

.field private final blacklist mDisplayOptExcludeProcessListLock:Ljava/lang/Object;

.field private final blacklist mDisplayOptExcludeWindowListLock:Ljava/lang/Object;

.field private blacklist mDisplayOptFileObserver:Lcom/oplus/util/OplusDisplayOptimizationUtils$FileObserverPolicy;

.field private final blacklist mDisplayOptPolicyLock:Ljava/lang/Object;

.field private final blacklist mDisplayOptSpeicalListLock:Ljava/lang/Object;

.field private final blacklist mDisplayOptWhiteListLock:Ljava/lang/Object;

.field private blacklist mEnableDisplatOpt:Z

.field private blacklist mEnableGraphicAccelerationSwitch:Z

.field private blacklist mEnablePolicy:I

.field private blacklist mExcludeProcessList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mExcludeWindowList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mGraphicAccelerationSwitchObserver:Lcom/oplus/util/OplusDisplayOptimizationUtils$SwitchObserverPolicy;

.field private blacklist mSpecialList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$mupdateGraphicAccelerationSwitch(Lcom/oplus/util/OplusDisplayOptimizationUtils;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/util/OplusDisplayOptimizationUtils;->updateGraphicAccelerationSwitch()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 50
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->DEBUG_SWITCH:Z

    .line 72
    const/4 v0, 0x0

    sput-object v0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->sOptimizationData:Lcom/oplus/util/OplusDisplayOptimizationData;

    .line 97
    sput-object v0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->sDisplayOptUtils:Lcom/oplus/util/OplusDisplayOptimizationUtils;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 2

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mDisplayOptEnableLock:Ljava/lang/Object;

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mDisplayOptWhiteListLock:Ljava/lang/Object;

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mDisplayOptBlackListLock:Ljava/lang/Object;

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mDisplayOptExcludeProcessListLock:Ljava/lang/Object;

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mDisplayOptExcludeWindowListLock:Ljava/lang/Object;

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mDisplayOptPolicyLock:Ljava/lang/Object;

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mDisplayOptSpeicalListLock:Ljava/lang/Object;

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mContext:Landroid/content/Context;

    .line 85
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mEnableDisplatOpt:Z

    .line 86
    iput-boolean v1, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mEnableGraphicAccelerationSwitch:Z

    .line 87
    const/4 v1, 0x0

    iput v1, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mEnablePolicy:I

    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mBlackList:Ljava/util/List;

    .line 90
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mWhiteList:Ljava/util/List;

    .line 91
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mExcludeProcessList:Ljava/util/List;

    .line 92
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mSpecialList:Ljava/util/List;

    .line 93
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mExcludeWindowList:Ljava/util/List;

    .line 95
    iput-object v0, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mDisplayOptFileObserver:Lcom/oplus/util/OplusDisplayOptimizationUtils$FileObserverPolicy;

    .line 96
    iput-object v0, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mGraphicAccelerationSwitchObserver:Lcom/oplus/util/OplusDisplayOptimizationUtils$SwitchObserverPolicy;

    .line 101
    return-void
.end method

.method private blacklist changeModFile(Ljava/lang/String;)V
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;

    .line 179
    const/16 v0, 0x1f6

    const/4 v1, -0x1

    invoke-static {p1, v0, v1, v1}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 180
    return-void
.end method

.method public static whitelist getInstance()Lcom/oplus/util/OplusDisplayOptimizationUtils;
    .locals 2

    .line 104
    sget-object v0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->sDisplayOptUtils:Lcom/oplus/util/OplusDisplayOptimizationUtils;

    if-nez v0, :cond_1

    .line 105
    const-class v0, Lcom/oplus/util/OplusDisplayOptimizationUtils;

    monitor-enter v0

    .line 106
    :try_start_0
    sget-object v1, Lcom/oplus/util/OplusDisplayOptimizationUtils;->sDisplayOptUtils:Lcom/oplus/util/OplusDisplayOptimizationUtils;

    if-nez v1, :cond_0

    .line 107
    new-instance v1, Lcom/oplus/util/OplusDisplayOptimizationUtils;

    invoke-direct {v1}, Lcom/oplus/util/OplusDisplayOptimizationUtils;-><init>()V

    sput-object v1, Lcom/oplus/util/OplusDisplayOptimizationUtils;->sDisplayOptUtils:Lcom/oplus/util/OplusDisplayOptimizationUtils;

    .line 109
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 111
    :cond_1
    :goto_0
    sget-object v0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->sDisplayOptUtils:Lcom/oplus/util/OplusDisplayOptimizationUtils;

    return-object v0
.end method

.method private blacklist getThis()Ljava/lang/String;
    .locals 1

    .line 338
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist initDir()V
    .locals 6

    .line 143
    sget-boolean v0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->DEBUG_SWITCH:Z

    const-string v1, "OplusDisplayOptimizationUtils"

    if-eqz v0, :cond_0

    .line 144
    const-string v0, "initDir start"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/oplus/cosa"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 147
    .local v0, "displayOptDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/oplus/cosa/sys_display_opt_config.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 150
    .local v2, "displayOptConfigFile":Ljava/io/File;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 151
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 154
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 155
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :cond_2
    goto :goto_0

    .line 157
    :catch_0
    move-exception v4

    .line 158
    .local v4, "e":Ljava/io/IOException;
    const-string v5, "initDir failed!!!"

    invoke-static {v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 162
    .end local v4    # "e":Ljava/io/IOException;
    :goto_0
    invoke-direct {p0, v3}, Lcom/oplus/util/OplusDisplayOptimizationUtils;->changeModFile(Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method private blacklist initFileObserver()V
    .locals 2

    .line 166
    new-instance v0, Lcom/oplus/util/OplusDisplayOptimizationUtils$FileObserverPolicy;

    const-string v1, "/data/oplus/cosa/sys_display_opt_config.xml"

    invoke-direct {v0, p0, v1}, Lcom/oplus/util/OplusDisplayOptimizationUtils$FileObserverPolicy;-><init>(Lcom/oplus/util/OplusDisplayOptimizationUtils;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mDisplayOptFileObserver:Lcom/oplus/util/OplusDisplayOptimizationUtils$FileObserverPolicy;

    .line 167
    invoke-virtual {v0}, Lcom/oplus/util/OplusDisplayOptimizationUtils$FileObserverPolicy;->startWatching()V

    .line 168
    return-void
.end method

.method private blacklist initSwitchObserver()V
    .locals 4

    .line 171
    new-instance v0, Lcom/oplus/util/OplusDisplayOptimizationUtils$SwitchObserverPolicy;

    invoke-direct {v0, p0}, Lcom/oplus/util/OplusDisplayOptimizationUtils$SwitchObserverPolicy;-><init>(Lcom/oplus/util/OplusDisplayOptimizationUtils;)V

    iput-object v0, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mGraphicAccelerationSwitchObserver:Lcom/oplus/util/OplusDisplayOptimizationUtils$SwitchObserverPolicy;

    .line 172
    iget-object v0, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 174
    const-string v1, "graphics_acceleration_for_game_space_mode"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mGraphicAccelerationSwitchObserver:Lcom/oplus/util/OplusDisplayOptimizationUtils$SwitchObserverPolicy;

    .line 173
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 176
    :cond_0
    return-void
.end method

.method private blacklist loadDefaultDisplayOptList()V
    .locals 3

    .line 473
    sget-boolean v0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_0

    .line 474
    const-string v0, "OplusDisplayOptimizationUtils"

    const-string v1, "loadDefaultDisplayOptList"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mDisplayOptWhiteListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 479
    :try_start_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 481
    iget-object v1, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mDisplayOptBlackListLock:Ljava/lang/Object;

    monitor-enter v1

    .line 482
    :try_start_1
    iget-object v0, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mBlackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 483
    iget-object v0, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mBlackList:Ljava/util/List;

    const-string v2, "com.android.launcher"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    iget-object v0, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mBlackList:Ljava/util/List;

    const-string v2, "com.android.launcher"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 487
    iget-object v0, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mDisplayOptSpeicalListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 490
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 492
    iget-object v1, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mDisplayOptExcludeProcessListLock:Ljava/lang/Object;

    monitor-enter v1

    .line 495
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 497
    iget-object v0, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mDisplayOptExcludeWindowListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 500
    :try_start_4
    monitor-exit v0

    .line 501
    return-void

    .line 500
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 495
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 490
    :catchall_2
    move-exception v1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v1

    .line 485
    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    .line 479
    :catchall_4
    move-exception v1

    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v1
.end method

.method private blacklist readConfigFromFileLocked(Ljava/io/File;)V
    .locals 14
    .param p1, "file"    # Ljava/io/File;

    .line 199
    sget-boolean v0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_0

    .line 200
    const-string v0, "OplusDisplayOptimizationUtils"

    const-string v1, "readConfigFromFileLocked start"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 204
    .local v0, "whitePkglist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .local v1, "blackPkglist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .local v2, "specialPkglist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .local v3, "excludeProcesslist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v4, "excludeWindowlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 210
    .local v5, "stream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v5, v6

    .line 212
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 213
    .local v6, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v7, 0x0

    invoke-interface {v6, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 215
    const/4 v7, -0x1

    .line 217
    .local v7, "type":I
    :cond_1
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    move v7, v8

    .line 218
    const/4 v8, 0x2

    const/4 v9, 0x1

    if-ne v7, v8, :cond_10

    .line 219
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 220
    .local v8, "tagName":Ljava/lang/String;
    sget-boolean v10, Lcom/oplus/util/OplusDisplayOptimizationUtils;->DEBUG_SWITCH:Z

    if-eqz v10, :cond_2

    .line 221
    const-string v10, "OplusDisplayOptimizationUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " readConfigFromFileLocked tagName="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_2
    const-string v10, "enable_display_opt"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 225
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    .line 226
    .local v10, "enable":Ljava/lang/String;
    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 227
    iget-object v11, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mDisplayOptEnableLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 228
    :try_start_1
    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    iput-boolean v12, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mEnableDisplatOpt:Z

    .line 229
    sget-object v13, Lcom/oplus/util/OplusDisplayOptimizationUtils;->sOptimizationData:Lcom/oplus/util/OplusDisplayOptimizationData;

    invoke-virtual {v13, v12}, Lcom/oplus/util/OplusDisplayOptimizationData;->setDisplatOptEnabled(Z)V

    .line 230
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    :try_start_2
    sget-boolean v11, Lcom/oplus/util/OplusDisplayOptimizationUtils;->DEBUG_SWITCH:Z

    if-eqz v11, :cond_3

    .line 232
    const-string v11, "OplusDisplayOptimizationUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " readConfigFromFileLocked enable displayopt = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    goto :goto_0

    .line 230
    :catchall_0
    move-exception v9

    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "whitePkglist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "blackPkglist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "specialPkglist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "excludeProcesslist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "excludeWindowlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .end local p0    # "this":Lcom/oplus/util/OplusDisplayOptimizationUtils;
    .end local p1    # "file":Ljava/io/File;
    :try_start_4
    throw v9

    .line 235
    .end local v10    # "enable":Ljava/lang/String;
    .restart local v0    # "whitePkglist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "blackPkglist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "specialPkglist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "excludeProcesslist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "excludeWindowlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/oplus/util/OplusDisplayOptimizationUtils;
    .restart local p1    # "file":Ljava/io/File;
    :cond_3
    :goto_0
    goto/16 :goto_2

    :cond_4
    const-string v10, "enable_policy"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 236
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    .line 237
    .local v10, "enablePolicy":Ljava/lang/String;
    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 238
    iget-object v11, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mDisplayOptPolicyLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    .line 239
    :try_start_5
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 240
    .local v12, "policy":I
    if-eq v12, v9, :cond_5

    if-nez v12, :cond_6

    .line 241
    :cond_5
    iput v12, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mEnablePolicy:I

    .line 242
    sget-object v13, Lcom/oplus/util/OplusDisplayOptimizationUtils;->sOptimizationData:Lcom/oplus/util/OplusDisplayOptimizationData;

    invoke-virtual {v13, v12}, Lcom/oplus/util/OplusDisplayOptimizationData;->setEnablePolicy(I)V

    .line 244
    .end local v12    # "policy":I
    :cond_6
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 245
    :try_start_6
    sget-boolean v11, Lcom/oplus/util/OplusDisplayOptimizationUtils;->DEBUG_SWITCH:Z

    if-eqz v11, :cond_7

    .line 246
    const-string v11, "OplusDisplayOptimizationUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " readConfigFromFileLocked enable policy = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    goto :goto_1

    .line 244
    :catchall_1
    move-exception v9

    :try_start_7
    monitor-exit v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .end local v0    # "whitePkglist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "blackPkglist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "specialPkglist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "excludeProcesslist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "excludeWindowlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .end local p0    # "this":Lcom/oplus/util/OplusDisplayOptimizationUtils;
    .end local p1    # "file":Ljava/io/File;
    :try_start_8
    throw v9

    .line 249
    .end local v10    # "enablePolicy":Ljava/lang/String;
    .restart local v0    # "whitePkglist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "blackPkglist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "specialPkglist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "excludeProcesslist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "excludeWindowlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/oplus/util/OplusDisplayOptimizationUtils;
    .restart local p1    # "file":Ljava/io/File;
    :cond_7
    :goto_1
    goto/16 :goto_2

    :cond_8
    const-string v10, "white"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 250
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    .line 251
    .local v10, "pkg":Ljava/lang/String;
    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 252
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    sget-boolean v11, Lcom/oplus/util/OplusDisplayOptimizationUtils;->DEBUG_SWITCH:Z

    if-eqz v11, :cond_9

    .line 254
    const-string v11, "OplusDisplayOptimizationUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " readConfigFromFileLocked white pkg = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    .end local v10    # "pkg":Ljava/lang/String;
    :cond_9
    goto/16 :goto_2

    :cond_a
    const-string v10, "black"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 258
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    .line 259
    .restart local v10    # "pkg":Ljava/lang/String;
    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b

    .line 260
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    sget-boolean v11, Lcom/oplus/util/OplusDisplayOptimizationUtils;->DEBUG_SWITCH:Z

    if-eqz v11, :cond_b

    .line 262
    const-string v11, "OplusDisplayOptimizationUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " readConfigFromFileLocked black pkg = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    .end local v10    # "pkg":Ljava/lang/String;
    :cond_b
    goto/16 :goto_2

    :cond_c
    const-string v10, "special"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 266
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    .line 267
    .restart local v10    # "pkg":Ljava/lang/String;
    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_d

    .line 268
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    sget-boolean v11, Lcom/oplus/util/OplusDisplayOptimizationUtils;->DEBUG_SWITCH:Z

    if-eqz v11, :cond_d

    .line 270
    const-string v11, "OplusDisplayOptimizationUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " readConfigFromFileLocked special pkg = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    .end local v10    # "pkg":Ljava/lang/String;
    :cond_d
    goto :goto_2

    :cond_e
    const-string v10, "excludeProcess"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 274
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    .line 275
    .local v10, "process":Ljava/lang/String;
    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_10

    .line 276
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    sget-boolean v11, Lcom/oplus/util/OplusDisplayOptimizationUtils;->DEBUG_SWITCH:Z

    if-eqz v11, :cond_10

    .line 278
    const-string v11, "OplusDisplayOptimizationUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " readConfigFromFileLocked exclude process = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 281
    .end local v10    # "process":Ljava/lang/String;
    :cond_f
    const-string v10, "excludeWindow"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 282
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    .line 283
    .local v10, "window":Ljava/lang/String;
    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_10

    .line 284
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    sget-boolean v11, Lcom/oplus/util/OplusDisplayOptimizationUtils;->DEBUG_SWITCH:Z

    if-eqz v11, :cond_10

    .line 286
    const-string v11, "OplusDisplayOptimizationUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " readConfigFromFileLocked exclude window = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    nop

    .line 292
    .end local v8    # "tagName":Ljava/lang/String;
    .end local v10    # "window":Ljava/lang/String;
    :cond_10
    :goto_2
    if-ne v7, v9, :cond_1

    .line 294
    iget-object v8, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mDisplayOptWhiteListLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    .line 295
    :try_start_9
    iget-object v9, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mWhiteList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 296
    iget-object v9, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mWhiteList:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 297
    sget-object v9, Lcom/oplus/util/OplusDisplayOptimizationUtils;->sOptimizationData:Lcom/oplus/util/OplusDisplayOptimizationData;

    invoke-virtual {v9, v0}, Lcom/oplus/util/OplusDisplayOptimizationData;->setWhiteList(Ljava/util/List;)V

    .line 298
    monitor-exit v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 300
    :try_start_a
    iget-object v8, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mDisplayOptBlackListLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    .line 301
    :try_start_b
    iget-object v9, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mBlackList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 302
    iget-object v9, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mBlackList:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 303
    sget-object v9, Lcom/oplus/util/OplusDisplayOptimizationUtils;->sOptimizationData:Lcom/oplus/util/OplusDisplayOptimizationData;

    invoke-virtual {v9, v1}, Lcom/oplus/util/OplusDisplayOptimizationData;->setBlackList(Ljava/util/List;)V

    .line 304
    monitor-exit v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 306
    :try_start_c
    iget-object v8, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mDisplayOptSpeicalListLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 307
    :try_start_d
    iget-object v9, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mSpecialList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 308
    iget-object v9, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mSpecialList:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 309
    sget-object v9, Lcom/oplus/util/OplusDisplayOptimizationUtils;->sOptimizationData:Lcom/oplus/util/OplusDisplayOptimizationData;

    invoke-virtual {v9, v2}, Lcom/oplus/util/OplusDisplayOptimizationData;->setSpecialList(Ljava/util/List;)V

    .line 310
    monitor-exit v8
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 312
    :try_start_e
    iget-object v8, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mDisplayOptExcludeProcessListLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    .line 313
    :try_start_f
    iget-object v9, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mExcludeProcessList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 314
    iget-object v9, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mExcludeProcessList:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 315
    sget-object v9, Lcom/oplus/util/OplusDisplayOptimizationUtils;->sOptimizationData:Lcom/oplus/util/OplusDisplayOptimizationData;

    invoke-virtual {v9, v3}, Lcom/oplus/util/OplusDisplayOptimizationData;->setExcludeProcessList(Ljava/util/List;)V

    .line 316
    monitor-exit v8
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 318
    :try_start_10
    iget-object v8, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mDisplayOptExcludeWindowListLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 319
    :try_start_11
    iget-object v9, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mExcludeWindowList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 320
    iget-object v9, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mExcludeWindowList:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 321
    sget-object v9, Lcom/oplus/util/OplusDisplayOptimizationUtils;->sOptimizationData:Lcom/oplus/util/OplusDisplayOptimizationData;

    invoke-virtual {v9, v4}, Lcom/oplus/util/OplusDisplayOptimizationData;->setExcludeWindowList(Ljava/util/List;)V

    .line 322
    monitor-exit v8
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 328
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "type":I
    nop

    .line 329
    :try_start_12
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_0

    .line 333
    :cond_11
    :goto_3
    goto :goto_5

    .line 331
    :catch_0
    move-exception v6

    .line 332
    .local v6, "e":Ljava/io/IOException;
    const-string v7, "OplusDisplayOptimizationUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    :goto_4
    const-string v9, "Failed to close state FileInputStream "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    .end local v6    # "e":Ljava/io/IOException;
    goto :goto_5

    .line 322
    .local v6, "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "type":I
    :catchall_2
    move-exception v9

    :try_start_13
    monitor-exit v8
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .end local v0    # "whitePkglist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "blackPkglist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "specialPkglist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "excludeProcesslist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "excludeWindowlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .end local p0    # "this":Lcom/oplus/util/OplusDisplayOptimizationUtils;
    .end local p1    # "file":Ljava/io/File;
    :try_start_14
    throw v9
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    .line 316
    .restart local v0    # "whitePkglist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "blackPkglist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "specialPkglist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "excludeProcesslist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "excludeWindowlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/oplus/util/OplusDisplayOptimizationUtils;
    .restart local p1    # "file":Ljava/io/File;
    :catchall_3
    move-exception v9

    :try_start_15
    monitor-exit v8
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    .end local v0    # "whitePkglist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "blackPkglist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "specialPkglist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "excludeProcesslist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "excludeWindowlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .end local p0    # "this":Lcom/oplus/util/OplusDisplayOptimizationUtils;
    .end local p1    # "file":Ljava/io/File;
    :try_start_16
    throw v9
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_1
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    .line 310
    .restart local v0    # "whitePkglist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "blackPkglist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "specialPkglist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "excludeProcesslist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "excludeWindowlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/oplus/util/OplusDisplayOptimizationUtils;
    .restart local p1    # "file":Ljava/io/File;
    :catchall_4
    move-exception v9

    :try_start_17
    monitor-exit v8
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    .end local v0    # "whitePkglist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "blackPkglist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "specialPkglist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "excludeProcesslist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "excludeWindowlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .end local p0    # "this":Lcom/oplus/util/OplusDisplayOptimizationUtils;
    .end local p1    # "file":Ljava/io/File;
    :try_start_18
    throw v9
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_1
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    .line 304
    .restart local v0    # "whitePkglist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "blackPkglist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "specialPkglist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "excludeProcesslist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "excludeWindowlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/oplus/util/OplusDisplayOptimizationUtils;
    .restart local p1    # "file":Ljava/io/File;
    :catchall_5
    move-exception v9

    :try_start_19
    monitor-exit v8
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    .end local v0    # "whitePkglist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "blackPkglist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "specialPkglist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "excludeProcesslist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "excludeWindowlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .end local p0    # "this":Lcom/oplus/util/OplusDisplayOptimizationUtils;
    .end local p1    # "file":Ljava/io/File;
    :try_start_1a
    throw v9
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_1
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    .line 298
    .restart local v0    # "whitePkglist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "blackPkglist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "specialPkglist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "excludeProcesslist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "excludeWindowlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/oplus/util/OplusDisplayOptimizationUtils;
    .restart local p1    # "file":Ljava/io/File;
    :catchall_6
    move-exception v9

    :try_start_1b
    monitor-exit v8
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    .end local v0    # "whitePkglist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "blackPkglist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "specialPkglist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "excludeProcesslist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "excludeWindowlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .end local p0    # "this":Lcom/oplus/util/OplusDisplayOptimizationUtils;
    .end local p1    # "file":Ljava/io/File;
    :try_start_1c
    throw v9
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_1
    .catchall {:try_start_1c .. :try_end_1c} :catchall_7

    .line 327
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "type":I
    .restart local v0    # "whitePkglist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "blackPkglist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "specialPkglist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "excludeProcesslist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "excludeWindowlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/oplus/util/OplusDisplayOptimizationUtils;
    .restart local p1    # "file":Ljava/io/File;
    :catchall_7
    move-exception v6

    goto :goto_6

    .line 323
    :catch_1
    move-exception v6

    .line 324
    .local v6, "e":Ljava/lang/Exception;
    :try_start_1d
    const-string v7, "OplusDisplayOptimizationUtils"

    const-string v8, "failed parsing "

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 325
    invoke-direct {p0}, Lcom/oplus/util/OplusDisplayOptimizationUtils;->loadDefaultDisplayOptList()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_7

    .line 328
    .end local v6    # "e":Ljava/lang/Exception;
    if-eqz v5, :cond_11

    .line 329
    :try_start_1e
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_2

    goto :goto_3

    .line 331
    :catch_2
    move-exception v6

    .line 332
    .local v6, "e":Ljava/io/IOException;
    const-string v7, "OplusDisplayOptimizationUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_4

    .line 335
    .end local v6    # "e":Ljava/io/IOException;
    :goto_5
    return-void

    .line 328
    :goto_6
    if-eqz v5, :cond_12

    .line 329
    :try_start_1f
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_3

    goto :goto_7

    .line 331
    :catch_3
    move-exception v7

    .line 332
    .local v7, "e":Ljava/io/IOException;
    const-string v8, "OplusDisplayOptimizationUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to close state FileInputStream "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 333
    .end local v7    # "e":Ljava/io/IOException;
    :cond_12
    :goto_7
    nop

    .line 334
    :goto_8
    throw v6
.end method

.method private blacklist updateGraphicAccelerationSwitch()V
    .locals 4

    .line 564
    const-string v0, "OplusDisplayOptimizationUtils"

    iget-object v1, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 565
    return-void

    .line 567
    :cond_0
    const/4 v2, 0x1

    .line 569
    .local v2, "result":I
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "graphics_acceleration_for_game_space_mode"

    invoke-static {v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    move v2, v1

    .line 570
    sget-boolean v1, Lcom/oplus/util/OplusDisplayOptimizationUtils;->DEBUG_SWITCH:Z

    if-eqz v1, :cond_1

    .line 571
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reading Settings result = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    :cond_1
    goto :goto_0

    .line 573
    :catch_0
    move-exception v1

    .line 574
    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const/4 v2, 0x1

    .line 575
    sget-boolean v3, Lcom/oplus/util/OplusDisplayOptimizationUtils;->DEBUG_SWITCH:Z

    if-eqz v3, :cond_2

    .line 576
    const-string v3, "SettingNotFoundException"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    .end local v1    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :cond_2
    :goto_0
    const/4 v1, 0x1

    if-ne v2, v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mEnableGraphicAccelerationSwitch:Z

    .line 580
    sget-object v3, Lcom/oplus/util/OplusDisplayOptimizationUtils;->sOptimizationData:Lcom/oplus/util/OplusDisplayOptimizationData;

    if-eqz v3, :cond_4

    .line 581
    invoke-virtual {v3, v1}, Lcom/oplus/util/OplusDisplayOptimizationData;->setGraphicAccelerationSwitchEnabled(Z)V

    .line 583
    :cond_4
    sget-boolean v1, Lcom/oplus/util/OplusDisplayOptimizationUtils;->DEBUG_SWITCH:Z

    if-eqz v1, :cond_5

    .line 584
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateGraphicAccelerationSwitch = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mEnableGraphicAccelerationSwitch:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    :cond_5
    return-void
.end method


# virtual methods
.method public whitelist considerPkgAccordingPolicy(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 406
    const/4 v0, 0x0

    .line 407
    .local v0, "result":Z
    iget-object v1, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mDisplayOptPolicyLock:Ljava/lang/Object;

    monitor-enter v1

    .line 408
    :try_start_0
    iget v2, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mEnablePolicy:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 414
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/oplus/util/OplusDisplayOptimizationUtils;->inBlackPkgList(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    move v0, v2

    .line 415
    goto :goto_0

    .line 410
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/oplus/util/OplusDisplayOptimizationUtils;->inWhitePkgList(Ljava/lang/String;)Z

    move-result v2

    move v0, v2

    .line 411
    nop

    .line 421
    :goto_0
    monitor-exit v1

    .line 423
    return v0

    .line 421
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist getOptimizationData()Lcom/oplus/util/OplusDisplayOptimizationData;
    .locals 1

    .line 136
    sget-object v0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->sOptimizationData:Lcom/oplus/util/OplusDisplayOptimizationData;

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Lcom/oplus/util/OplusDisplayOptimizationData;

    invoke-direct {v0}, Lcom/oplus/util/OplusDisplayOptimizationData;-><init>()V

    sput-object v0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->sOptimizationData:Lcom/oplus/util/OplusDisplayOptimizationData;

    .line 139
    :cond_0
    sget-object v0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->sOptimizationData:Lcom/oplus/util/OplusDisplayOptimizationData;

    return-object v0
.end method

.method public whitelist inBlackPkgList(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 363
    const/4 v0, 0x0

    .line 364
    .local v0, "result":Z
    iget-object v1, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mDisplayOptBlackListLock:Ljava/lang/Object;

    monitor-enter v1

    .line 365
    :try_start_0
    iget-object v2, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mBlackList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 366
    const/4 v0, 0x1

    .line 368
    :cond_0
    monitor-exit v1

    .line 370
    return v0

    .line 368
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public whitelist inExcludeProcessList(Ljava/lang/String;)Z
    .locals 5
    .param p1, "process"    # Ljava/lang/String;

    .line 427
    const/4 v0, 0x0

    .line 428
    .local v0, "result":Z
    iget-object v1, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mDisplayOptExcludeProcessListLock:Ljava/lang/Object;

    monitor-enter v1

    .line 429
    if-eqz p1, :cond_1

    .line 430
    :try_start_0
    iget-object v2, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mExcludeProcessList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 431
    .local v3, "p":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 432
    const/4 v0, 0x1

    .line 433
    goto :goto_1

    .line 435
    .end local v3    # "p":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 437
    :cond_1
    :goto_1
    monitor-exit v1

    .line 439
    return v0

    .line 437
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public whitelist inExcludeWindowList(Ljava/lang/String;)Z
    .locals 5
    .param p1, "window"    # Ljava/lang/String;

    .line 443
    const/4 v0, 0x0

    .line 444
    .local v0, "result":Z
    iget-object v1, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mDisplayOptExcludeWindowListLock:Ljava/lang/Object;

    monitor-enter v1

    .line 445
    if-eqz p1, :cond_1

    .line 446
    :try_start_0
    iget-object v2, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mExcludeWindowList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 447
    .local v3, "w":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 448
    const/4 v0, 0x1

    .line 449
    goto :goto_1

    .line 451
    .end local v3    # "w":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 453
    :cond_1
    :goto_1
    monitor-exit v1

    .line 455
    return v0

    .line 453
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public whitelist inSpecialPkgList(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 385
    const/4 v0, 0x0

    .line 386
    .local v0, "result":Z
    iget-object v1, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mDisplayOptSpeicalListLock:Ljava/lang/Object;

    monitor-enter v1

    .line 387
    :try_start_0
    iget-object v2, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mSpecialList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 388
    const/4 v0, 0x1

    .line 390
    :cond_0
    monitor-exit v1

    .line 392
    return v0

    .line 390
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public whitelist inWhitePkgList(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 374
    const/4 v0, 0x0

    .line 375
    .local v0, "result":Z
    iget-object v1, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mDisplayOptWhiteListLock:Ljava/lang/Object;

    monitor-enter v1

    .line 376
    :try_start_0
    iget-object v2, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mWhiteList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 377
    const/4 v0, 0x1

    .line 379
    :cond_0
    monitor-exit v1

    .line 381
    return v0

    .line 379
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public whitelist init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 115
    iput-object p1, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mContext:Landroid/content/Context;

    .line 116
    sget-object v0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->sOptimizationData:Lcom/oplus/util/OplusDisplayOptimizationData;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Lcom/oplus/util/OplusDisplayOptimizationData;

    invoke-direct {v0}, Lcom/oplus/util/OplusDisplayOptimizationData;-><init>()V

    sput-object v0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->sOptimizationData:Lcom/oplus/util/OplusDisplayOptimizationData;

    .line 119
    :cond_0
    const/4 v0, 0x0

    .line 120
    .local v0, "hasNotSupportFeature":Z
    if-eqz v0, :cond_1

    .line 121
    iget-object v1, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mDisplayOptEnableLock:Ljava/lang/Object;

    monitor-enter v1

    .line 122
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mEnableDisplatOpt:Z

    .line 123
    sget-object v3, Lcom/oplus/util/OplusDisplayOptimizationUtils;->sOptimizationData:Lcom/oplus/util/OplusDisplayOptimizationData;

    invoke-virtual {v3, v2}, Lcom/oplus/util/OplusDisplayOptimizationData;->setDisplatOptEnabled(Z)V

    .line 124
    monitor-exit v1

    .line 126
    return-void

    .line 124
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 128
    :cond_1
    invoke-direct {p0}, Lcom/oplus/util/OplusDisplayOptimizationUtils;->initDir()V

    .line 129
    invoke-direct {p0}, Lcom/oplus/util/OplusDisplayOptimizationUtils;->initFileObserver()V

    .line 130
    invoke-direct {p0}, Lcom/oplus/util/OplusDisplayOptimizationUtils;->initSwitchObserver()V

    .line 131
    invoke-virtual {p0}, Lcom/oplus/util/OplusDisplayOptimizationUtils;->readDisplayOptConfig()V

    .line 132
    invoke-direct {p0}, Lcom/oplus/util/OplusDisplayOptimizationUtils;->updateGraphicAccelerationSwitch()V

    .line 133
    return-void
.end method

.method public whitelist initData()V
    .locals 3

    .line 505
    :try_start_0
    new-instance v0, Landroid/app/OplusActivityManager;

    invoke-direct {v0}, Landroid/app/OplusActivityManager;-><init>()V

    .line 506
    .local v0, "mOplusActivityManager":Landroid/app/OplusActivityManager;
    nop

    .line 507
    invoke-virtual {v0}, Landroid/app/OplusActivityManager;->getDisplayOptimizationData()Lcom/oplus/util/OplusDisplayOptimizationData;

    move-result-object v1

    .line 509
    .local v1, "data":Lcom/oplus/util/OplusDisplayOptimizationData;
    iget-object v2, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mWhiteList:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 510
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 511
    invoke-virtual {v1}, Lcom/oplus/util/OplusDisplayOptimizationData;->getWhiteList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mWhiteList:Ljava/util/List;

    .line 514
    :cond_0
    iget-object v2, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mBlackList:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 515
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 516
    invoke-virtual {v1}, Lcom/oplus/util/OplusDisplayOptimizationData;->getBlackList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mBlackList:Ljava/util/List;

    .line 519
    :cond_1
    iget-object v2, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mSpecialList:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 520
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 521
    invoke-virtual {v1}, Lcom/oplus/util/OplusDisplayOptimizationData;->getSpecialList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mSpecialList:Ljava/util/List;

    .line 524
    :cond_2
    iget-object v2, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mExcludeWindowList:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 525
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 526
    invoke-virtual {v1}, Lcom/oplus/util/OplusDisplayOptimizationData;->getExcludeWindowList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mExcludeWindowList:Ljava/util/List;

    .line 529
    :cond_3
    iget-object v2, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mExcludeProcessList:Ljava/util/List;

    if-eqz v2, :cond_4

    .line 530
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 531
    invoke-virtual {v1}, Lcom/oplus/util/OplusDisplayOptimizationData;->getExcludeProcessList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mExcludeProcessList:Ljava/util/List;

    .line 534
    :cond_4
    invoke-virtual {v1}, Lcom/oplus/util/OplusDisplayOptimizationData;->getDisplatOptEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mEnableDisplatOpt:Z

    .line 535
    invoke-virtual {v1}, Lcom/oplus/util/OplusDisplayOptimizationData;->getGraphicAccelerationSwitchEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mEnableGraphicAccelerationSwitch:Z

    .line 536
    invoke-virtual {v1}, Lcom/oplus/util/OplusDisplayOptimizationData;->getEnablePolicy()I

    move-result v2

    iput v2, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mEnablePolicy:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    .end local v0    # "mOplusActivityManager":Landroid/app/OplusActivityManager;
    .end local v1    # "data":Lcom/oplus/util/OplusDisplayOptimizationData;
    goto :goto_0

    .line 537
    :catch_0
    move-exception v0

    .line 538
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init data error , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusDisplayOptimizationUtils"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist isDisplayOptimizationAndSwitchEnabled()Z
    .locals 3

    .line 341
    const/4 v0, 0x0

    .line 342
    .local v0, "enabled":Z
    iget-object v1, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mDisplayOptEnableLock:Ljava/lang/Object;

    monitor-enter v1

    .line 343
    :try_start_0
    iget-boolean v2, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mEnableDisplatOpt:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mEnableGraphicAccelerationSwitch:Z

    if-eqz v2, :cond_0

    .line 344
    const/4 v0, 0x1

    .line 346
    :cond_0
    monitor-exit v1

    .line 348
    return v0

    .line 346
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public whitelist isOnlyDisplayOptimizationEnabled()Z
    .locals 3

    .line 352
    const/4 v0, 0x0

    .line 353
    .local v0, "enabled":Z
    iget-object v1, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mDisplayOptEnableLock:Ljava/lang/Object;

    monitor-enter v1

    .line 354
    :try_start_0
    iget-boolean v2, p0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->mEnableDisplatOpt:Z

    if-eqz v2, :cond_0

    .line 355
    const/4 v0, 0x1

    .line 357
    :cond_0
    monitor-exit v1

    .line 359
    return v0

    .line 357
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public whitelist readDisplayOptConfig()V
    .locals 5

    .line 183
    sget-boolean v0, Lcom/oplus/util/OplusDisplayOptimizationUtils;->DEBUG_SWITCH:Z

    const-string v1, "OplusDisplayOptimizationUtils"

    if-eqz v0, :cond_0

    .line 184
    const-string v0, "readDisplayOptConfigFile"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/oplus/cosa/sys_display_opt_config.xml"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 187
    .local v0, "displayOptConfigFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 188
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 189
    invoke-direct {p0}, Lcom/oplus/util/OplusDisplayOptimizationUtils;->loadDefaultDisplayOptList()V

    goto :goto_0

    .line 191
    :cond_1
    invoke-direct {p0, v0}, Lcom/oplus/util/OplusDisplayOptimizationUtils;->readConfigFromFileLocked(Ljava/io/File;)V

    goto :goto_0

    .line 194
    :cond_2
    const-string v2, "displayoptconfig file isn\'t exist!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :goto_0
    return-void
.end method

.method public whitelist shouldExcludeForProcess(Ljava/lang/String;)Z
    .locals 2
    .param p1, "process"    # Ljava/lang/String;

    .line 459
    const/4 v0, 0x0

    .line 460
    .local v0, "result":Z
    invoke-virtual {p0}, Lcom/oplus/util/OplusDisplayOptimizationUtils;->isOnlyDisplayOptimizationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/oplus/util/OplusDisplayOptimizationUtils;->inExcludeProcessList(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 462
    return v0
.end method

.method public whitelist shouldExcludeForWindow(Ljava/lang/String;)Z
    .locals 2
    .param p1, "window"    # Ljava/lang/String;

    .line 466
    const/4 v0, 0x0

    .line 467
    .local v0, "result":Z
    invoke-virtual {p0}, Lcom/oplus/util/OplusDisplayOptimizationUtils;->isOnlyDisplayOptimizationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/oplus/util/OplusDisplayOptimizationUtils;->inExcludeWindowList(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 469
    return v0
.end method

.method public whitelist shouldOptimizeForPkg(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 396
    const/4 v0, 0x0

    .line 397
    .local v0, "result":Z
    invoke-virtual {p0}, Lcom/oplus/util/OplusDisplayOptimizationUtils;->isOnlyDisplayOptimizationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/oplus/util/OplusDisplayOptimizationUtils;->inSpecialPkgList(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 398
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/util/OplusDisplayOptimizationUtils;->isDisplayOptimizationAndSwitchEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/oplus/util/OplusDisplayOptimizationUtils;->considerPkgAccordingPolicy(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 399
    sget-boolean v1, Lcom/oplus/util/OplusDisplayOptimizationUtils;->DEBUG_SWITCH:Z

    if-eqz v1, :cond_3

    .line 400
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldOptimize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",pkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusDisplayOptimizationUtils"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_3
    return v0
.end method
