.class Lcom/oplus/favorite/OplusFavoriteManager$FavoriteSaveCallback;
.super Lcom/oplus/favorite/OplusFavoriteManager$FavoriteCallback;
.source "OplusFavoriteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/favorite/OplusFavoriteManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FavoriteSaveCallback"
.end annotation


# direct methods
.method public constructor blacklist <init>(Lcom/oplus/favorite/OplusFavoriteCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/oplus/favorite/OplusFavoriteCallback;

    .line 440
    invoke-direct {p0, p1}, Lcom/oplus/favorite/OplusFavoriteManager$FavoriteCallback;-><init>(Lcom/oplus/favorite/OplusFavoriteCallback;)V

    .line 441
    return-void
.end method

.method private blacklist onSaveFailed(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 459
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 460
    .local v0, "packageName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/favorite/OplusFavoriteManager$FavoriteSaveCallback;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] onSaveFailed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "AnteaterFavorite"

    invoke-static {v2, v3, v1}, Lcom/oplus/util/OplusLog;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 462
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 463
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.coloros.favorite.FavoriteBroadcast.NotifyFailed"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 464
    const-string v2, "com.coloros.favorite"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 465
    const-string v2, "package_name"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 466
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    .end local v1    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 467
    :catch_0
    move-exception v1

    .line 468
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/oplus/favorite/OplusFavoriteManager$FavoriteSaveCallback;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/oplus/util/OplusLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 470
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private blacklist onSaveSuccess(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 454
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 455
    .local v0, "packageName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/favorite/OplusFavoriteManager$FavoriteSaveCallback;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] onSaveSuccess : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "AnteaterFavorite"

    invoke-static {v2, v3, v1}, Lcom/oplus/util/OplusLog;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 456
    return-void
.end method


# virtual methods
.method public blacklist onFavoriteFinished(Landroid/content/Context;Lcom/oplus/favorite/OplusFavoriteResult;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "result"    # Lcom/oplus/favorite/OplusFavoriteResult;

    .line 445
    invoke-super {p0, p1, p2}, Lcom/oplus/favorite/OplusFavoriteManager$FavoriteCallback;->onFavoriteFinished(Landroid/content/Context;Lcom/oplus/favorite/OplusFavoriteResult;)V

    .line 446
    invoke-virtual {p2}, Lcom/oplus/favorite/OplusFavoriteResult;->getError()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    invoke-direct {p0, p1}, Lcom/oplus/favorite/OplusFavoriteManager$FavoriteSaveCallback;->onSaveSuccess(Landroid/content/Context;)V

    goto :goto_0

    .line 449
    :cond_0
    invoke-direct {p0, p1}, Lcom/oplus/favorite/OplusFavoriteManager$FavoriteSaveCallback;->onSaveFailed(Landroid/content/Context;)V

    .line 451
    :goto_0
    return-void
.end method
