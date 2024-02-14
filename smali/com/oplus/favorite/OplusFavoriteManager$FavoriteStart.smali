.class Lcom/oplus/favorite/OplusFavoriteManager$FavoriteStart;
.super Ljava/lang/Object;
.source "OplusFavoriteManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/favorite/OplusFavoriteManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FavoriteStart"
.end annotation


# instance fields
.field private final blacklist mCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/oplus/favorite/OplusFavoriteCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Lcom/oplus/favorite/OplusFavoriteCallback;Landroid/view/View;)V
    .locals 1
    .param p1, "callback"    # Lcom/oplus/favorite/OplusFavoriteCallback;
    .param p2, "view"    # Landroid/view/View;

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oplus/favorite/OplusFavoriteManager$FavoriteStart;->mCallback:Ljava/lang/ref/WeakReference;

    .line 260
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oplus/favorite/OplusFavoriteManager$FavoriteStart;->mView:Ljava/lang/ref/WeakReference;

    .line 261
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 5

    .line 265
    iget-object v0, p0, Lcom/oplus/favorite/OplusFavoriteManager$FavoriteStart;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/favorite/OplusFavoriteCallback;

    .line 266
    .local v0, "callback":Lcom/oplus/favorite/OplusFavoriteCallback;
    iget-object v1, p0, Lcom/oplus/favorite/OplusFavoriteManager$FavoriteStart;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 267
    .local v1, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 268
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 269
    .local v2, "context":Landroid/content/Context;
    new-instance v3, Lcom/oplus/favorite/OplusFavoriteResult;

    invoke-direct {v3}, Lcom/oplus/favorite/OplusFavoriteResult;-><init>()V

    .line 270
    .local v3, "result":Lcom/oplus/favorite/OplusFavoriteResult;
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oplus/favorite/OplusFavoriteResult;->setPackageName(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v0, v2, v3}, Lcom/oplus/favorite/OplusFavoriteCallback;->onFavoriteStart(Landroid/content/Context;Lcom/oplus/favorite/OplusFavoriteResult;)V

    .line 273
    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "result":Lcom/oplus/favorite/OplusFavoriteResult;
    :cond_0
    return-void
.end method
