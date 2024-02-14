.class Lcom/oplus/favorite/OplusFavoriteFactory$OplusEngineNone;
.super Lcom/oplus/favorite/OplusFavoriteEngine;
.source "OplusFavoriteFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/favorite/OplusFavoriteFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OplusEngineNone"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/oplus/favorite/OplusFavoriteEngine;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/oplus/favorite/OplusFavoriteFactory$OplusEngineNone-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/favorite/OplusFavoriteFactory$OplusEngineNone;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getWorkHandler()Landroid/os/Handler;
    .locals 1

    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method protected blacklist onInit()V
    .locals 0

    .line 54
    return-void
.end method

.method protected blacklist onLoadRule(Landroid/content/Context;Ljava/lang/String;Lcom/oplus/favorite/OplusFavoriteCallback;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/oplus/favorite/OplusFavoriteCallback;

    .line 62
    return-void
.end method

.method protected blacklist onLogActivityInfo(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 78
    return-void
.end method

.method protected blacklist onLogViewInfo(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 82
    return-void
.end method

.method protected blacklist onProcessClick(Landroid/view/View;Lcom/oplus/favorite/OplusFavoriteCallback;)V
    .locals 0
    .param p1, "clickView"    # Landroid/view/View;
    .param p2, "callback"    # Lcom/oplus/favorite/OplusFavoriteCallback;

    .line 66
    return-void
.end method

.method protected blacklist onProcessCrawl(Landroid/view/View;Lcom/oplus/favorite/OplusFavoriteCallback;Ljava/lang/String;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "callback"    # Lcom/oplus/favorite/OplusFavoriteCallback;
    .param p3, "param"    # Ljava/lang/String;

    .line 70
    return-void
.end method

.method protected blacklist onProcessSave(Landroid/view/View;Lcom/oplus/favorite/OplusFavoriteCallback;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "callback"    # Lcom/oplus/favorite/OplusFavoriteCallback;

    .line 74
    return-void
.end method

.method protected blacklist onRelease()V
    .locals 0

    .line 58
    return-void
.end method
