.class public Lcn/teddymobile/free/anteater/AnteaterClient;
.super Ljava/lang/Object;
.source "AnteaterClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/teddymobile/free/anteater/AnteaterClient$QueryData;,
        Lcn/teddymobile/free/anteater/AnteaterClient$ResultData;,
        Lcn/teddymobile/free/anteater/AnteaterClient$ErrorCode;,
        Lcn/teddymobile/free/anteater/AnteaterClient$ProcessCallback;,
        Lcn/teddymobile/free/anteater/AnteaterClient$SaveCallback;,
        Lcn/teddymobile/free/anteater/AnteaterClient$CheckCallback;,
        Lcn/teddymobile/free/anteater/AnteaterClient$BaseCallback;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_CLICK:Ljava/lang/String; = "click"

.field public static final blacklist ACTION_DISPLAY:Ljava/lang/String; = "display"

.field private static final blacklist EMPTY:Ljava/lang/String; = ""

.field private static final blacklist JSON_FIELD_PARSER:Ljava/lang/String; = "parser"

.field private static final blacklist JSON_FIELD_RESULT:Ljava/lang/String; = "result"

.field private static final blacklist TAG:Ljava/lang/String;

.field private static volatile blacklist sInstance:Lcn/teddymobile/free/anteater/AnteaterClient;


# instance fields
.field private blacklist mWorkHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mextractContent(Lcn/teddymobile/free/anteater/AnteaterClient;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcn/teddymobile/free/anteater/AnteaterClient;->extractContent(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mextractExtra(Lcn/teddymobile/free/anteater/AnteaterClient;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcn/teddymobile/free/anteater/AnteaterClient;->extractExtra(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mextractTitle(Lcn/teddymobile/free/anteater/AnteaterClient;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcn/teddymobile/free/anteater/AnteaterClient;->extractTitle(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mextractUrl(Lcn/teddymobile/free/anteater/AnteaterClient;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcn/teddymobile/free/anteater/AnteaterClient;->extractUrl(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetRuleList(Lcn/teddymobile/free/anteater/AnteaterClient;Landroid/content/Context;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcn/teddymobile/free/anteater/AnteaterClient;->getRuleList(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetStampFromParam(Lcn/teddymobile/free/anteater/AnteaterClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcn/teddymobile/free/anteater/AnteaterClient;->getStampFromParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mprocessFailed(Lcn/teddymobile/free/anteater/AnteaterClient;Landroid/content/Context;Lcn/teddymobile/free/anteater/AnteaterClient$ProcessCallback;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/teddymobile/free/anteater/AnteaterClient;->processFailed(Landroid/content/Context;Lcn/teddymobile/free/anteater/AnteaterClient$ProcessCallback;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mprocessSuccess(Lcn/teddymobile/free/anteater/AnteaterClient;Landroid/content/Context;Lcn/teddymobile/free/anteater/AnteaterClient$ProcessCallback;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/teddymobile/free/anteater/AnteaterClient;->processSuccess(Landroid/content/Context;Lcn/teddymobile/free/anteater/AnteaterClient$ProcessCallback;Ljava/util/ArrayList;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msaveFailed(Lcn/teddymobile/free/anteater/AnteaterClient;Landroid/content/Context;Lcn/teddymobile/free/anteater/AnteaterClient$SaveCallback;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/teddymobile/free/anteater/AnteaterClient;->saveFailed(Landroid/content/Context;Lcn/teddymobile/free/anteater/AnteaterClient$SaveCallback;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msaveResult(Lcn/teddymobile/free/anteater/AnteaterClient;Landroid/content/Context;Lcn/teddymobile/free/anteater/rule/Rule;Lorg/json/JSONObject;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/teddymobile/free/anteater/AnteaterClient;->saveResult(Landroid/content/Context;Lcn/teddymobile/free/anteater/rule/Rule;Lorg/json/JSONObject;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msaveSuccess(Lcn/teddymobile/free/anteater/AnteaterClient;Landroid/content/Context;Lcn/teddymobile/free/anteater/AnteaterClient$SaveCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/teddymobile/free/anteater/AnteaterClient;->saveSuccess(Landroid/content/Context;Lcn/teddymobile/free/anteater/AnteaterClient$SaveCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/teddymobile/free/anteater/AnteaterClient;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lcn/teddymobile/free/anteater/AnteaterClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/teddymobile/free/anteater/AnteaterClient;->TAG:Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    sput-object v0, Lcn/teddymobile/free/anteater/AnteaterClient;->sInstance:Lcn/teddymobile/free/anteater/AnteaterClient;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 2

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/teddymobile/free/anteater/AnteaterClient;->mWorkHandler:Landroid/os/Handler;

    .line 85
    sget-object v0, Lcn/teddymobile/free/anteater/AnteaterClient;->TAG:Ljava/lang/String;

    const-string v1, "<init>()"

    invoke-static {v0, v1}, Lcn/teddymobile/free/anteater/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method private blacklist ensureWorkHandler(Landroid/content/Context;Lcn/teddymobile/free/anteater/AnteaterClient$BaseCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcn/teddymobile/free/anteater/AnteaterClient$BaseCallback;

    .line 533
    iget-object v0, p0, Lcn/teddymobile/free/anteater/AnteaterClient;->mWorkHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 534
    const/4 v0, 0x1

    const-string v1, "anteater"

    invoke-interface {p2, p1, v1, v0}, Lcn/teddymobile/free/anteater/AnteaterClient$BaseCallback;->createWorkHandler(Landroid/content/Context;Ljava/lang/String;I)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcn/teddymobile/free/anteater/AnteaterClient;->mWorkHandler:Landroid/os/Handler;

    .line 536
    :cond_0
    return-void
.end method

.method private blacklist extractContent(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 5
    .param p1, "resultObject"    # Lorg/json/JSONObject;

    .line 593
    const-string v0, "content"

    const/4 v1, 0x0

    .line 595
    .local v1, "data":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 600
    :goto_0
    goto :goto_1

    .line 598
    :catch_0
    move-exception v2

    .line 599
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcn/teddymobile/free/anteater/AnteaterClient;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcn/teddymobile/free/anteater/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 596
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 597
    .local v2, "e":Lorg/json/JSONException;
    sget-object v3, Lcn/teddymobile/free/anteater/AnteaterClient;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "e":Lorg/json/JSONException;
    goto :goto_0

    .line 601
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 602
    sget-object v2, Lcn/teddymobile/free/anteater/AnteaterClient;->TAG:Ljava/lang/String;

    const-string v3, "loadFromWindowList-->content"

    invoke-static {v2, v3}, Lcn/teddymobile/free/anteater/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    invoke-direct {p0, p1, v0}, Lcn/teddymobile/free/anteater/AnteaterClient;->extractValueFromWindowList(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 605
    :cond_0
    invoke-direct {p0, v1}, Lcn/teddymobile/free/anteater/AnteaterClient;->formatText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 606
    .end local v1    # "data":Ljava/lang/String;
    .local v0, "data":Ljava/lang/String;
    return-object v0
.end method

.method private blacklist extractExtra(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4
    .param p1, "resultObject"    # Lorg/json/JSONObject;

    .line 610
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 613
    .local v0, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 614
    .local v1, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 615
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 616
    .local v2, "key":Ljava/lang/String;
    const-string v3, "title"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "url"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "content"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 617
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 614
    .end local v1    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    goto :goto_1

    .line 622
    :catch_0
    move-exception v1

    .line 623
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcn/teddymobile/free/anteater/AnteaterClient;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcn/teddymobile/free/anteater/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 620
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 621
    .local v1, "e":Lorg/json/JSONException;
    sget-object v2, Lcn/teddymobile/free/anteater/AnteaterClient;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 624
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_1
    nop

    .line 626
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist extractTitle(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 5
    .param p1, "resultObject"    # Lorg/json/JSONObject;

    .line 557
    const-string v0, "title"

    const/4 v1, 0x0

    .line 559
    .local v1, "data":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 564
    :goto_0
    goto :goto_1

    .line 562
    :catch_0
    move-exception v2

    .line 563
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcn/teddymobile/free/anteater/AnteaterClient;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcn/teddymobile/free/anteater/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 560
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 561
    .local v2, "e":Lorg/json/JSONException;
    sget-object v3, Lcn/teddymobile/free/anteater/AnteaterClient;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "e":Lorg/json/JSONException;
    goto :goto_0

    .line 565
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 566
    sget-object v2, Lcn/teddymobile/free/anteater/AnteaterClient;->TAG:Ljava/lang/String;

    const-string v3, "loadFromWindowList-->title"

    invoke-static {v2, v3}, Lcn/teddymobile/free/anteater/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    invoke-direct {p0, p1, v0}, Lcn/teddymobile/free/anteater/AnteaterClient;->extractValueFromWindowList(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 569
    :cond_0
    invoke-direct {p0, v1}, Lcn/teddymobile/free/anteater/AnteaterClient;->formatText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 570
    .end local v1    # "data":Ljava/lang/String;
    .local v0, "data":Ljava/lang/String;
    return-object v0
.end method

.method private blacklist extractUrl(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 5
    .param p1, "resultObject"    # Lorg/json/JSONObject;

    .line 574
    const-string v0, "url"

    const/4 v1, 0x0

    .line 576
    .local v1, "data":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 581
    :goto_0
    goto :goto_1

    .line 579
    :catch_0
    move-exception v2

    .line 580
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcn/teddymobile/free/anteater/AnteaterClient;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcn/teddymobile/free/anteater/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 577
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 578
    .local v2, "e":Lorg/json/JSONException;
    sget-object v3, Lcn/teddymobile/free/anteater/AnteaterClient;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "e":Lorg/json/JSONException;
    goto :goto_0

    .line 582
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 583
    sget-object v2, Lcn/teddymobile/free/anteater/AnteaterClient;->TAG:Ljava/lang/String;

    const-string v3, "loadFromWindowList-->url"

    invoke-static {v2, v3}, Lcn/teddymobile/free/anteater/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    invoke-direct {p0, p1, v0}, Lcn/teddymobile/free/anteater/AnteaterClient;->extractValueFromWindowList(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 586
    :cond_0
    invoke-direct {p0, v1}, Lcn/teddymobile/free/anteater/AnteaterClient;->formatText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 587
    .end local v1    # "data":Ljava/lang/String;
    .local v0, "data":Ljava/lang/String;
    return-object v0
.end method

.method private blacklist extractValueFromWindowList(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "resultObject"    # Lorg/json/JSONObject;
    .param p2, "key"    # Ljava/lang/String;

    .line 631
    const/4 v0, 0x0

    .line 633
    .local v0, "jsonArray":Lorg/json/JSONArray;
    :try_start_0
    const-string v1, "window_list"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 636
    goto :goto_0

    .line 634
    :catch_0
    move-exception v1

    .line 635
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v2, Lcn/teddymobile/free/anteater/AnteaterClient;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 637
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    if-eqz v0, :cond_1

    .line 638
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_1

    .line 640
    :try_start_1
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 641
    .local v2, "object":Lorg/json/JSONObject;
    invoke-virtual {v2, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 642
    .local v3, "result":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 643
    sget-object v4, Lcn/teddymobile/free/anteater/AnteaterClient;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadFromWindowList-->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/teddymobile/free/anteater/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 644
    return-object v3

    .line 648
    .end local v2    # "object":Lorg/json/JSONObject;
    .end local v3    # "result":Ljava/lang/String;
    :cond_0
    goto :goto_2

    .line 646
    :catch_1
    move-exception v2

    .line 638
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 651
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist formatText(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 544
    const-string v0, ""

    if-nez p1, :cond_0

    .line 545
    return-object v0

    .line 547
    :cond_0
    const-string v1, "true"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 548
    return-object v0

    .line 550
    :cond_1
    const-string v1, "false"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 551
    return-object v0

    .line 553
    :cond_2
    return-object p1
.end method

.method public static blacklist getInstance()Lcn/teddymobile/free/anteater/AnteaterClient;
    .locals 2

    .line 71
    sget-object v0, Lcn/teddymobile/free/anteater/AnteaterClient;->sInstance:Lcn/teddymobile/free/anteater/AnteaterClient;

    if-nez v0, :cond_1

    .line 72
    const-class v0, Lcn/teddymobile/free/anteater/AnteaterClient;

    monitor-enter v0

    .line 73
    :try_start_0
    sget-object v1, Lcn/teddymobile/free/anteater/AnteaterClient;->sInstance:Lcn/teddymobile/free/anteater/AnteaterClient;

    if-nez v1, :cond_0

    .line 74
    new-instance v1, Lcn/teddymobile/free/anteater/AnteaterClient;

    invoke-direct {v1}, Lcn/teddymobile/free/anteater/AnteaterClient;-><init>()V

    sput-object v1, Lcn/teddymobile/free/anteater/AnteaterClient;->sInstance:Lcn/teddymobile/free/anteater/AnteaterClient;

    .line 76
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 78
    :cond_1
    :goto_0
    sget-object v0, Lcn/teddymobile/free/anteater/AnteaterClient;->sInstance:Lcn/teddymobile/free/anteater/AnteaterClient;

    return-object v0
.end method

.method private blacklist getRuleList(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcn/teddymobile/free/anteater/rule/Rule;",
            ">;"
        }
    .end annotation

    .line 539
    invoke-static {p1}, Lcn/teddymobile/free/anteater/rule/utils/RuleUtils;->queryRuleFromProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 540
    .local v0, "result":Ljava/lang/String;
    invoke-static {v0}, Lcn/teddymobile/free/anteater/rule/utils/RuleUtils;->parseRule(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getStampFromParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "json"    # Ljava/lang/String;

    .line 711
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 712
    .local v0, "paramObj":Lorg/json/JSONObject;
    const-string v1, "stamp"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 713
    .end local v0    # "paramObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 714
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 715
    const-string v1, ""

    return-object v1
.end method

.method private blacklist processFailed(Landroid/content/Context;Lcn/teddymobile/free/anteater/AnteaterClient$ProcessCallback;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcn/teddymobile/free/anteater/AnteaterClient$ProcessCallback;
    .param p3, "ruleSize"    # I

    .line 663
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 664
    .local v0, "packageName":Ljava/lang/String;
    sget-object v1, Lcn/teddymobile/free/anteater/AnteaterClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processFailed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/teddymobile/free/anteater/logger/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    new-instance v1, Lcn/teddymobile/free/anteater/AnteaterClient$ResultData;

    invoke-direct {v1}, Lcn/teddymobile/free/anteater/AnteaterClient$ResultData;-><init>()V

    .line 666
    .local v1, "result":Lcn/teddymobile/free/anteater/AnteaterClient$ResultData;
    if-lez p3, :cond_0

    .line 667
    sget-object v2, Lcn/teddymobile/free/anteater/AnteaterClient$ErrorCode;->NOT_FOUND:Lcn/teddymobile/free/anteater/AnteaterClient$ErrorCode;

    invoke-virtual {v1, v2}, Lcn/teddymobile/free/anteater/AnteaterClient$ResultData;->setError(Lcn/teddymobile/free/anteater/AnteaterClient$ErrorCode;)V

    goto :goto_0

    .line 669
    :cond_0
    sget-object v2, Lcn/teddymobile/free/anteater/AnteaterClient$ErrorCode;->UNSUPPORT:Lcn/teddymobile/free/anteater/AnteaterClient$ErrorCode;

    invoke-virtual {v1, v2}, Lcn/teddymobile/free/anteater/AnteaterClient$ResultData;->setError(Lcn/teddymobile/free/anteater/AnteaterClient$ErrorCode;)V

    .line 671
    :goto_0
    invoke-interface {p2, p1, v1}, Lcn/teddymobile/free/anteater/AnteaterClient$ProcessCallback;->onProcessResult(Landroid/content/Context;Lcn/teddymobile/free/anteater/AnteaterClient$ResultData;)V

    .line 672
    return-void
.end method

.method private blacklist processSuccess(Landroid/content/Context;Lcn/teddymobile/free/anteater/AnteaterClient$ProcessCallback;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcn/teddymobile/free/anteater/AnteaterClient$ProcessCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcn/teddymobile/free/anteater/AnteaterClient$ProcessCallback;",
            "Ljava/util/ArrayList<",
            "Lcn/teddymobile/free/anteater/AnteaterClient$QueryData;",
            ">;)V"
        }
    .end annotation

    .line 655
    .local p3, "queryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/teddymobile/free/anteater/AnteaterClient$QueryData;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 656
    .local v0, "packageName":Ljava/lang/String;
    sget-object v1, Lcn/teddymobile/free/anteater/AnteaterClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processSuccess : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", queryList="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/teddymobile/free/anteater/logger/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    new-instance v1, Lcn/teddymobile/free/anteater/AnteaterClient$ResultData;

    invoke-direct {v1}, Lcn/teddymobile/free/anteater/AnteaterClient$ResultData;-><init>()V

    .line 658
    .local v1, "result":Lcn/teddymobile/free/anteater/AnteaterClient$ResultData;
    invoke-virtual {v1, p3}, Lcn/teddymobile/free/anteater/AnteaterClient$ResultData;->setQueryList(Ljava/util/ArrayList;)V

    .line 659
    invoke-interface {p2, p1, v1}, Lcn/teddymobile/free/anteater/AnteaterClient$ProcessCallback;->onProcessResult(Landroid/content/Context;Lcn/teddymobile/free/anteater/AnteaterClient$ResultData;)V

    .line 660
    return-void
.end method

.method private blacklist saveFailed(Landroid/content/Context;Lcn/teddymobile/free/anteater/AnteaterClient$SaveCallback;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcn/teddymobile/free/anteater/AnteaterClient$SaveCallback;
    .param p3, "ruleSize"    # I

    .line 700
    new-instance v0, Lcn/teddymobile/free/anteater/AnteaterClient$ResultData;

    invoke-direct {v0}, Lcn/teddymobile/free/anteater/AnteaterClient$ResultData;-><init>()V

    .line 701
    .local v0, "result":Lcn/teddymobile/free/anteater/AnteaterClient$ResultData;
    if-lez p3, :cond_0

    .line 702
    sget-object v1, Lcn/teddymobile/free/anteater/AnteaterClient$ErrorCode;->SAVE_FAILED:Lcn/teddymobile/free/anteater/AnteaterClient$ErrorCode;

    invoke-virtual {v0, v1}, Lcn/teddymobile/free/anteater/AnteaterClient$ResultData;->setError(Lcn/teddymobile/free/anteater/AnteaterClient$ErrorCode;)V

    goto :goto_0

    .line 704
    :cond_0
    sget-object v1, Lcn/teddymobile/free/anteater/AnteaterClient$ErrorCode;->UNSUPPORT:Lcn/teddymobile/free/anteater/AnteaterClient$ErrorCode;

    invoke-virtual {v0, v1}, Lcn/teddymobile/free/anteater/AnteaterClient$ResultData;->setError(Lcn/teddymobile/free/anteater/AnteaterClient$ErrorCode;)V

    .line 706
    :goto_0
    invoke-interface {p2, p1, v0}, Lcn/teddymobile/free/anteater/AnteaterClient$SaveCallback;->onSaveResult(Landroid/content/Context;Lcn/teddymobile/free/anteater/AnteaterClient$ResultData;)V

    .line 707
    return-void
.end method

.method private blacklist saveResult(Landroid/content/Context;Lcn/teddymobile/free/anteater/rule/Rule;Lorg/json/JSONObject;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rule"    # Lcn/teddymobile/free/anteater/rule/Rule;
    .param p3, "resultObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 675
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 676
    .local v0, "object":Lorg/json/JSONObject;
    const-string v1, "result"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 677
    invoke-virtual {p2}, Lcn/teddymobile/free/anteater/rule/Rule;->getParser()Ljava/lang/String;

    move-result-object v2

    const-string v3, "parser"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 678
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    .line 679
    const-string v3, "content"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 680
    const-string v3, "cn.teddymobile.free.anteater.den.provider"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 681
    invoke-virtual {v2, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 682
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 683
    .local v1, "uri":Landroid/net/Uri;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 684
    .local v2, "values":Landroid/content/ContentValues;
    invoke-virtual {p2}, Lcn/teddymobile/free/anteater/rule/Rule;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "package_name"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    invoke-virtual {p2}, Lcn/teddymobile/free/anteater/rule/Rule;->getVersion()Ljava/lang/String;

    move-result-object v3

    const-string v4, "version"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    invoke-virtual {p2}, Lcn/teddymobile/free/anteater/rule/Rule;->getScene()Ljava/lang/String;

    move-result-object v3

    const-string v4, "scene"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "data"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 689
    .local v3, "insertUri":Landroid/net/Uri;
    sget-object v4, Lcn/teddymobile/free/anteater/AnteaterClient;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n----------saveResult : uri="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", insertUri="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/teddymobile/free/anteater/logger/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\n----------saveResult : values="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/teddymobile/free/anteater/logger/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    if-eqz v3, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return v4
.end method

.method private blacklist saveSuccess(Landroid/content/Context;Lcn/teddymobile/free/anteater/AnteaterClient$SaveCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcn/teddymobile/free/anteater/AnteaterClient$SaveCallback;

    .line 695
    new-instance v0, Lcn/teddymobile/free/anteater/AnteaterClient$ResultData;

    invoke-direct {v0}, Lcn/teddymobile/free/anteater/AnteaterClient$ResultData;-><init>()V

    .line 696
    .local v0, "result":Lcn/teddymobile/free/anteater/AnteaterClient$ResultData;
    invoke-interface {p2, p1, v0}, Lcn/teddymobile/free/anteater/AnteaterClient$SaveCallback;->onSaveResult(Landroid/content/Context;Lcn/teddymobile/free/anteater/AnteaterClient$ResultData;)V

    .line 697
    return-void
.end method


# virtual methods
.method public blacklist check(Landroid/view/View;Ljava/lang/String;Lcn/teddymobile/free/anteater/AnteaterClient$CheckCallback;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "checkCallback"    # Lcn/teddymobile/free/anteater/AnteaterClient$CheckCallback;

    .line 287
    iget-object v0, p0, Lcn/teddymobile/free/anteater/AnteaterClient;->mWorkHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 288
    new-instance v1, Lcn/teddymobile/free/anteater/AnteaterClient$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcn/teddymobile/free/anteater/AnteaterClient$3;-><init>(Lcn/teddymobile/free/anteater/AnteaterClient;Landroid/view/View;Ljava/lang/String;Lcn/teddymobile/free/anteater/AnteaterClient$CheckCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 318
    :cond_0
    sget-object v0, Lcn/teddymobile/free/anteater/AnteaterClient;->TAG:Ljava/lang/String;

    const-string v1, "Check : No WorkHandler"

    invoke-static {v0, v1}, Lcn/teddymobile/free/anteater/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    :goto_0
    return-void
.end method

.method public blacklist findActionClick(Ljava/lang/String;Landroid/view/View;Lcn/teddymobile/free/anteater/AnteaterClient$ProcessCallback;Ljava/lang/String;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "callback"    # Lcn/teddymobile/free/anteater/AnteaterClient$ProcessCallback;
    .param p4, "param"    # Ljava/lang/String;

    .line 399
    if-nez p2, :cond_0

    .line 400
    sget-object v0, Lcn/teddymobile/free/anteater/AnteaterClient;->TAG:Ljava/lang/String;

    const-string v1, "Process [No View]"

    invoke-static {v0, v1}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    return-void

    .line 403
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 404
    .local v0, "context":Landroid/content/Context;
    invoke-direct {p0, v0, p3}, Lcn/teddymobile/free/anteater/AnteaterClient;->ensureWorkHandler(Landroid/content/Context;Lcn/teddymobile/free/anteater/AnteaterClient$BaseCallback;)V

    .line 405
    iget-object v1, p0, Lcn/teddymobile/free/anteater/AnteaterClient;->mWorkHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 406
    new-instance v2, Lcn/teddymobile/free/anteater/AnteaterClient$5;

    invoke-direct {v2, p0}, Lcn/teddymobile/free/anteater/AnteaterClient$5;-><init>(Lcn/teddymobile/free/anteater/AnteaterClient;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 413
    :cond_1
    sget-object v1, Lcn/teddymobile/free/anteater/AnteaterClient;->TAG:Ljava/lang/String;

    const-string v2, "Process : No WorkHandler"

    invoke-static {v1, v2}, Lcn/teddymobile/free/anteater/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    :goto_0
    return-void
.end method

.method public blacklist findActionDoubleClick(Ljava/lang/String;Landroid/view/View;Lcn/teddymobile/free/anteater/AnteaterClient$ProcessCallback;Ljava/lang/String;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "callback"    # Lcn/teddymobile/free/anteater/AnteaterClient$ProcessCallback;
    .param p4, "param"    # Ljava/lang/String;

    .line 418
    if-nez p2, :cond_0

    .line 419
    sget-object v0, Lcn/teddymobile/free/anteater/AnteaterClient;->TAG:Ljava/lang/String;

    const-string v1, "Process [No View]"

    invoke-static {v0, v1}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    return-void

    .line 422
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 423
    .local v0, "context":Landroid/content/Context;
    invoke-direct {p0, v0, p3}, Lcn/teddymobile/free/anteater/AnteaterClient;->ensureWorkHandler(Landroid/content/Context;Lcn/teddymobile/free/anteater/AnteaterClient$BaseCallback;)V

    .line 424
    iget-object v1, p0, Lcn/teddymobile/free/anteater/AnteaterClient;->mWorkHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 425
    new-instance v2, Lcn/teddymobile/free/anteater/AnteaterClient$6;

    invoke-direct {v2, p0}, Lcn/teddymobile/free/anteater/AnteaterClient$6;-><init>(Lcn/teddymobile/free/anteater/AnteaterClient;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 432
    :cond_1
    sget-object v1, Lcn/teddymobile/free/anteater/AnteaterClient;->TAG:Ljava/lang/String;

    const-string v2, "Process : No WorkHandler"

    invoke-static {v1, v2}, Lcn/teddymobile/free/anteater/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    :goto_0
    return-void
.end method

.method public blacklist findActionLongClick(Ljava/lang/String;Landroid/view/View;Lcn/teddymobile/free/anteater/AnteaterClient$ProcessCallback;Ljava/lang/String;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "callback"    # Lcn/teddymobile/free/anteater/AnteaterClient$ProcessCallback;
    .param p4, "param"    # Ljava/lang/String;

    .line 437
    if-nez p2, :cond_0

    .line 438
    sget-object v0, Lcn/teddymobile/free/anteater/AnteaterClient;->TAG:Ljava/lang/String;

    const-string v1, "Process [No View]"

    invoke-static {v0, v1}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    return-void

    .line 441
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 442
    .local v0, "context":Landroid/content/Context;
    invoke-direct {p0, v0, p3}, Lcn/teddymobile/free/anteater/AnteaterClient;->ensureWorkHandler(Landroid/content/Context;Lcn/teddymobile/free/anteater/AnteaterClient$BaseCallback;)V

    .line 443
    iget-object v1, p0, Lcn/teddymobile/free/anteater/AnteaterClient;->mWorkHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 444
    new-instance v2, Lcn/teddymobile/free/anteater/AnteaterClient$7;

    invoke-direct {v2, p0}, Lcn/teddymobile/free/anteater/AnteaterClient$7;-><init>(Lcn/teddymobile/free/anteater/AnteaterClient;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 451
    :cond_1
    sget-object v1, Lcn/teddymobile/free/anteater/AnteaterClient;->TAG:Ljava/lang/String;

    const-string v2, "Process : No WorkHandler"

    invoke-static {v1, v2}, Lcn/teddymobile/free/anteater/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    :goto_0
    return-void
.end method

.method public blacklist findActivityInfo(Ljava/lang/String;Landroid/view/View;Lcn/teddymobile/free/anteater/AnteaterClient$ProcessCallback;Ljava/lang/String;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "callback"    # Lcn/teddymobile/free/anteater/AnteaterClient$ProcessCallback;
    .param p4, "param"    # Ljava/lang/String;

    .line 456
    if-nez p2, :cond_0

    .line 457
    sget-object v0, Lcn/teddymobile/free/anteater/AnteaterClient;->TAG:Ljava/lang/String;

    const-string v1, "Process [No View]"

    invoke-static {v0, v1}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    return-void

    .line 460
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 461
    .local v0, "context":Landroid/content/Context;
    invoke-direct {p0, v0, p3}, Lcn/teddymobile/free/anteater/AnteaterClient;->ensureWorkHandler(Landroid/content/Context;Lcn/teddymobile/free/anteater/AnteaterClient$BaseCallback;)V

    .line 462
    iget-object v1, p0, Lcn/teddymobile/free/anteater/AnteaterClient;->mWorkHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 463
    new-instance v2, Lcn/teddymobile/free/anteater/AnteaterClient$8;

    invoke-direct {v2, p0, v0}, Lcn/teddymobile/free/anteater/AnteaterClient$8;-><init>(Lcn/teddymobile/free/anteater/AnteaterClient;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 471
    :cond_1
    sget-object v1, Lcn/teddymobile/free/anteater/AnteaterClient;->TAG:Ljava/lang/String;

    const-string v2, "Process : No WorkHandler"

    invoke-static {v1, v2}, Lcn/teddymobile/free/anteater/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    :goto_0
    return-void
.end method

.method public blacklist findContent(Ljava/lang/String;Landroid/view/View;Lcn/teddymobile/free/anteater/AnteaterClient$ProcessCallback;Ljava/lang/String;)V
    .locals 10
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "callback"    # Lcn/teddymobile/free/anteater/AnteaterClient$ProcessCallback;
    .param p4, "param"    # Ljava/lang/String;

    .line 325
    if-nez p2, :cond_0

    .line 326
    sget-object v0, Lcn/teddymobile/free/anteater/AnteaterClient;->TAG:Ljava/lang/String;

    const-string v1, "Process [No View]"

    invoke-static {v0, v1}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    return-void

    .line 329
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 330
    .local v0, "context":Landroid/content/Context;
    invoke-direct {p0, v0, p3}, Lcn/teddymobile/free/anteater/AnteaterClient;->ensureWorkHandler(Landroid/content/Context;Lcn/teddymobile/free/anteater/AnteaterClient$BaseCallback;)V

    .line 331
    iget-object v1, p0, Lcn/teddymobile/free/anteater/AnteaterClient;->mWorkHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 332
    new-instance v9, Lcn/teddymobile/free/anteater/AnteaterClient$4;

    move-object v2, v9

    move-object v3, p0

    move-object v4, p1

    move-object v5, v0

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v2 .. v8}, Lcn/teddymobile/free/anteater/AnteaterClient$4;-><init>(Lcn/teddymobile/free/anteater/AnteaterClient;Ljava/lang/String;Landroid/content/Context;Landroid/view/View;Lcn/teddymobile/free/anteater/AnteaterClient$ProcessCallback;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 394
    :cond_1
    sget-object v1, Lcn/teddymobile/free/anteater/AnteaterClient;->TAG:Ljava/lang/String;

    const-string v2, "Process : No WorkHandler"

    invoke-static {v1, v2}, Lcn/teddymobile/free/anteater/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    :goto_0
    return-void
.end method

.method public blacklist findFavorite(Ljava/lang/String;Landroid/view/View;Lcn/teddymobile/free/anteater/AnteaterClient$ProcessCallback;Ljava/lang/String;)V
    .locals 10
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "callback"    # Lcn/teddymobile/free/anteater/AnteaterClient$ProcessCallback;
    .param p4, "param"    # Ljava/lang/String;

    .line 143
    if-nez p2, :cond_0

    .line 144
    sget-object v0, Lcn/teddymobile/free/anteater/AnteaterClient;->TAG:Ljava/lang/String;

    const-string v1, "Process [No View]"

    invoke-static {v0, v1}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return-void

    .line 147
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 148
    .local v0, "context":Landroid/content/Context;
    invoke-direct {p0, v0, p3}, Lcn/teddymobile/free/anteater/AnteaterClient;->ensureWorkHandler(Landroid/content/Context;Lcn/teddymobile/free/anteater/AnteaterClient$BaseCallback;)V

    .line 149
    iget-object v1, p0, Lcn/teddymobile/free/anteater/AnteaterClient;->mWorkHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 150
    new-instance v9, Lcn/teddymobile/free/anteater/AnteaterClient$1;

    move-object v2, v9

    move-object v3, p0

    move-object v4, p1

    move-object v5, v0

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v2 .. v8}, Lcn/teddymobile/free/anteater/AnteaterClient$1;-><init>(Lcn/teddymobile/free/anteater/AnteaterClient;Ljava/lang/String;Landroid/content/Context;Landroid/view/View;Lcn/teddymobile/free/anteater/AnteaterClient$ProcessCallback;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 222
    :cond_1
    sget-object v1, Lcn/teddymobile/free/anteater/AnteaterClient;->TAG:Ljava/lang/String;

    const-string v2, "Process : No WorkHandler"

    invoke-static {v1, v2}, Lcn/teddymobile/free/anteater/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :goto_0
    return-void
.end method

.method public blacklist findReflectionInfo(Ljava/lang/String;Landroid/view/View;Lcn/teddymobile/free/anteater/AnteaterClient$ProcessCallback;Ljava/lang/String;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "callback"    # Lcn/teddymobile/free/anteater/AnteaterClient$ProcessCallback;
    .param p4, "param"    # Ljava/lang/String;

    .line 500
    if-nez p2, :cond_0

    .line 501
    sget-object v0, Lcn/teddymobile/free/anteater/AnteaterClient;->TAG:Ljava/lang/String;

    const-string v1, "Process [No View]"

    invoke-static {v0, v1}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    return-void

    .line 504
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 505
    .local v0, "context":Landroid/content/Context;
    invoke-direct {p0, v0, p3}, Lcn/teddymobile/free/anteater/AnteaterClient;->ensureWorkHandler(Landroid/content/Context;Lcn/teddymobile/free/anteater/AnteaterClient$BaseCallback;)V

    .line 506
    iget-object v1, p0, Lcn/teddymobile/free/anteater/AnteaterClient;->mWorkHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 507
    new-instance v2, Lcn/teddymobile/free/anteater/AnteaterClient$10;

    invoke-direct {v2, p0, v0}, Lcn/teddymobile/free/anteater/AnteaterClient$10;-><init>(Lcn/teddymobile/free/anteater/AnteaterClient;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 524
    :cond_1
    sget-object v1, Lcn/teddymobile/free/anteater/AnteaterClient;->TAG:Ljava/lang/String;

    const-string v2, "Process : No WorkHandler"

    invoke-static {v1, v2}, Lcn/teddymobile/free/anteater/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    :goto_0
    return-void
.end method

.method public blacklist findViewInfo(Ljava/lang/String;Landroid/view/View;Lcn/teddymobile/free/anteater/AnteaterClient$ProcessCallback;Ljava/lang/String;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "callback"    # Lcn/teddymobile/free/anteater/AnteaterClient$ProcessCallback;
    .param p4, "param"    # Ljava/lang/String;

    .line 476
    if-nez p2, :cond_0

    .line 477
    sget-object v0, Lcn/teddymobile/free/anteater/AnteaterClient;->TAG:Ljava/lang/String;

    const-string v1, "Process [No View]"

    invoke-static {v0, v1}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    return-void

    .line 480
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 481
    .local v0, "context":Landroid/content/Context;
    invoke-direct {p0, v0, p3}, Lcn/teddymobile/free/anteater/AnteaterClient;->ensureWorkHandler(Landroid/content/Context;Lcn/teddymobile/free/anteater/AnteaterClient$BaseCallback;)V

    .line 482
    iget-object v1, p0, Lcn/teddymobile/free/anteater/AnteaterClient;->mWorkHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 483
    new-instance v2, Lcn/teddymobile/free/anteater/AnteaterClient$9;

    invoke-direct {v2, p0, v0, p2}, Lcn/teddymobile/free/anteater/AnteaterClient$9;-><init>(Lcn/teddymobile/free/anteater/AnteaterClient;Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 495
    :cond_1
    sget-object v1, Lcn/teddymobile/free/anteater/AnteaterClient;->TAG:Ljava/lang/String;

    const-string v2, "Process : No WorkHandler"

    invoke-static {v1, v2}, Lcn/teddymobile/free/anteater/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    :goto_0
    return-void
.end method

.method public blacklist getWorkHandler()Landroid/os/Handler;
    .locals 1

    .line 101
    iget-object v0, p0, Lcn/teddymobile/free/anteater/AnteaterClient;->mWorkHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public blacklist init()V
    .locals 0

    .line 92
    return-void
.end method

.method public blacklist loadRule(Landroid/content/Context;Ljava/lang/String;Lcn/teddymobile/free/anteater/resources/RuleResourcesClient$LoadCallback;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "callback"    # Lcn/teddymobile/free/anteater/resources/RuleResourcesClient$LoadCallback;

    .line 105
    return-void
.end method

.method public blacklist process(Ljava/lang/String;Landroid/view/View;Lcn/teddymobile/free/anteater/AnteaterClient$ProcessCallback;Ljava/lang/String;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "callback"    # Lcn/teddymobile/free/anteater/AnteaterClient$ProcessCallback;
    .param p4, "param"    # Ljava/lang/String;

    .line 110
    invoke-static {p4}, Lcom/oplus/direct/OplusDirectFindCmd;->getCmdTypeFromJSON(Ljava/lang/String;)Lcom/oplus/direct/OplusDirectFindCmds;

    move-result-object v0

    .line 111
    .local v0, "cmds":Lcom/oplus/direct/OplusDirectFindCmds;
    sget-object v1, Lcn/teddymobile/free/anteater/AnteaterClient$11;->$SwitchMap$com$oplus$direct$OplusDirectFindCmds:[I

    invoke-virtual {v0}, Lcom/oplus/direct/OplusDirectFindCmds;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-string v2, "click"

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 134
    :pswitch_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/teddymobile/free/anteater/AnteaterClient;->findReflectionInfo(Ljava/lang/String;Landroid/view/View;Lcn/teddymobile/free/anteater/AnteaterClient$ProcessCallback;Ljava/lang/String;)V

    .line 135
    goto :goto_0

    .line 131
    :pswitch_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/teddymobile/free/anteater/AnteaterClient;->findViewInfo(Ljava/lang/String;Landroid/view/View;Lcn/teddymobile/free/anteater/AnteaterClient$ProcessCallback;Ljava/lang/String;)V

    .line 132
    goto :goto_0

    .line 128
    :pswitch_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/teddymobile/free/anteater/AnteaterClient;->findActivityInfo(Ljava/lang/String;Landroid/view/View;Lcn/teddymobile/free/anteater/AnteaterClient$ProcessCallback;Ljava/lang/String;)V

    .line 129
    goto :goto_0

    .line 125
    :pswitch_3
    invoke-virtual {p0, v2, p2, p3, p4}, Lcn/teddymobile/free/anteater/AnteaterClient;->findActionLongClick(Ljava/lang/String;Landroid/view/View;Lcn/teddymobile/free/anteater/AnteaterClient$ProcessCallback;Ljava/lang/String;)V

    .line 126
    goto :goto_0

    .line 122
    :pswitch_4
    invoke-virtual {p0, v2, p2, p3, p4}, Lcn/teddymobile/free/anteater/AnteaterClient;->findActionDoubleClick(Ljava/lang/String;Landroid/view/View;Lcn/teddymobile/free/anteater/AnteaterClient$ProcessCallback;Ljava/lang/String;)V

    .line 123
    goto :goto_0

    .line 119
    :pswitch_5
    invoke-virtual {p0, v2, p2, p3, p4}, Lcn/teddymobile/free/anteater/AnteaterClient;->findActionClick(Ljava/lang/String;Landroid/view/View;Lcn/teddymobile/free/anteater/AnteaterClient$ProcessCallback;Ljava/lang/String;)V

    .line 120
    goto :goto_0

    .line 116
    :pswitch_6
    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/teddymobile/free/anteater/AnteaterClient;->findContent(Ljava/lang/String;Landroid/view/View;Lcn/teddymobile/free/anteater/AnteaterClient$ProcessCallback;Ljava/lang/String;)V

    .line 117
    goto :goto_0

    .line 113
    :pswitch_7
    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/teddymobile/free/anteater/AnteaterClient;->findFavorite(Ljava/lang/String;Landroid/view/View;Lcn/teddymobile/free/anteater/AnteaterClient$ProcessCallback;Ljava/lang/String;)V

    .line 114
    nop

    .line 139
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist release()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcn/teddymobile/free/anteater/AnteaterClient;->mWorkHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 96
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 98
    :cond_0
    return-void
.end method

.method public blacklist save(Ljava/lang/String;Landroid/view/View;Lcn/teddymobile/free/anteater/AnteaterClient$SaveCallback;)V
    .locals 9
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "callback"    # Lcn/teddymobile/free/anteater/AnteaterClient$SaveCallback;

    .line 227
    if-nez p2, :cond_0

    .line 228
    sget-object v0, Lcn/teddymobile/free/anteater/AnteaterClient;->TAG:Ljava/lang/String;

    const-string v1, "Save [No View] "

    invoke-static {v0, v1}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    return-void

    .line 231
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 232
    .local v0, "context":Landroid/content/Context;
    invoke-direct {p0, v0, p3}, Lcn/teddymobile/free/anteater/AnteaterClient;->ensureWorkHandler(Landroid/content/Context;Lcn/teddymobile/free/anteater/AnteaterClient$BaseCallback;)V

    .line 233
    iget-object v1, p0, Lcn/teddymobile/free/anteater/AnteaterClient;->mWorkHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 234
    new-instance v8, Lcn/teddymobile/free/anteater/AnteaterClient$2;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move-object v5, v0

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcn/teddymobile/free/anteater/AnteaterClient$2;-><init>(Lcn/teddymobile/free/anteater/AnteaterClient;Ljava/lang/String;Landroid/content/Context;Landroid/view/View;Lcn/teddymobile/free/anteater/AnteaterClient$SaveCallback;)V

    invoke-virtual {v1, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 282
    :cond_1
    sget-object v1, Lcn/teddymobile/free/anteater/AnteaterClient;->TAG:Ljava/lang/String;

    const-string v2, "Save : No WorkHandler"

    invoke-static {v1, v2}, Lcn/teddymobile/free/anteater/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :goto_0
    return-void
.end method
