.class public Lcom/oplus/favorite/OplusFavoriteManager;
.super Ljava/lang/Object;
.source "OplusFavoriteManager.java"

# interfaces
.implements Lcom/oplus/favorite/IOplusFavoriteManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/favorite/OplusFavoriteManager$FavoriteSaveCallback;,
        Lcom/oplus/favorite/OplusFavoriteManager$FavoriteProcessCallback;,
        Lcom/oplus/favorite/OplusFavoriteManager$FavoriteLoadCallback;,
        Lcom/oplus/favorite/OplusFavoriteManager$FavoriteCallback;,
        Lcom/oplus/favorite/OplusFavoriteManager$FavoriteQueryCallback;,
        Lcom/oplus/favorite/OplusFavoriteManager$FavoriteStart;
    }
.end annotation


# static fields
.field private static final blacklist ACTION_FAVORITE_NOTIFY_FAILED:Ljava/lang/String; = "com.coloros.favorite.FavoriteBroadcast.NotifyFailed"

.field private static final blacklist ACTION_FAVORITE_NOTIFY_START:Ljava/lang/String; = "com.coloros.favorite.FavoriteService.NotifyStart"

.field private static final blacklist EXTRA_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final blacklist EXTRA_SCENE_LIST:Ljava/lang/String; = "scene_list"

.field private static final blacklist NOTIFY_DEBUG:Z

.field private static final blacklist PACKAGE_FAVORITE:Ljava/lang/String; = "com.coloros.favorite"

.field private static final blacklist RESULT_AUTHORITY:Ljava/lang/String; = "com.coloros.favorite.result.provider"

.field private static final blacklist RESULT_PATH:Ljava/lang/String; = "result"

.field private static final blacklist RESULT_URI:Landroid/net/Uri;

.field private static final blacklist SETTINGS_FAVORITE:Ljava/lang/String; = "coloros_favorite"

.field private static final blacklist SETTING_FIRST_START:Ljava/lang/String; = "first_start"

.field public static final blacklist TAG:Ljava/lang/String; = "OplusFavoriteManager"

.field private static volatile blacklist sInstance:Lcom/oplus/favorite/OplusFavoriteManager;


# instance fields
.field private blacklist mEngine:Lcom/oplus/favorite/IOplusFavoriteEngine;

.field private final blacklist mFactory:Lcom/oplus/favorite/OplusFavoriteFactory;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetNOTIFY_DEBUG()Z
    .locals 1

    sget-boolean v0, Lcom/oplus/favorite/OplusFavoriteManager;->NOTIFY_DEBUG:Z

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 55
    const-string v0, "feature.favorite.notify"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oplus/favorite/OplusFavoriteManager;->NOTIFY_DEBUG:Z

    .line 65
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 66
    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 67
    const-string v1, "com.coloros.favorite.result.provider"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 68
    const-string v1, "result"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oplus/favorite/OplusFavoriteManager;->RESULT_URI:Landroid/net/Uri;

    .line 74
    const/4 v0, 0x0

    sput-object v0, Lcom/oplus/favorite/OplusFavoriteManager;->sInstance:Lcom/oplus/favorite/OplusFavoriteManager;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/favorite/OplusFavoriteManager;->mEngine:Lcom/oplus/favorite/IOplusFavoriteEngine;

    .line 86
    new-instance v0, Lcom/oplus/favorite/OplusFavoriteFactory;

    invoke-direct {v0}, Lcom/oplus/favorite/OplusFavoriteFactory;-><init>()V

    iput-object v0, p0, Lcom/oplus/favorite/OplusFavoriteManager;->mFactory:Lcom/oplus/favorite/OplusFavoriteFactory;

    .line 87
    sget-object v0, Lcom/oplus/favorite/OplusFavoriteEngines;->TEDDY:Lcom/oplus/favorite/OplusFavoriteEngines;

    invoke-virtual {p0, v0}, Lcom/oplus/favorite/OplusFavoriteManager;->setEngine(Lcom/oplus/favorite/OplusFavoriteEngines;)V

    .line 88
    return-void
.end method

.method public static blacklist getInstance()Lcom/oplus/favorite/OplusFavoriteManager;
    .locals 2

    .line 94
    sget-object v0, Lcom/oplus/favorite/OplusFavoriteManager;->sInstance:Lcom/oplus/favorite/OplusFavoriteManager;

    if-nez v0, :cond_1

    .line 95
    const-class v0, Lcom/oplus/favorite/OplusFavoriteManager;

    monitor-enter v0

    .line 96
    :try_start_0
    sget-object v1, Lcom/oplus/favorite/OplusFavoriteManager;->sInstance:Lcom/oplus/favorite/OplusFavoriteManager;

    if-nez v1, :cond_0

    .line 97
    new-instance v1, Lcom/oplus/favorite/OplusFavoriteManager;

    invoke-direct {v1}, Lcom/oplus/favorite/OplusFavoriteManager;-><init>()V

    sput-object v1, Lcom/oplus/favorite/OplusFavoriteManager;->sInstance:Lcom/oplus/favorite/OplusFavoriteManager;

    .line 99
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 101
    :cond_1
    :goto_0
    sget-object v0, Lcom/oplus/favorite/OplusFavoriteManager;->sInstance:Lcom/oplus/favorite/OplusFavoriteManager;

    return-object v0
.end method

.method private blacklist initRule(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 244
    iget-object v0, p0, Lcom/oplus/favorite/OplusFavoriteManager;->mEngine:Lcom/oplus/favorite/IOplusFavoriteEngine;

    if-eqz v0, :cond_0

    .line 245
    invoke-interface {v0}, Lcom/oplus/favorite/IOplusFavoriteEngine;->init()V

    .line 246
    invoke-direct {p0, p1}, Lcom/oplus/favorite/OplusFavoriteManager;->queryRule(Landroid/content/Context;)V

    .line 248
    :cond_0
    return-void
.end method

.method private blacklist queryRule(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .line 228
    const-string v0, "ms"

    const-string v1, "queryRule : spend="

    const-string v2, "OplusFavoriteManager"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 230
    .local v3, "start":J
    :try_start_0
    new-instance v5, Landroid/app/OplusActivityManager;

    invoke-direct {v5}, Landroid/app/OplusActivityManager;-><init>()V

    .line 231
    .local v5, "am":Landroid/app/OplusActivityManager;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/oplus/favorite/OplusFavoriteManager$FavoriteQueryCallback;

    iget-object v8, p0, Lcom/oplus/favorite/OplusFavoriteManager;->mEngine:Lcom/oplus/favorite/IOplusFavoriteEngine;

    invoke-direct {v7, p1, v8}, Lcom/oplus/favorite/OplusFavoriteManager$FavoriteQueryCallback;-><init>(Landroid/content/Context;Lcom/oplus/favorite/IOplusFavoriteEngine;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/OplusActivityManager;->favoriteQueryRule(Ljava/lang/String;Lcom/oplus/favorite/IOplusFavoriteQueryCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    .end local v5    # "am":Landroid/app/OplusActivityManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 238
    .local v5, "spend":J
    sget-boolean v7, Lcom/oplus/favorite/OplusFavoriteManager;->DBG:Z

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    .line 237
    .end local v5    # "spend":J
    :catchall_0
    move-exception v5

    goto :goto_1

    .line 234
    :catch_0
    move-exception v5

    .line 235
    .local v5, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6, v5}, Lcom/oplus/util/OplusLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    .end local v5    # "e":Ljava/lang/Exception;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 238
    .local v5, "spend":J
    sget-boolean v7, Lcom/oplus/favorite/OplusFavoriteManager;->DBG:Z

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    .line 232
    .end local v5    # "spend":J
    :catch_1
    move-exception v5

    .line 233
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v5}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6, v5}, Lcom/oplus/util/OplusLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 237
    .end local v5    # "e":Landroid/os/RemoteException;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 238
    .local v5, "spend":J
    sget-boolean v7, Lcom/oplus/favorite/OplusFavoriteManager;->DBG:Z

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v2, v0}, Lcom/oplus/util/OplusLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 239
    .end local v5    # "spend":J
    nop

    .line 241
    return-void

    .line 237
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    .line 238
    .local v6, "spend":J
    sget-boolean v8, Lcom/oplus/favorite/OplusFavoriteManager;->DBG:Z

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v2, v0}, Lcom/oplus/util/OplusLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 239
    .end local v6    # "spend":J
    throw v5
.end method


# virtual methods
.method public blacklist getWorkHandler()Landroid/os/Handler;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/oplus/favorite/OplusFavoriteManager;->mEngine:Lcom/oplus/favorite/IOplusFavoriteEngine;

    invoke-interface {v0}, Lcom/oplus/favorite/IOplusFavoriteEngine;->getWorkHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isSaved(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Z
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation

    .line 171
    .local p3, "data":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    const/4 v0, 0x0

    .line 172
    .local v0, "isSaved":Z
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 173
    .local v7, "contentResolver":Landroid/content/ContentResolver;
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v9, v0

    .end local v0    # "isSaved":Z
    .local v9, "isSaved":Z
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/os/Bundle;

    .line 174
    .local v10, "bundle":Landroid/os/Bundle;
    const/4 v11, 0x0

    .line 176
    .local v11, "cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .local v0, "selectionBuilder":Ljava/lang/StringBuilder;
    const-string v1, "packageName = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v12, v1

    .line 179
    .local v12, "selectionArgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v13, p2

    :try_start_1
    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    const-string v1, "data_title"

    invoke-virtual {v10, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v14, v1

    .line 181
    .local v14, "title":Ljava/lang/String;
    const-string v1, "data_url"

    invoke-virtual {v10, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v15, v1

    .line 182
    .local v15, "url":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v16, 0x0

    const/16 v17, 0x1

    if-nez v1, :cond_0

    move/from16 v1, v17

    goto :goto_1

    :cond_0
    move/from16 v1, v16

    :goto_1
    move/from16 v18, v1

    .line 183
    .local v18, "hasTitle":Z
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    move/from16 v19, v1

    .line 184
    .local v19, "hasUrl":Z
    if-eqz v18, :cond_1

    if-eqz v19, :cond_1

    .line 185
    const-string v1, " AND title = ? AND url = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 188
    :cond_1
    if-eqz v18, :cond_2

    .line 189
    const-string v1, " AND title = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 191
    :cond_2
    if-eqz v19, :cond_3

    .line 192
    const-string v1, " AND url = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 195
    :cond_3
    invoke-interface {v12}, Ljava/util/List;->clear()V

    .line 197
    :goto_2
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 198
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 199
    .local v4, "selection":Ljava/lang/String;
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v12, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, [Ljava/lang/String;

    .line 200
    .local v5, "selectionArgs":[Ljava/lang/String;
    sget-object v2, Lcom/oplus/favorite/OplusFavoriteManager;->RESULT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v11, v1

    .line 206
    if-eqz v11, :cond_5

    .line 207
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-lez v1, :cond_4

    move/from16 v16, v17

    :cond_4
    move/from16 v1, v16

    move v9, v1

    .line 213
    .end local v0    # "selectionBuilder":Ljava/lang/StringBuilder;
    .end local v4    # "selection":Ljava/lang/String;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    .end local v12    # "selectionArgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "title":Ljava/lang/String;
    .end local v15    # "url":Ljava/lang/String;
    .end local v18    # "hasTitle":Z
    .end local v19    # "hasUrl":Z
    :cond_5
    if-eqz v11, :cond_6

    .line 214
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 216
    :cond_6
    if-eqz v9, :cond_8

    .line 217
    :goto_3
    goto :goto_6

    .line 210
    :catch_0
    move-exception v0

    goto :goto_4

    .line 213
    :catchall_0
    move-exception v0

    move-object/from16 v13, p2

    goto :goto_5

    .line 210
    :catch_1
    move-exception v0

    move-object/from16 v13, p2

    .line 211
    .local v0, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_2
    const-string v1, "OplusFavoriteManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/oplus/util/OplusLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 213
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v11, :cond_7

    .line 214
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 216
    :cond_7
    if-eqz v9, :cond_8

    .line 217
    goto :goto_3

    .line 220
    .end local v10    # "bundle":Landroid/os/Bundle;
    .end local v11    # "cursor":Landroid/database/Cursor;
    :cond_8
    goto/16 :goto_0

    .line 213
    .restart local v10    # "bundle":Landroid/os/Bundle;
    .restart local v11    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    :goto_5
    if-eqz v11, :cond_9

    .line 214
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 216
    :cond_9
    if-eqz v9, :cond_a

    .line 217
    goto :goto_3

    .line 219
    :cond_a
    throw v0

    .line 173
    .end local v10    # "bundle":Landroid/os/Bundle;
    .end local v11    # "cursor":Landroid/database/Cursor;
    :cond_b
    move-object/from16 v13, p2

    .line 221
    :goto_6
    return v9
.end method

.method public blacklist logActivityInfo(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 142
    iget-object v0, p0, Lcom/oplus/favorite/OplusFavoriteManager;->mEngine:Lcom/oplus/favorite/IOplusFavoriteEngine;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/oplus/favorite/IOplusFavoriteEngine;->isLogOn()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/oplus/favorite/OplusFavoriteManager;->mEngine:Lcom/oplus/favorite/IOplusFavoriteEngine;

    invoke-interface {v0, p1}, Lcom/oplus/favorite/IOplusFavoriteEngine;->logActivityInfo(Landroid/app/Activity;)V

    .line 146
    return-void

    .line 143
    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist logViewInfo(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 150
    iget-object v0, p0, Lcom/oplus/favorite/OplusFavoriteManager;->mEngine:Lcom/oplus/favorite/IOplusFavoriteEngine;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/oplus/favorite/IOplusFavoriteEngine;->isLogOn()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/oplus/favorite/OplusFavoriteManager;->mEngine:Lcom/oplus/favorite/IOplusFavoriteEngine;

    invoke-interface {v0, p1}, Lcom/oplus/favorite/IOplusFavoriteEngine;->logViewInfo(Landroid/view/View;)V

    .line 154
    return-void

    .line 151
    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist processClick(Landroid/view/View;Lcom/oplus/favorite/OplusFavoriteCallback;)V
    .locals 1
    .param p1, "clickView"    # Landroid/view/View;
    .param p2, "callback"    # Lcom/oplus/favorite/OplusFavoriteCallback;

    .line 116
    iget-object v0, p0, Lcom/oplus/favorite/OplusFavoriteManager;->mEngine:Lcom/oplus/favorite/IOplusFavoriteEngine;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/oplus/favorite/IOplusFavoriteEngine;->isTestOn()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/oplus/favorite/OplusFavoriteManager;->mEngine:Lcom/oplus/favorite/IOplusFavoriteEngine;

    invoke-interface {v0, p1, p2}, Lcom/oplus/favorite/IOplusFavoriteEngine;->processClick(Landroid/view/View;Lcom/oplus/favorite/OplusFavoriteCallback;)V

    .line 120
    return-void

    .line 117
    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist processCrawl(Landroid/view/View;Lcom/oplus/favorite/OplusFavoriteCallback;Ljava/lang/String;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "callback"    # Lcom/oplus/favorite/OplusFavoriteCallback;
    .param p3, "param"    # Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lcom/oplus/favorite/OplusFavoriteManager;->mEngine:Lcom/oplus/favorite/IOplusFavoriteEngine;

    if-eqz v0, :cond_0

    .line 125
    new-instance v0, Lcom/oplus/favorite/OplusFavoriteManager$FavoriteProcessCallback;

    invoke-direct {v0, p2}, Lcom/oplus/favorite/OplusFavoriteManager$FavoriteProcessCallback;-><init>(Lcom/oplus/favorite/OplusFavoriteCallback;)V

    move-object p2, v0

    .line 126
    new-instance v0, Lcom/oplus/favorite/OplusFavoriteManager$FavoriteStart;

    invoke-direct {v0, p2, p1}, Lcom/oplus/favorite/OplusFavoriteManager$FavoriteStart;-><init>(Lcom/oplus/favorite/OplusFavoriteCallback;Landroid/view/View;)V

    .line 127
    .local v0, "start":Lcom/oplus/favorite/OplusFavoriteManager$FavoriteStart;
    invoke-virtual {v0}, Lcom/oplus/favorite/OplusFavoriteManager$FavoriteStart;->run()V

    .line 128
    iget-object v1, p0, Lcom/oplus/favorite/OplusFavoriteManager;->mEngine:Lcom/oplus/favorite/IOplusFavoriteEngine;

    invoke-interface {v1, p1, p2, p3}, Lcom/oplus/favorite/IOplusFavoriteEngine;->processCrawl(Landroid/view/View;Lcom/oplus/favorite/OplusFavoriteCallback;Ljava/lang/String;)V

    .line 130
    .end local v0    # "start":Lcom/oplus/favorite/OplusFavoriteManager$FavoriteStart;
    :cond_0
    return-void
.end method

.method public blacklist processSave(Landroid/view/View;Lcom/oplus/favorite/OplusFavoriteCallback;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "callback"    # Lcom/oplus/favorite/OplusFavoriteCallback;

    .line 134
    iget-object v0, p0, Lcom/oplus/favorite/OplusFavoriteManager;->mEngine:Lcom/oplus/favorite/IOplusFavoriteEngine;

    if-eqz v0, :cond_0

    .line 135
    new-instance v0, Lcom/oplus/favorite/OplusFavoriteManager$FavoriteSaveCallback;

    invoke-direct {v0, p2}, Lcom/oplus/favorite/OplusFavoriteManager$FavoriteSaveCallback;-><init>(Lcom/oplus/favorite/OplusFavoriteCallback;)V

    move-object p2, v0

    .line 136
    iget-object v0, p0, Lcom/oplus/favorite/OplusFavoriteManager;->mEngine:Lcom/oplus/favorite/IOplusFavoriteEngine;

    invoke-interface {v0, p1, p2}, Lcom/oplus/favorite/IOplusFavoriteEngine;->processSave(Landroid/view/View;Lcom/oplus/favorite/OplusFavoriteCallback;)V

    .line 138
    :cond_0
    return-void
.end method

.method public blacklist release()V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/oplus/favorite/OplusFavoriteManager;->mEngine:Lcom/oplus/favorite/IOplusFavoriteEngine;

    if-eqz v0, :cond_0

    .line 110
    invoke-interface {v0}, Lcom/oplus/favorite/IOplusFavoriteEngine;->release()V

    .line 112
    :cond_0
    return-void
.end method

.method public blacklist setEngine(Lcom/oplus/favorite/OplusFavoriteEngines;)V
    .locals 1
    .param p1, "engine"    # Lcom/oplus/favorite/OplusFavoriteEngines;

    .line 163
    iget-object v0, p0, Lcom/oplus/favorite/OplusFavoriteManager;->mEngine:Lcom/oplus/favorite/IOplusFavoriteEngine;

    if-eqz v0, :cond_0

    .line 164
    invoke-interface {v0}, Lcom/oplus/favorite/IOplusFavoriteEngine;->release()V

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/oplus/favorite/OplusFavoriteManager;->mFactory:Lcom/oplus/favorite/OplusFavoriteFactory;

    invoke-virtual {v0, p1}, Lcom/oplus/favorite/OplusFavoriteFactory;->setEngine(Lcom/oplus/favorite/OplusFavoriteEngines;)Lcom/oplus/favorite/OplusFavoriteEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/favorite/OplusFavoriteManager;->mEngine:Lcom/oplus/favorite/IOplusFavoriteEngine;

    .line 167
    return-void
.end method
