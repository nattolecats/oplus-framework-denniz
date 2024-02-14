.class Lcom/oplus/favorite/OplusFavoriteManager$FavoriteQueryCallback;
.super Lcom/oplus/favorite/OplusFavoriteQueryCallback;
.source "OplusFavoriteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/favorite/OplusFavoriteManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FavoriteQueryCallback"
.end annotation


# instance fields
.field private final blacklist mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mEngine:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/oplus/favorite/IOplusFavoriteEngine;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Lcom/oplus/favorite/IOplusFavoriteEngine;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "engine"    # Lcom/oplus/favorite/IOplusFavoriteEngine;

    .line 281
    invoke-direct {p0}, Lcom/oplus/favorite/OplusFavoriteQueryCallback;-><init>()V

    .line 282
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oplus/favorite/OplusFavoriteManager$FavoriteQueryCallback;->mContext:Ljava/lang/ref/WeakReference;

    .line 283
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oplus/favorite/OplusFavoriteManager$FavoriteQueryCallback;->mEngine:Ljava/lang/ref/WeakReference;

    .line 284
    return-void
.end method


# virtual methods
.method public whitelist onQueryResult(Lcom/oplus/favorite/OplusFavoriteQueryResult;)V
    .locals 6
    .param p1, "result"    # Lcom/oplus/favorite/OplusFavoriteQueryResult;

    .line 288
    iget-object v0, p0, Lcom/oplus/favorite/OplusFavoriteManager$FavoriteQueryCallback;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 289
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/oplus/favorite/OplusFavoriteManager$FavoriteQueryCallback;->mEngine:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/favorite/IOplusFavoriteEngine;

    .line 290
    .local v1, "engine":Lcom/oplus/favorite/IOplusFavoriteEngine;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 291
    invoke-virtual {p1}, Lcom/oplus/favorite/OplusFavoriteQueryResult;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 292
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v3, "data"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 293
    .local v3, "data":Ljava/lang/String;
    new-instance v5, Lcom/oplus/favorite/OplusFavoriteManager$FavoriteLoadCallback;

    invoke-direct {v5, v4}, Lcom/oplus/favorite/OplusFavoriteManager$FavoriteLoadCallback;-><init>(Lcom/oplus/favorite/OplusFavoriteCallback;)V

    invoke-interface {v1, v0, v3, v5}, Lcom/oplus/favorite/IOplusFavoriteEngine;->loadRule(Landroid/content/Context;Ljava/lang/String;Lcom/oplus/favorite/OplusFavoriteCallback;)V

    .line 295
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v3    # "data":Ljava/lang/String;
    :cond_0
    return-void
.end method
