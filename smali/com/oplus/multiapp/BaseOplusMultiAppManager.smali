.class public abstract Lcom/oplus/multiapp/BaseOplusMultiAppManager;
.super Ljava/lang/Object;
.source "BaseOplusMultiAppManager.java"


# static fields
.field public static final whitelist ACTION_MULTI_APP_USER_UNLOCKED:Ljava/lang/String; = "oplus.intent.action.MULTI_APP_USER_UNLOCKED"

.field public static final whitelist DEBUG_ALL:Z

.field public static final whitelist EXTERNAL_PATH:Ljava/lang/String; = "/storage/emulated/"

.field public static final whitelist EXTERNAL_PRIMARY_MAIN_PATH:Ljava/lang/String; = "/storage/emulated/0"

.field public static final whitelist EXTERNAL_PRIMARY_MULTIAPP_PATH:Ljava/lang/String; = "/storage/emulated/999"

.field public static final whitelist MEDIA_PROVIDER_PACKAGE_NAME:Ljava/lang/String; = "com.android.providers.media"

.field public static final whitelist MULTI_APP_VERSION:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "OplusMultiAppManager"

.field public static final whitelist USER_FLAG_MULTI_APP:I = 0x4000000

.field public static final whitelist USER_ID_MULTI_APP:I = 0x3e7

.field public static final whitelist USER_ID_ORIGINAL:I

.field private static blacklist sStorageVolumes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/os/storage/StorageVolume;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field blacklist oplusMultiApp:Lcom/oplus/multiapp/IOplusMultiApp;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 71
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oplus/multiapp/BaseOplusMultiAppManager;->DEBUG_ALL:Z

    .line 73
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/oplus/multiapp/BaseOplusMultiAppManager;->sStorageVolumes:Ljava/util/Map;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 3

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-static {}, Landroid/common/OplusFrameworkFactory;->getInstance()Landroid/common/OplusFrameworkFactory;

    move-result-object v0

    sget-object v1, Lcom/oplus/multiapp/IOplusMultiApp;->DEFAULT:Lcom/oplus/multiapp/IOplusMultiApp;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/common/OplusFrameworkFactory;->getFeature(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/oplus/multiapp/IOplusMultiApp;

    iput-object v0, p0, Lcom/oplus/multiapp/BaseOplusMultiAppManager;->oplusMultiApp:Lcom/oplus/multiapp/IOplusMultiApp;

    .line 78
    return-void
.end method

.method public static blacklist changeCrossUserVolume(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 9
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "values"    # Landroid/content/ContentValues;

    .line 222
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 223
    .local v0, "userId":I
    if-eqz p0, :cond_6

    const/16 v1, 0x3e7

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 226
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProvider;->getAuthorityWithoutUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, "authWithoutUserId":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    .line 228
    .local v2, "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "media"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 231
    :cond_1
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 232
    .local v4, "volumeName":Ljava/lang/String;
    const-string v5, "external"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "external_primary"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 233
    return-object p0

    .line 236
    :cond_2
    if-eqz p1, :cond_4

    const-string v5, "_data"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 237
    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 238
    .local v6, "dataPath":Ljava/lang/String;
    if-eqz v6, :cond_3

    const-string v7, "/storage/ace-0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 239
    const-string v3, "/storage/emulated/0"

    invoke-virtual {v6, v7, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    return-object p0

    .line 242
    :cond_3
    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "insert"

    invoke-static {v8, v7, v3}, Lcom/oplus/multiapp/BaseOplusMultiAppManager;->getSharedParalledPathIfNeeded(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .end local v6    # "dataPath":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "ace-999"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    return-object v3

    .line 229
    .end local v4    # "volumeName":Ljava/lang/String;
    :cond_5
    :goto_0
    return-object p0

    .line 224
    .end local v1    # "authWithoutUserId":Ljava/lang/String;
    .end local v2    # "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    :goto_1
    return-object p0
.end method

.method public static blacklist getCoressUserStorageVolume(I)Landroid/os/storage/StorageVolume;
    .locals 15
    .param p0, "userId"    # I

    .line 187
    sget-object v0, Lcom/oplus/multiapp/BaseOplusMultiAppManager;->sStorageVolumes:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    sget-object v0, Lcom/oplus/multiapp/BaseOplusMultiAppManager;->sStorageVolumes:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageVolume;

    return-object v0

    .line 190
    :cond_0
    const/4 v0, -0x1

    .line 191
    .local v0, "crosserUserId":I
    const/16 v1, 0x3e7

    const/4 v2, 0x0

    if-ne p0, v1, :cond_1

    .line 192
    const/4 v0, 0x0

    goto :goto_0

    .line 193
    :cond_1
    if-nez p0, :cond_2

    .line 194
    const/16 v0, 0x3e7

    .line 198
    :goto_0
    const-string v1, "ace-"

    .line 199
    .local v1, "crossVolPrefix":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 200
    .local v3, "id":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/storage/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 201
    .local v4, "path":Ljava/io/File;
    const/4 v5, 0x0

    .line 202
    .local v5, "primary":Z
    const/4 v6, 0x0

    .line 203
    .local v6, "removable":Z
    const/4 v7, 0x1

    .line 204
    .local v7, "emulated":Z
    const/4 v8, 0x0

    .line 205
    .local v8, "allowMassStorage":Z
    const-wide/16 v9, 0x0

    .line 206
    .local v9, "maxFileSize":J
    new-instance v11, Landroid/os/UserHandle;

    invoke-direct {v11, p0}, Landroid/os/UserHandle;-><init>(I)V

    .line 207
    .local v11, "user":Landroid/os/UserHandle;
    const-string v12, "mounted_ro"

    .line 208
    .local v12, "envState":Ljava/lang/String;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x104000e

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 212
    .local v13, "description":Ljava/lang/String;
    return-object v2

    .line 196
    .end local v1    # "crossVolPrefix":Ljava/lang/String;
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "path":Ljava/io/File;
    .end local v5    # "primary":Z
    .end local v6    # "removable":Z
    .end local v7    # "emulated":Z
    .end local v8    # "allowMassStorage":Z
    .end local v9    # "maxFileSize":J
    .end local v11    # "user":Landroid/os/UserHandle;
    .end local v12    # "envState":Ljava/lang/String;
    .end local v13    # "description":Ljava/lang/String;
    :cond_2
    return-object v2
.end method

.method public static blacklist getMultiAppVolumePath(Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .param p0, "volumeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 85
    const-string v0, "external_primary"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    const-class v1, Landroid/os/storage/StorageManager;

    .line 87
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 88
    .local v0, "sm":Landroid/os/storage/StorageManager;
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    .line 89
    .local v2, "volume":Landroid/os/storage/VolumeInfo;
    const/16 v3, 0x3e7

    invoke-virtual {v2, v3}, Landroid/os/storage/VolumeInfo;->getPathForUser(I)Ljava/io/File;

    move-result-object v3

    .line 90
    .local v3, "path":Ljava/io/File;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/storage/emulated/999"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 91
    return-object v3

    .line 93
    .end local v2    # "volume":Landroid/os/storage/VolumeInfo;
    .end local v3    # "path":Ljava/io/File;
    :cond_0
    goto :goto_0

    .line 95
    .end local v0    # "sm":Landroid/os/storage/StorageManager;
    :cond_1
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to find path for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist getSharedParalledPathIfNeeded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    .line 137
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 138
    .local v0, "userId":I
    invoke-static {p0, p1, v0}, Lcom/oplus/multiapp/BaseOplusMultiAppManager;->getSharedParalledPathIfNeeded(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist getSharedParalledPathIfNeeded(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 143
    const/4 v0, 0x0

    .line 144
    .local v0, "isPathUpdated":Z
    const/16 v1, 0x3e7

    const-string v2, "/storage/emulated/999"

    const-string v3, "/storage/ace-999"

    if-eqz p1, :cond_1

    const-string v4, "/storage/emulated/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 145
    const-string v4, "/storage/emulated/0"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-ne p2, v1, :cond_0

    .line 146
    const-string v1, "/storage/ace-0"

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 147
    const/4 v0, 0x1

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p2, :cond_2

    .line 149
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 150
    const/4 v0, 0x1

    goto :goto_0

    .line 153
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 154
    if-ne p2, v1, :cond_2

    .line 155
    const/4 v0, 0x1

    .line 156
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 159
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    sget-boolean v1, Lcom/oplus/multiapp/BaseOplusMultiAppManager;->DEBUG_ALL:Z

    if-eqz v1, :cond_3

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSharedParalledPathIfNeeded: path updated ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " user = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    const-string v3, "OplusMultiAppManager"

    invoke-static {v3, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    :cond_3
    return-object p1
.end method

.method public static whitelist redirectPath(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "userId"    # I
    .param p1, "path"    # Ljava/lang/String;

    .line 121
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    const/4 v0, 0x0

    return-object v0

    .line 124
    :cond_0
    const/4 v0, 0x0

    .line 125
    .local v0, "rPath":Ljava/lang/String;
    const/16 v1, 0x3e7

    if-ne p0, v1, :cond_2

    .line 126
    const-string v1, "/storage/emulated/999"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 127
    const-string v2, "/storage/ace-999"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 128
    :cond_1
    const-string v1, "/storage/ace-0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 129
    const-string v2, "/storage/emulated/0"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 132
    :cond_2
    :goto_0
    return-object v0
.end method

.method public static whitelist shouldRedirectToMainUser(Landroid/net/Uri;Landroid/content/Context;)Z
    .locals 7
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/content/Context;

    .line 166
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 170
    .local v1, "contextUserId":I
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 171
    .local v2, "scheme":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 172
    .local v3, "path":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ContentProvider;->getAuthorityWithoutUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 173
    .local v4, "authority":Ljava/lang/String;
    const/16 v5, 0x3e7

    if-ne v5, v1, :cond_1

    const-string v5, "content"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 174
    const-string v5, "media"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "internal"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 175
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 176
    const/4 v0, 0x1

    return v0

    .line 178
    :cond_1
    return v0

    .line 167
    .end local v1    # "contextUserId":I
    .end local v2    # "scheme":Ljava/lang/String;
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "authority":Ljava/lang/String;
    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method public whitelist isCrossUserAuthority(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 103
    iget-object v0, p0, Lcom/oplus/multiapp/BaseOplusMultiAppManager;->oplusMultiApp:Lcom/oplus/multiapp/IOplusMultiApp;

    invoke-interface {v0, p1, p2}, Lcom/oplus/multiapp/IOplusMultiApp;->isCrossUserAuthority(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public whitelist isMultiAppUserId(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 99
    iget-object v0, p0, Lcom/oplus/multiapp/BaseOplusMultiAppManager;->oplusMultiApp:Lcom/oplus/multiapp/IOplusMultiApp;

    invoke-interface {v0, p1}, Lcom/oplus/multiapp/IOplusMultiApp;->isMultiAppUserId(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isProfileFilterPackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lcom/oplus/multiapp/BaseOplusMultiAppManager;->oplusMultiApp:Lcom/oplus/multiapp/IOplusMultiApp;

    invoke-interface {v0, p1}, Lcom/oplus/multiapp/IOplusMultiApp;->isProfileFilterPackage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist scanFileIfNeed(ILjava/lang/String;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "path"    # Ljava/lang/String;

    .line 111
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    return-void

    .line 114
    :cond_0
    const/16 v0, 0x3e7

    if-eq v0, p1, :cond_1

    if-nez p1, :cond_2

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/oplus/multiapp/BaseOplusMultiAppManager;->oplusMultiApp:Lcom/oplus/multiapp/IOplusMultiApp;

    invoke-interface {v0, p1, p2}, Lcom/oplus/multiapp/IOplusMultiApp;->scanFileIfNeed(ILjava/lang/String;)V

    .line 118
    :cond_2
    return-void
.end method
