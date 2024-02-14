.class Lcom/oplus/favorite/OplusFavoriteManager$FavoriteProcessCallback;
.super Lcom/oplus/favorite/OplusFavoriteManager$FavoriteCallback;
.source "OplusFavoriteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/favorite/OplusFavoriteManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FavoriteProcessCallback"
.end annotation


# direct methods
.method public constructor blacklist <init>(Lcom/oplus/favorite/OplusFavoriteCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/oplus/favorite/OplusFavoriteCallback;

    .line 433
    invoke-direct {p0, p1}, Lcom/oplus/favorite/OplusFavoriteManager$FavoriteCallback;-><init>(Lcom/oplus/favorite/OplusFavoriteCallback;)V

    .line 434
    return-void
.end method
