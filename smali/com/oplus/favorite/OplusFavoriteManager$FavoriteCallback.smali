.class public Lcom/oplus/favorite/OplusFavoriteManager$FavoriteCallback;
.super Lcom/oplus/favorite/OplusFavoriteCallback;
.source "OplusFavoriteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/favorite/OplusFavoriteManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FavoriteCallback"
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


# direct methods
.method public constructor blacklist <init>(Lcom/oplus/favorite/OplusFavoriteCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/oplus/favorite/OplusFavoriteCallback;

    .line 307
    invoke-direct {p0}, Lcom/oplus/favorite/OplusFavoriteCallback;-><init>()V

    .line 308
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oplus/favorite/OplusFavoriteManager$FavoriteCallback;->mCallback:Ljava/lang/ref/WeakReference;

    .line 309
    return-void
.end method


# virtual methods
.method public blacklist getOplusFavoriteCallback()Lcom/oplus/favorite/OplusFavoriteCallback;
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/oplus/favorite/OplusFavoriteManager$FavoriteCallback;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/favorite/OplusFavoriteCallback;

    return-object v0
.end method

.method public blacklist isSettingOn(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 304
    invoke-static {p1}, Lcom/oplus/favorite/OplusFavoriteHelper;->isSettingOn(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public blacklist onFavoriteFinished(Landroid/content/Context;Lcom/oplus/favorite/OplusFavoriteResult;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "result"    # Lcom/oplus/favorite/OplusFavoriteResult;

    .line 321
    iget-object v0, p0, Lcom/oplus/favorite/OplusFavoriteManager$FavoriteCallback;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/favorite/OplusFavoriteCallback;

    .line 322
    .local v0, "callback":Lcom/oplus/favorite/OplusFavoriteCallback;
    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {v0, p1, p2}, Lcom/oplus/favorite/OplusFavoriteCallback;->onFavoriteFinished(Landroid/content/Context;Lcom/oplus/favorite/OplusFavoriteResult;)V

    .line 325
    :cond_0
    return-void
.end method

.method public blacklist onFavoriteStart(Landroid/content/Context;Lcom/oplus/favorite/OplusFavoriteResult;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "result"    # Lcom/oplus/favorite/OplusFavoriteResult;

    .line 313
    iget-object v0, p0, Lcom/oplus/favorite/OplusFavoriteManager$FavoriteCallback;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/favorite/OplusFavoriteCallback;

    .line 314
    .local v0, "callback":Lcom/oplus/favorite/OplusFavoriteCallback;
    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {v0, p1, p2}, Lcom/oplus/favorite/OplusFavoriteCallback;->onFavoriteStart(Landroid/content/Context;Lcom/oplus/favorite/OplusFavoriteResult;)V

    .line 317
    :cond_0
    return-void
.end method
