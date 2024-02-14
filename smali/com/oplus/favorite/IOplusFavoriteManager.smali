.class public interface abstract Lcom/oplus/favorite/IOplusFavoriteManager;
.super Ljava/lang/Object;
.source "IOplusFavoriteManager.java"

# interfaces
.implements Lcom/oplus/favorite/IOplusBaseFavoriteManager;


# static fields
.field public static final blacklist DBG:Z

.field public static final blacklist DEFAULT:Lcom/oplus/favorite/IOplusFavoriteManager;

.field public static final blacklist LOG_DEBUG:Z

.field public static final blacklist LOG_PANIC:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 32
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oplus/favorite/IOplusFavoriteManager;->LOG_PANIC:Z

    .line 33
    const-string v2, "log.favorite.debug"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/oplus/favorite/IOplusFavoriteManager;->LOG_DEBUG:Z

    .line 34
    if-nez v0, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    sput-boolean v1, Lcom/oplus/favorite/IOplusFavoriteManager;->DBG:Z

    .line 36
    new-instance v0, Lcom/oplus/favorite/IOplusFavoriteManager$1;

    invoke-direct {v0}, Lcom/oplus/favorite/IOplusFavoriteManager$1;-><init>()V

    sput-object v0, Lcom/oplus/favorite/IOplusFavoriteManager;->DEFAULT:Lcom/oplus/favorite/IOplusFavoriteManager;

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist getDefault()Landroid/common/IOplusCommonFeature;
    .locals 1

    .line 30
    invoke-interface {p0}, Lcom/oplus/favorite/IOplusFavoriteManager;->getDefault()Lcom/oplus/favorite/IOplusFavoriteManager;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDefault()Lcom/oplus/favorite/IOplusFavoriteManager;
    .locals 1

    .line 41
    sget-object v0, Lcom/oplus/favorite/IOplusFavoriteManager;->DEFAULT:Lcom/oplus/favorite/IOplusFavoriteManager;

    return-object v0
.end method

.method public blacklist getWorkHandler()Landroid/os/Handler;
    .locals 1

    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist index()Landroid/common/OplusFeatureList$OplusIndex;
    .locals 1

    .line 46
    sget-object v0, Landroid/common/OplusFeatureList$OplusIndex;->IOplusFavoriteManager:Landroid/common/OplusFeatureList$OplusIndex;

    return-object v0
.end method

.method public blacklist isSaved(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
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

    .line 91
    .local p3, "data":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist logActivityInfo(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 72
    return-void
.end method

.method public blacklist logViewInfo(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 77
    return-void
.end method

.method public blacklist processClick(Landroid/view/View;Lcom/oplus/favorite/OplusFavoriteCallback;)V
    .locals 0
    .param p1, "clickView"    # Landroid/view/View;
    .param p2, "callback"    # Lcom/oplus/favorite/OplusFavoriteCallback;

    .line 57
    return-void
.end method

.method public blacklist processCrawl(Landroid/view/View;Lcom/oplus/favorite/OplusFavoriteCallback;Ljava/lang/String;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "callback"    # Lcom/oplus/favorite/OplusFavoriteCallback;
    .param p3, "param"    # Ljava/lang/String;

    .line 62
    return-void
.end method

.method public blacklist processSave(Landroid/view/View;Lcom/oplus/favorite/OplusFavoriteCallback;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "callback"    # Lcom/oplus/favorite/OplusFavoriteCallback;

    .line 67
    return-void
.end method

.method public blacklist release()V
    .locals 0

    .line 52
    return-void
.end method

.method public blacklist setEngine(Lcom/oplus/favorite/OplusFavoriteEngines;)V
    .locals 0
    .param p1, "engine"    # Lcom/oplus/favorite/OplusFavoriteEngines;

    .line 87
    return-void
.end method
