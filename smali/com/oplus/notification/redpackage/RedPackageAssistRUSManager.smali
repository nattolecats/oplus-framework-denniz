.class public Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;
.super Ljava/lang/Object;
.source "RedPackageAssistRUSManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager$FileObserverPolicy;,
        Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager$RedPackageRUSReceiver;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z

.field public static final blacklist ENVELOPE_CONTENT_TAG:Ljava/lang/String; = "envelope_content_tag"

.field public static final blacklist ENVELOPE_FILTER_FIELD:Ljava/lang/String; = "envelope_filter_field"

.field public static final blacklist ENVELOPE_FILTER_VALUE:Ljava/lang/String; = "envelope_filter_value"

.field public static final blacklist ENVELOPE_GROUP_TAG:Ljava/lang/String; = "envelope_group_tag"

.field public static final blacklist ENVELOPE_USER_FIELD:Ljava/lang/String; = "envelope_user_field"

.field public static final blacklist ENVELOPE_USER_NAME_TAG_FIRST:Ljava/lang/String; = "envelope_user_name_tag_first"

.field public static final blacklist ENVELOPE_USER_NAME_TAG_LAST:Ljava/lang/String; = "envelope_user_name_tag_last"

.field public static final blacklist MESSAGE_DOWNLOAD_DATA_FROM_RUS:I = 0x2

.field public static final blacklist MESSAGE_INIT_FILE:I = 0x1

.field public static final blacklist MESSAGE_UPGRADE_DATA_FROM_LOCAL:I = 0x3

.field public static final blacklist OPLUS_REDPACKAGE_ASSIST_ATTRIBUTE_CONFIG_DIR:Ljava/lang/String; = "/data/oplus/os/notification"

.field public static final blacklist OPLUS_REDPACKAGE_ASSIST_ATTRIBUTE_CONFIG_FILE_PATH:Ljava/lang/String; = "/data/oplus/os/notification/sys_systemui_redpackage_assist_config.xml"

.field public static final blacklist OPLUS_REDPACKAGE_ASSIST_CONFIG_KEY:Ljava/lang/String; = "sys_systemui_redpackage_assist_config"

.field public static final blacklist OPLUS_REDPACKAGE_ASSIST_CONFIG_NAME:Ljava/lang/String; = "sys_systemui_redpackage_assist_config.xml"

.field public static final blacklist PKG_VERSION:Ljava/lang/String; = "pkg_version"

.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist mAdaptationEnvelopeInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/notification/redpackage/AdaptationEnvelopeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist mDefaultEnvelopeInfo:[Ljava/lang/String;

.field private static final blacklist mLock:Ljava/lang/Object;

.field private static final blacklist sRedPackageAssistRUSManager:Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private volatile blacklist mCurrentIndex:I

.field private blacklist mHandlerThread:Landroid/os/HandlerThread;

.field private blacklist mMainHandler:Landroid/os/Handler;

.field private blacklist mRedPackageRUSReceiver:Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager$RedPackageRUSReceiver;

.field private blacklist mThreadHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmThreadHandler(Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;->mThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcreatRedPackageConfigFile(Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;->creatRedPackageConfigFile()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateEnvelopeDefaultInfo(Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;->updateEnvelopeDefaultInfo()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDEBUG()Z
    .locals 1

    sget-boolean v0, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;->DEBUG:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmAdaptationEnvelopeInfoList()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;->mAdaptationEnvelopeInfoList:Ljava/util/List;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 9

    .line 66
    const-class v0, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;->TAG:Ljava/lang/String;

    .line 67
    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;->DEBUG:Z

    .line 68
    new-instance v0, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;

    invoke-direct {v0}, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;-><init>()V

    sput-object v0, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;->sRedPackageAssistRUSManager:Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;->mLock:Ljava/lang/Object;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;->mAdaptationEnvelopeInfoList:Ljava/util/List;

    .line 71
    const-string v1, "0"

    const-string v2, "MainUI_User_Last_Msg_Type"

    const-string v3, "436207665"

    const-string v4, "Main_User"

    const-string v5, "@chatroom"

    const-string v6, "]"

    const-string v7, ": [\u5fae\u4fe1\u7ea2\u5305]"

    const-string v8, "[\u5fae\u4fe1\u7ea2\u5305]"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;->mDefaultEnvelopeInfo:[Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;->mCurrentIndex:I

    .line 95
    return-void
.end method

.method public static blacklist compareVersion(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p0, "versionA"    # Ljava/lang/String;
    .param p1, "versionB"    # Ljava/lang/String;

    .line 318
    sget-object v0, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " B:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const/4 v0, 0x0

    if-eqz p0, :cond_6

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    if-eqz p1, :cond_6

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 322
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 323
    return v2

    .line 325
    :cond_1
    const-string v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 326
    .local v3, "arrayA":[Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 327
    .local v1, "arrayB":[Ljava/lang/String;
    array-length v4, v3

    array-length v5, v1

    if-ge v4, v5, :cond_2

    array-length v4, v3

    goto :goto_0

    :cond_2
    array-length v4, v1

    .line 328
    .local v4, "length":I
    :goto_0
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v4, :cond_5

    .line 329
    aget-object v6, v1, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aget-object v7, v3, v5

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const-string v8, "B:"

    if-le v6, v7, :cond_3

    .line 330
    sget-object v0, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v5

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " > A:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v5

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    return v2

    .line 332
    :cond_3
    aget-object v6, v1, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aget-object v7, v3, v5

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 333
    sget-object v2, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v5

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " < A:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v5

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    return v0

    .line 328
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 337
    .end local v5    # "i":I
    :cond_5
    return v0

    .line 320
    .end local v1    # "arrayB":[Ljava/lang/String;
    .end local v3    # "arrayA":[Ljava/lang/String;
    .end local v4    # "length":I
    :cond_6
    :goto_2
    return v0
.end method

.method private blacklist creatRedPackageConfigFile()V
    .locals 5

    .line 136
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/oplus/os/notification"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 137
    .local v0, "redPackageAssistConfigDirectory":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/oplus/os/notification/sys_systemui_redpackage_assist_config.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 139
    .local v1, "redPackageAssistConfigPath":Ljava/io/File;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 140
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 142
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 143
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :cond_1
    goto :goto_0

    .line 145
    :catch_0
    move-exception v2

    .line 146
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 147
    sget-boolean v3, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 148
    sget-object v3, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;->TAG:Ljava/lang/String;

    const-string v4, "init redpackage Dir failed!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    :goto_0
    return-void
.end method

.method public static blacklist getInstance()Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;
    .locals 1

    .line 89
    sget-object v0, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;->sRedPackageAssistRUSManager:Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;

    return-object v0
.end method

.method public static blacklist getRedPackageDataFromLocalFile()Ljava/lang/String;
    .locals 7

    .line 180
    const-string v0, "redpackage local file:error:"

    const/4 v1, 0x0

    .line 181
    .local v1, "is":Ljava/io/InputStream;
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/oplus/os/notification/sys_systemui_redpackage_assist_config.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 182
    .local v2, "xmlFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 184
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 187
    :goto_0
    goto :goto_1

    .line 185
    :catch_0
    move-exception v3

    .line 186
    .local v3, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/FileNotFoundException;
    goto :goto_0

    .line 189
    :cond_0
    sget-boolean v3, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 190
    sget-object v3, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;->TAG:Ljava/lang/String;

    const-string v4, "redpackage local file is not exit!\n"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_1
    :goto_1
    :try_start_1
    invoke-static {v1}, Lcom/oplus/notification/redpackage/RUSUpgradeUtils;->inputStream2String(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    if-eqz v1, :cond_2

    .line 198
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 203
    goto :goto_2

    .line 199
    :catch_1
    move-exception v4

    .line 200
    .local v4, "e":Ljava/io/IOException;
    sget-boolean v5, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;->DEBUG:Z

    if-eqz v5, :cond_2

    .line 201
    sget-object v5, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    .end local v4    # "e":Ljava/io/IOException;
    :cond_2
    :goto_2
    return-object v3

    .line 196
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_3

    .line 198
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 203
    goto :goto_3

    .line 199
    :catch_2
    move-exception v4

    .line 200
    .restart local v4    # "e":Ljava/io/IOException;
    sget-boolean v5, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;->DEBUG:Z

    if-eqz v5, :cond_3

    .line 201
    sget-object v5, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    .end local v4    # "e":Ljava/io/IOException;
    :cond_3
    :goto_3
    throw v3
.end method

.method public static blacklist getVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 342
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 343
    .local v0, "manager":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 344
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    .local v2, "version":Ljava/lang/String;
    return-object v2

    .line 346
    .end local v0    # "manager":Landroid/content/pm/PackageManager;
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "version":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 347
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetVersion failed! e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 348
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist updateEnvelopeDefaultInfo()V
    .locals 4

    .line 242
    sget-object v0, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 243
    :try_start_0
    new-instance v1, Lcom/oplus/notification/redpackage/AdaptationEnvelopeInfo;

    invoke-direct {v1}, Lcom/oplus/notification/redpackage/AdaptationEnvelopeInfo;-><init>()V

    .line 244
    .local v1, "info":Lcom/oplus/notification/redpackage/AdaptationEnvelopeInfo;
    sget-object v2, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;->mDefaultEnvelopeInfo:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v1, v3}, Lcom/oplus/notification/redpackage/AdaptationEnvelopeInfo;->setPkgVersion(Ljava/lang/String;)V

    .line 245
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-virtual {v1, v3}, Lcom/oplus/notification/redpackage/AdaptationEnvelopeInfo;->setEnvelopeFilterField(Ljava/lang/String;)V

    .line 246
    const/4 v3, 0x2

    aget-object v3, v2, v3

    invoke-virtual {v1, v3}, Lcom/oplus/notification/redpackage/AdaptationEnvelopeInfo;->setEnvelopeFilterValue(Ljava/lang/String;)V

    .line 247
    const/4 v3, 0x3

    aget-object v3, v2, v3

    invoke-virtual {v1, v3}, Lcom/oplus/notification/redpackage/AdaptationEnvelopeInfo;->setEnvelopeUserField(Ljava/lang/String;)V

    .line 248
    const/4 v3, 0x4

    aget-object v3, v2, v3

    invoke-virtual {v1, v3}, Lcom/oplus/notification/redpackage/AdaptationEnvelopeInfo;->setEnvelopeGroupTag(Ljava/lang/String;)V

    .line 249
    const/4 v3, 0x5

    aget-object v3, v2, v3

    invoke-virtual {v1, v3}, Lcom/oplus/notification/redpackage/AdaptationEnvelopeInfo;->setEnvelopeUserNameTagFirst(Ljava/lang/String;)V

    .line 250
    const/4 v3, 0x6

    aget-object v3, v2, v3

    invoke-virtual {v1, v3}, Lcom/oplus/notification/redpackage/AdaptationEnvelopeInfo;->setEnvelopeUserNameTagLast(Ljava/lang/String;)V

    .line 251
    const/4 v3, 0x7

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/oplus/notification/redpackage/AdaptationEnvelopeInfo;->setEnvelopeContentTag(Ljava/lang/String;)V

    .line 252
    sget-object v2, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;->mAdaptationEnvelopeInfoList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    nop

    .end local v1    # "info":Lcom/oplus/notification/redpackage/AdaptationEnvelopeInfo;
    monitor-exit v0

    .line 254
    return-void

    .line 253
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public blacklist downloadDataFromRUS(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileKey"    # Ljava/lang/String;

    .line 158
    invoke-static {p1, p2}, Lcom/oplus/notification/redpackage/RUSUpgradeUtils;->getDataFromProvider(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "xmlValue":Ljava/lang/String;
    invoke-static {v0}, Lcom/oplus/notification/redpackage/RUSUpgradeUtils;->getConfigVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, "remoteConfigVersion":Ljava/lang/String;
    invoke-static {p1}, Lcom/oplus/notification/redpackage/RUSUpgradeUtils;->getRedPackageRUSVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 161
    .local v2, "localConfigVersion":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_3

    .line 162
    :cond_0
    if-eqz v0, :cond_2

    .line 163
    const-string v3, "sys_systemui_redpackage_assist_config"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 164
    const-string v3, "sys_systemui_redpackage_assist_config.xml"

    invoke-static {p1, v3, v0}, Lcom/oplus/notification/redpackage/RUSUpgradeUtils;->saveStrToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    nop

    .line 166
    invoke-static {v0}, Lcom/oplus/notification/redpackage/RUSUpgradeUtils;->parseRedpackageString2List(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 167
    .local v3, "tempList":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/notification/redpackage/AdaptationEnvelopeInfo;>;"
    invoke-virtual {p0, v3}, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;->updateEnvelopeWhenRUSArrived(Ljava/util/List;)V

    .line 168
    .end local v3    # "tempList":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/notification/redpackage/AdaptationEnvelopeInfo;>;"
    goto :goto_0

    .line 169
    :cond_1
    sget-boolean v3, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 170
    sget-object v3, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;->TAG:Ljava/lang/String;

    const-string v4, "we need do nothing because this RUS content is null\n"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_2
    :goto_0
    invoke-static {p1, v1}, Lcom/oplus/notification/redpackage/RUSUpgradeUtils;->setRedPackageRUSVersion2Local(Landroid/content/Context;Ljava/lang/String;)V

    .line 176
    :cond_3
    return-void
.end method

.method public blacklist getCurrentRedpackageInfo()Lcom/oplus/notification/redpackage/AdaptationEnvelopeInfo;
    .locals 2

    .line 384
    sget-object v0, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;->mAdaptationEnvelopeInfoList:Ljava/util/List;

    iget v1, p0, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;->mCurrentIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/notification/redpackage/AdaptationEnvelopeInfo;

    return-object v0
.end method

.method public blacklist init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 100
    iput-object p1, p0, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;->mContext:Landroid/content/Context;

    .line 102
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 103
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 104
    new-instance v0, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager$1;

    iget-object v1, p0, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager$1;-><init>(Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;->mThreadHandler:Landroid/os/Handler;

    .line 126
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 127
    new-instance v0, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager$RedPackageRUSReceiver;

    invoke-direct {v0, p0}, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager$RedPackageRUSReceiver;-><init>(Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;)V

    iput-object v0, p0, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;->mRedPackageRUSReceiver:Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager$RedPackageRUSReceiver;

    .line 128
    iget-object v1, p0, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager$RedPackageRUSReceiver;->registerRedPackageRUSReceiver(Landroid/content/Context;)V

    .line 129
    iget-object v0, p0, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;->mThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 131
    return-void
.end method

.method public blacklist shouldSendRedpackageBroadcast(Landroid/app/Notification;)Z
    .locals 9
    .param p1, "notification"    # Landroid/app/Notification;

    .line 353
    iget-object v0, p1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 354
    .local v0, "intent":Landroid/app/PendingIntent;
    const/4 v1, -0x1

    .line 355
    .local v1, "aWeChatMsgId":I
    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 356
    sget-object v3, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;->TAG:Ljava/lang/String;

    const-string v4, "contentIntent is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    return v2

    .line 359
    :cond_0
    sget-object v3, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 360
    :try_start_0
    sget-object v4, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;->mAdaptationEnvelopeInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_1

    if-nez v4, :cond_2

    .line 361
    :cond_1
    invoke-direct {p0}, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;->updateEnvelopeDefaultInfo()V

    .line 365
    :cond_2
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    sget-object v5, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;->mAdaptationEnvelopeInfoList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, -0x1

    if-ge v4, v6, :cond_5

    .line 366
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oplus/notification/redpackage/AdaptationEnvelopeInfo;

    invoke-virtual {v8}, Lcom/oplus/notification/redpackage/AdaptationEnvelopeInfo;->getEnvelopeFilterField()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-eq v6, v7, :cond_4

    .line 367
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oplus/notification/redpackage/AdaptationEnvelopeInfo;

    invoke-virtual {v8}, Lcom/oplus/notification/redpackage/AdaptationEnvelopeInfo;->getEnvelopeFilterField()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    move v1, v6

    .line 368
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oplus/notification/redpackage/AdaptationEnvelopeInfo;

    invoke-virtual {v5}, Lcom/oplus/notification/redpackage/AdaptationEnvelopeInfo;->getEnvelopeFilterValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ne v1, v5, :cond_3

    .line 369
    iput v4, p0, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;->mCurrentIndex:I

    .line 370
    monitor-exit v3

    const/4 v2, 0x1

    return v2

    .line 372
    :cond_3
    const/4 v1, -0x1

    .line 365
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 376
    .end local v4    # "i":I
    :cond_5
    if-ne v1, v7, :cond_6

    .line 377
    monitor-exit v3

    return v2

    .line 379
    :cond_6
    monitor-exit v3

    .line 380
    return v2

    .line 379
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public blacklist updateEnvelopeWhenRUSArrived(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/notification/redpackage/AdaptationEnvelopeInfo;",
            ">;)V"
        }
    .end annotation

    .line 208
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/notification/redpackage/AdaptationEnvelopeInfo;>;"
    invoke-static {}, Lcom/oplus/util/OplusNavigationBarUtil;->getInstance()Lcom/oplus/util/OplusNavigationBarUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/util/OplusNavigationBarUtil;->isHasInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    return-void

    .line 211
    :cond_0
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 214
    :cond_1
    sget-object v0, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 215
    :try_start_0
    sget-object v1, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;->mAdaptationEnvelopeInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 216
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 217
    sget-boolean v2, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 218
    sget-object v2, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "we have upgrade the RUS Data and the value is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_2
    monitor-exit v0

    .line 221
    return-void

    .line 220
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 212
    :cond_3
    :goto_0
    return-void
.end method

.method public blacklist updateRedpackageDataFromLocal()V
    .locals 4

    .line 224
    invoke-static {}, Lcom/oplus/util/OplusNavigationBarUtil;->getInstance()Lcom/oplus/util/OplusNavigationBarUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/util/OplusNavigationBarUtil;->isHasInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    return-void

    .line 227
    :cond_0
    invoke-static {}, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;->getRedPackageDataFromLocalFile()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "xmlValue":Ljava/lang/String;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 231
    :cond_1
    invoke-static {v0}, Lcom/oplus/notification/redpackage/RUSUpgradeUtils;->parseRedpackageString2List(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 232
    .local v1, "tempList":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/notification/redpackage/AdaptationEnvelopeInfo;>;"
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 235
    :cond_2
    sget-object v2, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 236
    :try_start_0
    sget-object v3, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;->mAdaptationEnvelopeInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 237
    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 238
    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 233
    :cond_3
    :goto_0
    return-void

    .line 229
    .end local v1    # "tempList":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/notification/redpackage/AdaptationEnvelopeInfo;>;"
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/oplus/notification/redpackage/RedPackageAssistRUSManager;->updateEnvelopeDefaultInfo()V

    .line 240
    :goto_2
    return-void
.end method
