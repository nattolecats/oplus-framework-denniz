.class public Lcom/oplus/favorite/OplusEngineTeddy;
.super Lcom/oplus/favorite/OplusFavoriteEngine;
.source "OplusEngineTeddy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/favorite/OplusEngineTeddy$AnteaterProcessCallback;,
        Lcom/oplus/favorite/OplusEngineTeddy$AnteaterSaveCallback;,
        Lcom/oplus/favorite/OplusEngineTeddy$AntaterLoadCallback;,
        Lcom/oplus/favorite/OplusEngineTeddy$AnteaterCallback;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/oplus/favorite/OplusFavoriteEngine;-><init>()V

    return-void
.end method

.method private blacklist startCrawl(Landroid/view/View;Lcom/oplus/favorite/OplusFavoriteCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callback"    # Lcom/oplus/favorite/OplusFavoriteCallback;
    .param p3, "param"    # Ljava/lang/String;
    .param p4, "action"    # Ljava/lang/String;

    .line 110
    new-instance v0, Lcom/oplus/favorite/OplusEngineTeddy$AnteaterProcessCallback;

    invoke-direct {v0, p2}, Lcom/oplus/favorite/OplusEngineTeddy$AnteaterProcessCallback;-><init>(Lcom/oplus/favorite/OplusFavoriteCallback;)V

    .line 111
    .local v0, "processCallback":Lcn/teddymobile/free/anteater/AnteaterClient$ProcessCallback;
    invoke-static {}, Lcn/teddymobile/free/anteater/AnteaterClient;->getInstance()Lcn/teddymobile/free/anteater/AnteaterClient;

    move-result-object v1

    .line 112
    .local v1, "anteater":Lcn/teddymobile/free/anteater/AnteaterClient;
    invoke-virtual {v1, p4, p1, v0, p3}, Lcn/teddymobile/free/anteater/AnteaterClient;->process(Ljava/lang/String;Landroid/view/View;Lcn/teddymobile/free/anteater/AnteaterClient$ProcessCallback;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method private blacklist startSave(Landroid/view/View;Lcom/oplus/favorite/OplusFavoriteCallback;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callback"    # Lcom/oplus/favorite/OplusFavoriteCallback;
    .param p3, "action"    # Ljava/lang/String;

    .line 104
    new-instance v0, Lcom/oplus/favorite/OplusEngineTeddy$AnteaterSaveCallback;

    invoke-direct {v0, p2}, Lcom/oplus/favorite/OplusEngineTeddy$AnteaterSaveCallback;-><init>(Lcom/oplus/favorite/OplusFavoriteCallback;)V

    .line 105
    .local v0, "saveCallback":Lcn/teddymobile/free/anteater/AnteaterClient$SaveCallback;
    invoke-static {}, Lcn/teddymobile/free/anteater/AnteaterClient;->getInstance()Lcn/teddymobile/free/anteater/AnteaterClient;

    move-result-object v1

    .line 106
    .local v1, "anteater":Lcn/teddymobile/free/anteater/AnteaterClient;
    invoke-virtual {v1, p3, p1, v0}, Lcn/teddymobile/free/anteater/AnteaterClient;->save(Ljava/lang/String;Landroid/view/View;Lcn/teddymobile/free/anteater/AnteaterClient$SaveCallback;)V

    .line 107
    return-void
.end method


# virtual methods
.method public blacklist getWorkHandler()Landroid/os/Handler;
    .locals 2

    .line 96
    invoke-static {}, Lcn/teddymobile/free/anteater/AnteaterClient;->getInstance()Lcn/teddymobile/free/anteater/AnteaterClient;

    move-result-object v0

    .line 97
    .local v0, "anteater":Lcn/teddymobile/free/anteater/AnteaterClient;
    invoke-virtual {v0}, Lcn/teddymobile/free/anteater/AnteaterClient;->getWorkHandler()Landroid/os/Handler;

    move-result-object v1

    return-object v1
.end method

.method protected blacklist onInit()V
    .locals 1

    .line 42
    invoke-static {}, Lcn/teddymobile/free/anteater/AnteaterClient;->getInstance()Lcn/teddymobile/free/anteater/AnteaterClient;

    move-result-object v0

    .line 43
    .local v0, "anteater":Lcn/teddymobile/free/anteater/AnteaterClient;
    invoke-virtual {v0}, Lcn/teddymobile/free/anteater/AnteaterClient;->init()V

    .line 44
    return-void
.end method

.method protected blacklist onLoadRule(Landroid/content/Context;Ljava/lang/String;Lcom/oplus/favorite/OplusFavoriteCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/oplus/favorite/OplusFavoriteCallback;

    .line 87
    invoke-static {}, Lcn/teddymobile/free/anteater/AnteaterClient;->getInstance()Lcn/teddymobile/free/anteater/AnteaterClient;

    move-result-object v0

    .line 88
    .local v0, "anteater":Lcn/teddymobile/free/anteater/AnteaterClient;
    new-instance v1, Lcom/oplus/favorite/OplusEngineTeddy$AntaterLoadCallback;

    invoke-direct {v1, p3}, Lcom/oplus/favorite/OplusEngineTeddy$AntaterLoadCallback;-><init>(Lcom/oplus/favorite/OplusFavoriteCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lcn/teddymobile/free/anteater/AnteaterClient;->loadRule(Landroid/content/Context;Ljava/lang/String;Lcn/teddymobile/free/anteater/resources/RuleResourcesClient$LoadCallback;)V

    .line 89
    return-void
.end method

.method protected blacklist onLogActivityInfo(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 75
    invoke-static {}, Lcn/teddymobile/free/anteater/helper/AnteaterHelper;->getInstance()Lcn/teddymobile/free/anteater/helper/AnteaterHelper;

    move-result-object v0

    .line 76
    .local v0, "helper":Lcn/teddymobile/free/anteater/helper/AnteaterHelper;
    invoke-virtual {v0, p1}, Lcn/teddymobile/free/anteater/helper/AnteaterHelper;->logActivityInfo(Landroid/app/Activity;)V

    .line 77
    return-void
.end method

.method protected blacklist onLogViewInfo(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 81
    invoke-static {}, Lcn/teddymobile/free/anteater/helper/AnteaterHelper;->getInstance()Lcn/teddymobile/free/anteater/helper/AnteaterHelper;

    move-result-object v0

    .line 82
    .local v0, "helper":Lcn/teddymobile/free/anteater/helper/AnteaterHelper;
    invoke-virtual {v0, p1}, Lcn/teddymobile/free/anteater/helper/AnteaterHelper;->logViewInfo(Landroid/view/View;)V

    .line 83
    return-void
.end method

.method protected blacklist onProcessClick(Landroid/view/View;Lcom/oplus/favorite/OplusFavoriteCallback;)V
    .locals 1
    .param p1, "clickView"    # Landroid/view/View;
    .param p2, "callback"    # Lcom/oplus/favorite/OplusFavoriteCallback;

    .line 54
    const-string v0, "click"

    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/favorite/OplusEngineTeddy;->startSave(Landroid/view/View;Lcom/oplus/favorite/OplusFavoriteCallback;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method protected blacklist onProcessCrawl(Landroid/view/View;Lcom/oplus/favorite/OplusFavoriteCallback;Ljava/lang/String;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "callback"    # Lcom/oplus/favorite/OplusFavoriteCallback;
    .param p3, "param"    # Ljava/lang/String;

    .line 59
    if-eqz p1, :cond_0

    .line 60
    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 62
    :cond_0
    const-string v0, "display"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oplus/favorite/OplusEngineTeddy;->startCrawl(Landroid/view/View;Lcom/oplus/favorite/OplusFavoriteCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method protected blacklist onProcessSave(Landroid/view/View;Lcom/oplus/favorite/OplusFavoriteCallback;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "callback"    # Lcom/oplus/favorite/OplusFavoriteCallback;

    .line 67
    if-eqz p1, :cond_0

    .line 68
    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 70
    :cond_0
    const-string v0, "display"

    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/favorite/OplusEngineTeddy;->startSave(Landroid/view/View;Lcom/oplus/favorite/OplusFavoriteCallback;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method protected blacklist onRelease()V
    .locals 1

    .line 48
    invoke-static {}, Lcn/teddymobile/free/anteater/AnteaterClient;->getInstance()Lcn/teddymobile/free/anteater/AnteaterClient;

    move-result-object v0

    .line 49
    .local v0, "anteater":Lcn/teddymobile/free/anteater/AnteaterClient;
    invoke-virtual {v0}, Lcn/teddymobile/free/anteater/AnteaterClient;->release()V

    .line 50
    return-void
.end method
