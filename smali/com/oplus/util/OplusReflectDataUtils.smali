.class public Lcom/oplus/util/OplusReflectDataUtils;
.super Ljava/lang/Object;
.source "OplusReflectDataUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/util/OplusReflectDataUtils$FileObserverPolicy;
    }
.end annotation


# static fields
.field private static final blacklist OPLUS_DIRECT_CONFIG_DIR:Ljava/lang/String; = "/data/oplus/oplusos/oplusdirect"

.field private static final blacklist OPLUS_DIRECT_CONFIG_FILE_PATH:Ljava/lang/String; = "/data/oplus/oplusos/oplusdirect/sys_direct_widget_config_list.xml"

.field private static final blacklist TAG:Ljava/lang/String; = "OplusReflectDataUtils"

.field private static final blacklist TAG_ENABLE:Ljava/lang/String; = "reflect_enable"

.field private static final blacklist TAG_RELECT_ATTR_CLASS:Ljava/lang/String; = "className"

.field private static final blacklist TAG_RELECT_ATTR_FIELD:Ljava/lang/String; = "field"

.field private static final blacklist TAG_RELECT_ATTR_LEVEL:Ljava/lang/String; = "fieldLevel"

.field private static final blacklist TAG_RELECT_ATTR_PACKAGE:Ljava/lang/String; = "packageName"

.field private static final blacklist TAG_RELECT_ATTR_VERSION:Ljava/lang/String; = "versionCode"

.field private static final blacklist TAG_RELECT_WIDGET:Ljava/lang/String; = "reflect_widget"

.field private static blacklist mReflectData:Lcom/oplus/util/OplusReflectData;

.field private static blacklist mReflectUtils:Lcom/oplus/util/OplusReflectDataUtils;


# instance fields
.field private blacklist DEBUG:Z

.field private final blacklist mAccidentallyReflectLock:Ljava/lang/Object;

.field private blacklist mHasInit:Z

.field private blacklist mReflectDataFileObserver:Lcom/oplus/util/OplusReflectDataUtils$FileObserverPolicy;

.field private blacklist mReflectEnable:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAccidentallyReflectLock(Lcom/oplus/util/OplusReflectDataUtils;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/oplus/util/OplusReflectDataUtils;->mAccidentallyReflectLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mreadConfigFile(Lcom/oplus/util/OplusReflectDataUtils;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/util/OplusReflectDataUtils;->readConfigFile()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 60
    const/4 v0, 0x0

    sput-object v0, Lcom/oplus/util/OplusReflectDataUtils;->mReflectData:Lcom/oplus/util/OplusReflectData;

    .line 61
    sput-object v0, Lcom/oplus/util/OplusReflectDataUtils;->mReflectUtils:Lcom/oplus/util/OplusReflectDataUtils;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/util/OplusReflectDataUtils;->DEBUG:Z

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/util/OplusReflectDataUtils;->mReflectDataFileObserver:Lcom/oplus/util/OplusReflectDataUtils$FileObserverPolicy;

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oplus/util/OplusReflectDataUtils;->mAccidentallyReflectLock:Ljava/lang/Object;

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/util/OplusReflectDataUtils;->mReflectEnable:Z

    .line 63
    iput-boolean v1, p0, Lcom/oplus/util/OplusReflectDataUtils;->mHasInit:Z

    .line 67
    return-void
.end method

.method private blacklist changeModFile(Ljava/lang/String;)V
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;

    .line 140
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 141
    .local v0, "file":Ljava/io/File;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 142
    .local v1, "perms":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/PosixFilePermission;>;"
    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 143
    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 144
    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 145
    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 146
    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 147
    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 148
    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 149
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    .line 150
    .local v2, "path":Ljava/nio/file/Path;
    invoke-static {v2, v1}, Ljava/nio/file/Files;->setPosixFilePermissions(Ljava/nio/file/Path;Ljava/util/Set;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    nop

    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "perms":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/PosixFilePermission;>;"
    .end local v2    # "path":Ljava/nio/file/Path;
    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 152
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

    const-string v2, "OplusReflectDataUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private blacklist getInitData(Landroid/content/Context;)Lcom/oplus/util/OplusReflectData;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 88
    iget-boolean v0, p0, Lcom/oplus/util/OplusReflectDataUtils;->mHasInit:Z

    if-nez v0, :cond_1

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/util/OplusReflectDataUtils;->mHasInit:Z

    .line 90
    invoke-virtual {p0}, Lcom/oplus/util/OplusReflectDataUtils;->initData()V

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "packageName":Ljava/lang/String;
    const/4 v1, -0x1

    .line 94
    .local v1, "versionCode":I
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    .line 98
    goto :goto_0

    .line 95
    :catch_0
    move-exception v3

    .line 96
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 97
    const/4 v4, 0x0

    sput-object v4, Lcom/oplus/util/OplusReflectDataUtils;->mReflectData:Lcom/oplus/util/OplusReflectData;

    .line 99
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    sget-object v3, Lcom/oplus/util/OplusReflectDataUtils;->mReflectData:Lcom/oplus/util/OplusReflectData;

    if-eqz v3, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-lez v1, :cond_0

    .line 100
    sget-object v2, Lcom/oplus/util/OplusReflectDataUtils;->mReflectData:Lcom/oplus/util/OplusReflectData;

    invoke-virtual {v2, v0, v1}, Lcom/oplus/util/OplusReflectData;->initList(Ljava/lang/String;I)V

    goto :goto_1

    .line 102
    :cond_0
    sget-object v3, Lcom/oplus/util/OplusReflectDataUtils;->mReflectData:Lcom/oplus/util/OplusReflectData;

    if-eqz v3, :cond_1

    .line 103
    invoke-virtual {v3, v2}, Lcom/oplus/util/OplusReflectData;->setReflectEnable(Z)V

    .line 107
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "versionCode":I
    :cond_1
    :goto_1
    sget-object v0, Lcom/oplus/util/OplusReflectDataUtils;->mReflectData:Lcom/oplus/util/OplusReflectData;

    return-object v0
.end method

.method public static whitelist getInstance()Lcom/oplus/util/OplusReflectDataUtils;
    .locals 1

    .line 70
    sget-object v0, Lcom/oplus/util/OplusReflectDataUtils;->mReflectUtils:Lcom/oplus/util/OplusReflectDataUtils;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/oplus/util/OplusReflectDataUtils;

    invoke-direct {v0}, Lcom/oplus/util/OplusReflectDataUtils;-><init>()V

    sput-object v0, Lcom/oplus/util/OplusReflectDataUtils;->mReflectUtils:Lcom/oplus/util/OplusReflectDataUtils;

    .line 73
    :cond_0
    sget-object v0, Lcom/oplus/util/OplusReflectDataUtils;->mReflectUtils:Lcom/oplus/util/OplusReflectDataUtils;

    return-object v0
.end method

.method private blacklist initDir()V
    .locals 4

    .line 121
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/oplus/oplusos/oplusdirect"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    .local v0, "directDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/oplus/oplusos/oplusdirect/sys_direct_widget_config_list.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 125
    .local v1, "directConfigFile":Ljava/io/File;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 126
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 129
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 130
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :cond_1
    goto :goto_0

    .line 132
    :catch_0
    move-exception v3

    .line 133
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 135
    .end local v3    # "e":Ljava/io/IOException;
    :goto_0
    invoke-direct {p0, v2}, Lcom/oplus/util/OplusReflectDataUtils;->changeModFile(Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method private blacklist initFileObserver()V
    .locals 2

    .line 223
    new-instance v0, Lcom/oplus/util/OplusReflectDataUtils$FileObserverPolicy;

    const-string v1, "/data/oplus/oplusos/oplusdirect/sys_direct_widget_config_list.xml"

    invoke-direct {v0, p0, v1}, Lcom/oplus/util/OplusReflectDataUtils$FileObserverPolicy;-><init>(Lcom/oplus/util/OplusReflectDataUtils;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oplus/util/OplusReflectDataUtils;->mReflectDataFileObserver:Lcom/oplus/util/OplusReflectDataUtils$FileObserverPolicy;

    .line 224
    invoke-virtual {v0}, Lcom/oplus/util/OplusReflectDataUtils$FileObserverPolicy;->startWatching()V

    .line 225
    return-void
.end method

.method private blacklist readConfigFile()V
    .locals 12

    .line 157
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/oplus/oplusos/oplusdirect/sys_direct_widget_config_list.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 158
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 159
    return-void

    .line 161
    :cond_0
    sget-object v1, Lcom/oplus/util/OplusReflectDataUtils;->mReflectData:Lcom/oplus/util/OplusReflectData;

    if-nez v1, :cond_1

    .line 162
    new-instance v1, Lcom/oplus/util/OplusReflectData;

    invoke-direct {v1}, Lcom/oplus/util/OplusReflectData;-><init>()V

    sput-object v1, Lcom/oplus/util/OplusReflectDataUtils;->mReflectData:Lcom/oplus/util/OplusReflectData;

    goto :goto_0

    .line 164
    :cond_1
    invoke-virtual {v1}, Lcom/oplus/util/OplusReflectData;->clearList()V

    .line 166
    :goto_0
    const/4 v1, 0x0

    .line 168
    .local v1, "stream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v2

    .line 170
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 171
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 173
    const/4 v3, -0x1

    .line 175
    .local v3, "type":I
    :cond_2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    move v3, v4

    .line 176
    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v3, v4, :cond_c

    .line 177
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 178
    .local v4, "tag":Ljava/lang/String;
    const-string v6, "reflect_enable"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 179
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    .line 180
    .local v6, "reflectEnable":Ljava/lang/String;
    const-string v7, "true"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 181
    iput-boolean v5, p0, Lcom/oplus/util/OplusReflectDataUtils;->mReflectEnable:Z

    goto :goto_1

    .line 182
    :cond_3
    const-string v7, "false"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 183
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/oplus/util/OplusReflectDataUtils;->mReflectEnable:Z

    .line 185
    :cond_4
    :goto_1
    sget-object v7, Lcom/oplus/util/OplusReflectDataUtils;->mReflectData:Lcom/oplus/util/OplusReflectData;

    iget-boolean v8, p0, Lcom/oplus/util/OplusReflectDataUtils;->mReflectEnable:Z

    invoke-virtual {v7, v8}, Lcom/oplus/util/OplusReflectData;->setReflectEnable(Z)V

    .end local v6    # "reflectEnable":Ljava/lang/String;
    goto :goto_4

    .line 186
    :cond_5
    const-string v6, "reflect_widget"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 187
    new-instance v6, Lcom/oplus/util/OplusReflectWidget;

    invoke-direct {v6}, Lcom/oplus/util/OplusReflectWidget;-><init>()V

    .line 188
    .local v6, "reflectWidget":Lcom/oplus/util/OplusReflectWidget;
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v7

    .line 189
    .local v7, "attrNum":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v8, v7, :cond_b

    .line 190
    invoke-interface {v2, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v9

    .line 191
    .local v9, "name":Ljava/lang/String;
    invoke-interface {v2, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    .line 192
    .local v10, "value":Ljava/lang/String;
    const-string v11, "packageName"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 193
    invoke-virtual {v6, v10}, Lcom/oplus/util/OplusReflectWidget;->setPackageName(Ljava/lang/String;)V

    goto :goto_3

    .line 194
    :cond_6
    const-string v11, "versionCode"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 195
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v6, v11}, Lcom/oplus/util/OplusReflectWidget;->setVersionCode(I)V

    goto :goto_3

    .line 196
    :cond_7
    const-string v11, "className"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 197
    invoke-virtual {v6, v10}, Lcom/oplus/util/OplusReflectWidget;->setClassName(Ljava/lang/String;)V

    goto :goto_3

    .line 198
    :cond_8
    const-string v11, "fieldLevel"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 199
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v6, v11}, Lcom/oplus/util/OplusReflectWidget;->setFieldLevel(I)V

    goto :goto_3

    .line 200
    :cond_9
    const-string v11, "field"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 201
    invoke-virtual {v6, v10}, Lcom/oplus/util/OplusReflectWidget;->setField(Ljava/lang/String;)V

    .line 189
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/String;
    :cond_a
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 204
    .end local v8    # "i":I
    :cond_b
    sget-object v8, Lcom/oplus/util/OplusReflectDataUtils;->mReflectData:Lcom/oplus/util/OplusReflectData;

    invoke-virtual {v8, v6}, Lcom/oplus/util/OplusReflectData;->addReflectWidget(Lcom/oplus/util/OplusReflectWidget;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    .line 207
    .end local v4    # "tag":Ljava/lang/String;
    .end local v6    # "reflectWidget":Lcom/oplus/util/OplusReflectWidget;
    .end local v7    # "attrNum":I
    :cond_c
    :goto_4
    if-ne v3, v5, :cond_2

    .line 213
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "type":I
    nop

    .line 214
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 218
    :cond_d
    :goto_5
    goto :goto_6

    .line 216
    :catch_0
    move-exception v2

    .line 217
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 219
    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_6

    .line 212
    :catchall_0
    move-exception v2

    goto :goto_7

    .line 209
    :catch_1
    move-exception v2

    .line 210
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 213
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_d

    .line 214
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    .line 220
    :goto_6
    return-void

    .line 213
    :goto_7
    if-eqz v1, :cond_e

    .line 214
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_8

    .line 216
    :catch_2
    move-exception v3

    .line 217
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 218
    .end local v3    # "e":Ljava/io/IOException;
    :cond_e
    :goto_8
    nop

    .line 219
    :goto_9
    throw v2
.end method


# virtual methods
.method public blacklist getData()Lcom/oplus/util/OplusReflectData;
    .locals 1

    .line 114
    sget-object v0, Lcom/oplus/util/OplusReflectDataUtils;->mReflectData:Lcom/oplus/util/OplusReflectData;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lcom/oplus/util/OplusReflectData;

    invoke-direct {v0}, Lcom/oplus/util/OplusReflectData;-><init>()V

    sput-object v0, Lcom/oplus/util/OplusReflectDataUtils;->mReflectData:Lcom/oplus/util/OplusReflectData;

    .line 117
    :cond_0
    sget-object v0, Lcom/oplus/util/OplusReflectDataUtils;->mReflectData:Lcom/oplus/util/OplusReflectData;

    return-object v0
.end method

.method public whitelist getTextField(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/view/View;",
            ">;)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 259
    .local p2, "viewClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    const/4 v0, 0x0

    .line 260
    .local v0, "textField":Ljava/lang/reflect/Field;
    invoke-direct {p0, p1}, Lcom/oplus/util/OplusReflectDataUtils;->getInitData(Landroid/content/Context;)Lcom/oplus/util/OplusReflectData;

    move-result-object v1

    .line 261
    .local v1, "reflectData":Lcom/oplus/util/OplusReflectData;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/oplus/util/OplusReflectData;->isReflectEnable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 262
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/oplus/util/OplusReflectData;->findWidget(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/util/OplusReflectWidget;

    move-result-object v2

    .line 263
    .local v2, "reflectWidget":Lcom/oplus/util/OplusReflectWidget;
    if-eqz v2, :cond_4

    .line 265
    :try_start_0
    invoke-virtual {v2}, Lcom/oplus/util/OplusReflectWidget;->getFieldLevel()I

    move-result v3

    .line 266
    .local v3, "level":I
    invoke-virtual {v2}, Lcom/oplus/util/OplusReflectWidget;->getField()Ljava/lang/String;

    move-result-object v4

    .line 267
    .local v4, "fieldName":Ljava/lang/String;
    const/4 v5, 0x1

    if-nez v3, :cond_0

    .line 268
    invoke-virtual {p2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 269
    :cond_0
    if-ne v3, v5, :cond_1

    .line 270
    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 271
    :cond_1
    const/4 v6, 0x2

    if-ne v3, v6, :cond_2

    .line 272
    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    move-object v0, v6

    .line 274
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 275
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    .end local v3    # "level":I
    .end local v4    # "fieldName":Ljava/lang/String;
    :cond_3
    goto :goto_1

    .line 277
    :catch_0
    move-exception v3

    .line 278
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 282
    .end local v2    # "reflectWidget":Lcom/oplus/util/OplusReflectWidget;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_1
    return-object v0
.end method

.method public whitelist init()V
    .locals 2

    .line 77
    invoke-direct {p0}, Lcom/oplus/util/OplusReflectDataUtils;->initDir()V

    .line 78
    invoke-direct {p0}, Lcom/oplus/util/OplusReflectDataUtils;->initFileObserver()V

    .line 79
    sget-object v0, Lcom/oplus/util/OplusReflectDataUtils;->mReflectData:Lcom/oplus/util/OplusReflectData;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/oplus/util/OplusReflectData;

    invoke-direct {v0}, Lcom/oplus/util/OplusReflectData;-><init>()V

    sput-object v0, Lcom/oplus/util/OplusReflectDataUtils;->mReflectData:Lcom/oplus/util/OplusReflectData;

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/oplus/util/OplusReflectDataUtils;->mAccidentallyReflectLock:Ljava/lang/Object;

    monitor-enter v0

    .line 83
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/util/OplusReflectDataUtils;->readConfigFile()V

    .line 84
    monitor-exit v0

    .line 85
    return-void

    .line 84
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist initData()V
    .locals 3

    .line 250
    :try_start_0
    new-instance v0, Landroid/app/OplusActivityManager;

    invoke-direct {v0}, Landroid/app/OplusActivityManager;-><init>()V

    .line 251
    .local v0, "mOplusActivityManager":Landroid/app/OplusActivityManager;
    invoke-virtual {v0}, Landroid/app/OplusActivityManager;->getReflectData()Lcom/oplus/util/OplusReflectData;

    move-result-object v1

    sput-object v1, Lcom/oplus/util/OplusReflectDataUtils;->mReflectData:Lcom/oplus/util/OplusReflectData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    .end local v0    # "mOplusActivityManager":Landroid/app/OplusActivityManager;
    goto :goto_0

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    sput-object v1, Lcom/oplus/util/OplusReflectDataUtils;->mReflectData:Lcom/oplus/util/OplusReflectData;

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init data error , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusReflectDataUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
