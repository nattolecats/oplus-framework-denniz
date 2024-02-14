.class Lcom/oplus/favorite/OplusFavoriteManager$FavoriteLoadCallback;
.super Lcom/oplus/favorite/OplusFavoriteManager$FavoriteCallback;
.source "OplusFavoriteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/favorite/OplusFavoriteManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FavoriteLoadCallback"
.end annotation


# direct methods
.method public constructor blacklist <init>(Lcom/oplus/favorite/OplusFavoriteCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/oplus/favorite/OplusFavoriteCallback;

    .line 338
    invoke-direct {p0, p1}, Lcom/oplus/favorite/OplusFavoriteManager$FavoriteCallback;-><init>(Lcom/oplus/favorite/OplusFavoriteCallback;)V

    .line 339
    return-void
.end method

.method private blacklist buildMessage(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "msg"    # Ljava/lang/String;

    .line 372
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 373
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    iget-object v1, p0, Lcom/oplus/favorite/OplusFavoriteManager$FavoriteLoadCallback;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    const-string v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 379
    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 382
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 383
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buildMessage exception! tag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", msg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AnteaterFavorite"

    invoke-static {v1, v3, v2}, Lcom/oplus/util/OplusLog;->w(ZLjava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist clearFirstStart(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 401
    invoke-direct {p0, p1}, Lcom/oplus/favorite/OplusFavoriteManager$FavoriteLoadCallback;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 402
    .local v0, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 403
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "first_start"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 404
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 405
    return-void
.end method

.method private blacklist getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 397
    const-string v0, "coloros_favorite"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private blacklist isFirstStart(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 408
    invoke-static {}, Lcom/oplus/favorite/OplusFavoriteManager;->-$$Nest$sfgetNOTIFY_DEBUG()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 409
    return v1

    .line 411
    :cond_0
    invoke-direct {p0, p1}, Lcom/oplus/favorite/OplusFavoriteManager$FavoriteLoadCallback;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 412
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string v2, "first_start"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private blacklist logE(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "msg"    # Ljava/lang/String;

    .line 393
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/favorite/OplusFavoriteManager$FavoriteLoadCallback;->buildMessage(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "AnteaterFavorite"

    invoke-static {v1, v2, v0}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 394
    return-void
.end method

.method private blacklist logI(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "msg"    # Ljava/lang/String;

    .line 389
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/favorite/OplusFavoriteManager$FavoriteLoadCallback;->buildMessage(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "AnteaterFavorite"

    invoke-static {v1, v2, v0}, Lcom/oplus/util/OplusLog;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 390
    return-void
.end method

.method private blacklist notifyStart(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 416
    .local p3, "sceneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/favorite/OplusFavoriteManager$FavoriteLoadCallback;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] notifyStart : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "AnteaterFavorite"

    invoke-static {v1, v2, v0}, Lcom/oplus/util/OplusLog;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 418
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 419
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.coloros.favorite.FavoriteService.NotifyStart"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    const-string v1, "com.coloros.favorite"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 421
    const-string v1, "package_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 422
    const-string v1, "scene_list"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 423
    invoke-virtual {p1, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    nop

    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 424
    :catch_0
    move-exception v0

    .line 425
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/oplus/favorite/OplusFavoriteManager$FavoriteLoadCallback;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/oplus/util/OplusLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 427
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist isSettingOn(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 343
    invoke-static {p1}, Lcom/oplus/favorite/OplusFavoriteHelper;->isSettingOn(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public blacklist onLoadFinished(Landroid/content/Context;ZZLjava/util/ArrayList;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "noRule"    # Z
    .param p3, "emptyRule"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "ZZ",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 348
    .local p4, "sceneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-super {p0, p1, p2, p3, p4}, Lcom/oplus/favorite/OplusFavoriteManager$FavoriteCallback;->onLoadFinished(Landroid/content/Context;ZZLjava/util/ArrayList;)V

    .line 349
    const-string v0, "onLoadFinished"

    .line 350
    .local v0, "tag":Ljava/lang/String;
    invoke-static {p1}, Lcom/oplus/util/OplusContextUtil;->getActivityContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    .line 351
    .local v1, "activity":Landroid/app/Activity;
    if-nez v1, :cond_0

    .line 352
    const-string v2, "Not Activity"

    invoke-direct {p0, v0, v1, v2}, Lcom/oplus/favorite/OplusFavoriteManager$FavoriteLoadCallback;->logI(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 353
    :cond_0
    if-eqz p2, :cond_1

    .line 354
    const-string v2, "No Rule List"

    invoke-direct {p0, v0, v1, v2}, Lcom/oplus/favorite/OplusFavoriteManager$FavoriteLoadCallback;->logI(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 355
    :cond_1
    if-eqz p3, :cond_2

    .line 356
    const-string v2, "Empty Rule List"

    invoke-direct {p0, v0, v1, v2}, Lcom/oplus/favorite/OplusFavoriteManager$FavoriteLoadCallback;->logE(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 357
    :cond_2
    invoke-direct {p0, p1}, Lcom/oplus/favorite/OplusFavoriteManager$FavoriteLoadCallback;->isFirstStart(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 358
    const-string v2, "Load Again"

    invoke-direct {p0, v0, v1, v2}, Lcom/oplus/favorite/OplusFavoriteManager$FavoriteLoadCallback;->logI(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 359
    :cond_3
    invoke-virtual {p0, p1}, Lcom/oplus/favorite/OplusFavoriteManager$FavoriteLoadCallback;->isSettingOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 360
    const-string v2, "Setting Off"

    invoke-direct {p0, v0, v1, v2}, Lcom/oplus/favorite/OplusFavoriteManager$FavoriteLoadCallback;->logI(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 362
    :cond_4
    const-string v2, "Load First"

    invoke-direct {p0, v0, v1, v2}, Lcom/oplus/favorite/OplusFavoriteManager$FavoriteLoadCallback;->logI(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V

    .line 363
    invoke-direct {p0, p1}, Lcom/oplus/favorite/OplusFavoriteManager$FavoriteLoadCallback;->clearFirstStart(Landroid/content/Context;)V

    .line 364
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2, p4}, Lcom/oplus/favorite/OplusFavoriteManager$FavoriteLoadCallback;->notifyStart(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 366
    :goto_0
    return-void
.end method
