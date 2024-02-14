.class public abstract Lcom/oplus/favorite/OplusFavoriteEngine;
.super Ljava/lang/Object;
.source "OplusFavoriteEngine.java"

# interfaces
.implements Lcom/oplus/favorite/IOplusFavoriteEngine;


# static fields
.field protected static final blacklist DBG:Z

.field private static final blacklist ENGINE_DEBUG:Z

.field private static final blacklist ENGINE_LOG:Z

.field private static final blacklist ENGINE_TEST:Z


# instance fields
.field protected final blacklist TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 31
    sget-boolean v0, Lcom/oplus/favorite/IOplusFavoriteManager;->DBG:Z

    sput-boolean v0, Lcom/oplus/favorite/OplusFavoriteEngine;->DBG:Z

    .line 36
    const-string v0, "feature.favorite.debug"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oplus/favorite/OplusFavoriteEngine;->ENGINE_DEBUG:Z

    .line 37
    const-string v0, "feature.favorite.test"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oplus/favorite/OplusFavoriteEngine;->ENGINE_TEST:Z

    .line 38
    const-string v0, "feature.favorite.log"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oplus/favorite/OplusFavoriteEngine;->ENGINE_LOG:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/favorite/OplusFavoriteEngine;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final blacklist init()V
    .locals 3

    .line 45
    sget-boolean v0, Lcom/oplus/favorite/OplusFavoriteEngine;->DBG:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/favorite/OplusFavoriteEngine;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] init()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AnteaterFavorite"

    invoke-static {v0, v2, v1}, Lcom/oplus/util/OplusLog;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Lcom/oplus/favorite/OplusFavoriteEngine;->onInit()V

    .line 47
    return-void
.end method

.method public final blacklist isDebugOn()Z
    .locals 1

    .line 105
    sget-boolean v0, Lcom/oplus/favorite/OplusFavoriteEngine;->ENGINE_DEBUG:Z

    return v0
.end method

.method public final blacklist isLogOn()Z
    .locals 1

    .line 115
    sget-boolean v0, Lcom/oplus/favorite/OplusFavoriteEngine;->ENGINE_LOG:Z

    return v0
.end method

.method public final blacklist isTestOn()Z
    .locals 1

    .line 110
    sget-boolean v0, Lcom/oplus/favorite/OplusFavoriteEngine;->ENGINE_TEST:Z

    return v0
.end method

.method public final blacklist loadRule(Landroid/content/Context;Ljava/lang/String;Lcom/oplus/favorite/OplusFavoriteCallback;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/oplus/favorite/OplusFavoriteCallback;

    .line 57
    sget-boolean v0, Lcom/oplus/favorite/OplusFavoriteEngine;->DBG:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/favorite/OplusFavoriteEngine;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] loadRule() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AnteaterFavorite"

    invoke-static {v0, v2, v1}, Lcom/oplus/util/OplusLog;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/favorite/OplusFavoriteEngine;->onLoadRule(Landroid/content/Context;Ljava/lang/String;Lcom/oplus/favorite/OplusFavoriteCallback;)V

    .line 59
    return-void
.end method

.method public final blacklist logActivityInfo(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 84
    const-string v0, "["

    const-string v1, "AnteaterFavorite"

    :try_start_0
    sget-boolean v2, Lcom/oplus/favorite/OplusFavoriteEngine;->DBG:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oplus/favorite/OplusFavoriteEngine;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] logActivityInfo() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/oplus/util/OplusLog;->i(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    goto :goto_0

    .line 85
    :catch_0
    move-exception v2

    .line 86
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v3, Lcom/oplus/favorite/OplusFavoriteEngine;->DBG:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/oplus/favorite/OplusFavoriteEngine;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "] logActivityInfo() exception e : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v1, v0}, Lcom/oplus/util/OplusLog;->w(ZLjava/lang/String;Ljava/lang/String;)V

    .line 88
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/oplus/favorite/OplusFavoriteEngine;->onLogActivityInfo(Landroid/app/Activity;)V

    .line 89
    return-void
.end method

.method public final blacklist logViewInfo(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .line 96
    const-string v0, "["

    const-string v1, "AnteaterFavorite"

    :try_start_0
    sget-boolean v2, Lcom/oplus/favorite/OplusFavoriteEngine;->DBG:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oplus/favorite/OplusFavoriteEngine;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] logViewInfo() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/oplus/util/OplusLog;->i(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    goto :goto_0

    .line 97
    :catch_0
    move-exception v2

    .line 98
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v3, Lcom/oplus/favorite/OplusFavoriteEngine;->DBG:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/oplus/favorite/OplusFavoriteEngine;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "] logViewInfo() exception e : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v1, v0}, Lcom/oplus/util/OplusLog;->w(ZLjava/lang/String;Ljava/lang/String;)V

    .line 100
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/oplus/favorite/OplusFavoriteEngine;->onLogViewInfo(Landroid/view/View;)V

    .line 101
    return-void
.end method

.method protected abstract blacklist onInit()V
.end method

.method protected abstract blacklist onLoadRule(Landroid/content/Context;Ljava/lang/String;Lcom/oplus/favorite/OplusFavoriteCallback;)V
.end method

.method protected abstract blacklist onLogActivityInfo(Landroid/app/Activity;)V
.end method

.method protected abstract blacklist onLogViewInfo(Landroid/view/View;)V
.end method

.method protected abstract blacklist onProcessClick(Landroid/view/View;Lcom/oplus/favorite/OplusFavoriteCallback;)V
.end method

.method protected abstract blacklist onProcessCrawl(Landroid/view/View;Lcom/oplus/favorite/OplusFavoriteCallback;Ljava/lang/String;)V
.end method

.method protected abstract blacklist onProcessSave(Landroid/view/View;Lcom/oplus/favorite/OplusFavoriteCallback;)V
.end method

.method protected abstract blacklist onRelease()V
.end method

.method public final blacklist processClick(Landroid/view/View;Lcom/oplus/favorite/OplusFavoriteCallback;)V
    .locals 3
    .param p1, "clickView"    # Landroid/view/View;
    .param p2, "callback"    # Lcom/oplus/favorite/OplusFavoriteCallback;

    .line 63
    sget-boolean v0, Lcom/oplus/favorite/OplusFavoriteEngine;->DBG:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/favorite/OplusFavoriteEngine;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] processClick() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AnteaterFavorite"

    invoke-static {v0, v2, v1}, Lcom/oplus/util/OplusLog;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/oplus/favorite/OplusFavoriteEngine;->onProcessClick(Landroid/view/View;Lcom/oplus/favorite/OplusFavoriteCallback;)V

    .line 65
    return-void
.end method

.method public final blacklist processCrawl(Landroid/view/View;Lcom/oplus/favorite/OplusFavoriteCallback;Ljava/lang/String;)V
    .locals 3
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "callback"    # Lcom/oplus/favorite/OplusFavoriteCallback;
    .param p3, "param"    # Ljava/lang/String;

    .line 69
    sget-boolean v0, Lcom/oplus/favorite/OplusFavoriteEngine;->DBG:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/favorite/OplusFavoriteEngine;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] processCrawl() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AnteaterFavorite"

    invoke-static {v0, v2, v1}, Lcom/oplus/util/OplusLog;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/favorite/OplusFavoriteEngine;->onProcessCrawl(Landroid/view/View;Lcom/oplus/favorite/OplusFavoriteCallback;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public final blacklist processSave(Landroid/view/View;Lcom/oplus/favorite/OplusFavoriteCallback;)V
    .locals 3
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "callback"    # Lcom/oplus/favorite/OplusFavoriteCallback;

    .line 75
    sget-boolean v0, Lcom/oplus/favorite/OplusFavoriteEngine;->DBG:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/favorite/OplusFavoriteEngine;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] processSave() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AnteaterFavorite"

    invoke-static {v0, v2, v1}, Lcom/oplus/util/OplusLog;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0, p1, p2}, Lcom/oplus/favorite/OplusFavoriteEngine;->onProcessSave(Landroid/view/View;Lcom/oplus/favorite/OplusFavoriteCallback;)V

    .line 77
    return-void
.end method

.method public final blacklist release()V
    .locals 3

    .line 51
    sget-boolean v0, Lcom/oplus/favorite/OplusFavoriteEngine;->DBG:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/favorite/OplusFavoriteEngine;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] release()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AnteaterFavorite"

    invoke-static {v0, v2, v1}, Lcom/oplus/util/OplusLog;->i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/oplus/favorite/OplusFavoriteEngine;->onRelease()V

    .line 53
    return-void
.end method
