.class Lcom/oplus/favorite/OplusEngineTeddy$AntaterLoadCallback;
.super Lcom/oplus/favorite/OplusEngineTeddy$AnteaterCallback;
.source "OplusEngineTeddy.java"

# interfaces
.implements Lcn/teddymobile/free/anteater/resources/RuleResourcesClient$LoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/favorite/OplusEngineTeddy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AntaterLoadCallback"
.end annotation


# direct methods
.method public constructor blacklist <init>(Lcom/oplus/favorite/OplusFavoriteCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/oplus/favorite/OplusFavoriteCallback;

    .line 200
    invoke-direct {p0, p1}, Lcom/oplus/favorite/OplusEngineTeddy$AnteaterCallback;-><init>(Lcom/oplus/favorite/OplusFavoriteCallback;)V

    .line 201
    return-void
.end method


# virtual methods
.method public blacklist onLoadResult(Landroid/content/Context;ZZLjava/util/ArrayList;)V
    .locals 1
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

    .line 205
    .local p4, "sceneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/oplus/favorite/OplusEngineTeddy$AntaterLoadCallback;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/favorite/OplusFavoriteCallback;

    .line 206
    .local v0, "callback":Lcom/oplus/favorite/OplusFavoriteCallback;
    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/oplus/favorite/OplusFavoriteCallback;->onLoadFinished(Landroid/content/Context;ZZLjava/util/ArrayList;)V

    .line 209
    :cond_0
    return-void
.end method
