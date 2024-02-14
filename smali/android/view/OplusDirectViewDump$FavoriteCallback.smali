.class Landroid/view/OplusDirectViewDump$FavoriteCallback;
.super Lcom/oplus/favorite/OplusFavoriteCallback;
.source "OplusDirectViewDump.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/OplusDirectViewDump;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FavoriteCallback"
.end annotation


# instance fields
.field private final blacklist mCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/oplus/direct/IOplusDirectFindCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Lcom/oplus/direct/IOplusDirectFindCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/oplus/direct/IOplusDirectFindCallback;

    .line 179
    invoke-direct {p0}, Lcom/oplus/favorite/OplusFavoriteCallback;-><init>()V

    .line 180
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/OplusDirectViewDump$FavoriteCallback;->mCallback:Ljava/lang/ref/WeakReference;

    .line 181
    return-void
.end method

.method private blacklist extractData(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/favorite/OplusFavoriteData;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 240
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oplus/favorite/OplusFavoriteData;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .local v0, "bundles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    monitor-enter p1

    .line 242
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/favorite/OplusFavoriteData;

    .line 243
    .local v2, "d":Lcom/oplus/favorite/OplusFavoriteData;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 244
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v4, "data_title"

    invoke-virtual {v2}, Lcom/oplus/favorite/OplusFavoriteData;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v4, "data_url"

    invoke-virtual {v2}, Lcom/oplus/favorite/OplusFavoriteData;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v4, "data_content"

    invoke-virtual {v2}, Lcom/oplus/favorite/OplusFavoriteData;->getContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v4, "data_extra"

    invoke-virtual {v2}, Lcom/oplus/favorite/OplusFavoriteData;->getExtra()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    nop

    .end local v2    # "d":Lcom/oplus/favorite/OplusFavoriteData;
    .end local v3    # "bundle":Landroid/os/Bundle;
    goto :goto_0

    .line 250
    :cond_0
    monitor-exit p1

    .line 251
    return-object v0

    .line 250
    :catchall_0
    move-exception v1

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist extractTitles(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/favorite/OplusFavoriteData;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 255
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oplus/favorite/OplusFavoriteData;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 256
    .local v0, "titles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    monitor-enter p1

    .line 257
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/favorite/OplusFavoriteData;

    .line 258
    .local v2, "d":Lcom/oplus/favorite/OplusFavoriteData;
    invoke-virtual {v2}, Lcom/oplus/favorite/OplusFavoriteData;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    nop

    .end local v2    # "d":Lcom/oplus/favorite/OplusFavoriteData;
    goto :goto_0

    .line 260
    :cond_0
    monitor-exit p1

    .line 261
    return-object v0

    .line 260
    :catchall_0
    move-exception v1

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public blacklist isSettingOn(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 185
    invoke-static {p1}, Lcom/oplus/favorite/OplusFavoriteHelper;->isSettingOn(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public blacklist onFavoriteFinished(Landroid/content/Context;Lcom/oplus/favorite/OplusFavoriteResult;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "result"    # Lcom/oplus/favorite/OplusFavoriteResult;

    .line 211
    iget-object v0, p0, Landroid/view/OplusDirectViewDump$FavoriteCallback;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/direct/IOplusDirectFindCallback;

    .line 212
    .local v0, "callback":Lcom/oplus/direct/IOplusDirectFindCallback;
    if-eqz v0, :cond_2

    .line 214
    :try_start_0
    new-instance v1, Lcom/oplus/direct/OplusDirectFindResult;

    invoke-direct {v1}, Lcom/oplus/direct/OplusDirectFindResult;-><init>()V

    .line 215
    .local v1, "findResult":Lcom/oplus/direct/OplusDirectFindResult;
    invoke-virtual {v1}, Lcom/oplus/direct/OplusDirectFindResult;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 216
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v3, "package_name"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-virtual {p2}, Lcom/oplus/favorite/OplusFavoriteResult;->getData()Ljava/util/ArrayList;

    move-result-object v3

    .line 218
    .local v3, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oplus/favorite/OplusFavoriteData;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 219
    iget-object v4, p0, Landroid/view/OplusDirectViewDump$FavoriteCallback;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onFavoriteFinished : data="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v4, v6}, Lcom/oplus/util/OplusLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-direct {p0, v3}, Landroid/view/OplusDirectViewDump$FavoriteCallback;->extractData(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    .line 221
    .local v4, "bundles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    const-string v6, "result_data"

    invoke-virtual {v2, v6, v4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 222
    invoke-direct {p0, v3}, Landroid/view/OplusDirectViewDump$FavoriteCallback;->extractTitles(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v6

    .line 223
    .local v6, "titles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v7, "result_titles"

    invoke-virtual {v2, v7, v6}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 225
    .end local v4    # "bundles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v6    # "titles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {p2}, Lcom/oplus/favorite/OplusFavoriteResult;->getError()Ljava/lang/String;

    move-result-object v4

    .line 226
    .local v4, "error":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 227
    iget-object v6, p0, Landroid/view/OplusDirectViewDump$FavoriteCallback;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onFavoriteFinished : error="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/oplus/util/OplusLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v5, "result_error"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :cond_1
    invoke-interface {v0, v1}, Lcom/oplus/direct/IOplusDirectFindCallback;->onDirectInfoFound(Lcom/oplus/direct/OplusDirectFindResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "findResult":Lcom/oplus/direct/OplusDirectFindResult;
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v3    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oplus/favorite/OplusFavoriteData;>;"
    .end local v4    # "error":Ljava/lang/String;
    goto :goto_0

    .line 233
    :catch_0
    move-exception v1

    .line 234
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Landroid/view/OplusDirectViewDump$FavoriteCallback;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oplus/util/OplusLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 231
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 232
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Landroid/view/OplusDirectViewDump$FavoriteCallback;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oplus/util/OplusLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    return-void
.end method

.method public blacklist onFavoriteStart(Landroid/content/Context;Lcom/oplus/favorite/OplusFavoriteResult;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "result"    # Lcom/oplus/favorite/OplusFavoriteResult;

    .line 190
    iget-object v0, p0, Landroid/view/OplusDirectViewDump$FavoriteCallback;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/direct/IOplusDirectFindCallback;

    .line 191
    .local v0, "callback":Lcom/oplus/direct/IOplusDirectFindCallback;
    if-eqz v0, :cond_1

    .line 193
    :try_start_0
    new-instance v1, Lcom/oplus/direct/OplusDirectFindResult;

    invoke-direct {v1}, Lcom/oplus/direct/OplusDirectFindResult;-><init>()V

    .line 194
    .local v1, "findResult":Lcom/oplus/direct/OplusDirectFindResult;
    invoke-virtual {v1}, Lcom/oplus/direct/OplusDirectFindResult;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 195
    .local v2, "bundle":Landroid/os/Bundle;
    invoke-virtual {p2}, Lcom/oplus/favorite/OplusFavoriteResult;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 196
    .local v3, "packageName":Ljava/lang/String;
    const/4 v4, 0x0

    iget-object v5, p0, Landroid/view/OplusDirectViewDump$FavoriteCallback;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onFavoriteStart : packageName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/oplus/util/OplusLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 198
    const-string v4, "package_name"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :cond_0
    invoke-interface {v0, v1}, Lcom/oplus/direct/IOplusDirectFindCallback;->onDirectInfoFound(Lcom/oplus/direct/OplusDirectFindResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "findResult":Lcom/oplus/direct/OplusDirectFindResult;
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v3    # "packageName":Ljava/lang/String;
    goto :goto_0

    .line 203
    :catch_0
    move-exception v1

    .line 204
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Landroid/view/OplusDirectViewDump$FavoriteCallback;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oplus/util/OplusLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 201
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 202
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Landroid/view/OplusDirectViewDump$FavoriteCallback;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oplus/util/OplusLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method
