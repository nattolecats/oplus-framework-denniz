.class public Lcn/teddymobile/free/anteater/Anteater;
.super Ljava/lang/Object;
.source "Anteater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/teddymobile/free/anteater/Anteater$QueryData;,
        Lcn/teddymobile/free/anteater/Anteater$ResultData;,
        Lcn/teddymobile/free/anteater/Anteater$ErrorCode;,
        Lcn/teddymobile/free/anteater/Anteater$ProcessCallback;,
        Lcn/teddymobile/free/anteater/Anteater$SaveCallback;,
        Lcn/teddymobile/free/anteater/Anteater$CheckCallback;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_CLICK:Ljava/lang/String; = "click"

.field public static final blacklist ACTION_DISPLAY:Ljava/lang/String; = "display"

.field private static final blacklist EMPTY:Ljava/lang/String; = ""

.field private static final blacklist JSON_FIELD_PARSER:Ljava/lang/String; = "parser"

.field private static final blacklist JSON_FIELD_RESULT:Ljava/lang/String; = "result"

.field private static final blacklist TAG:Ljava/lang/String;

.field private static volatile blacklist sInstance:Lcn/teddymobile/free/anteater/Anteater;


# instance fields
.field private blacklist mResources:Lcn/teddymobile/free/anteater/resources/RuleResources;

.field private blacklist mWorkHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmResources(Lcn/teddymobile/free/anteater/Anteater;)Lcn/teddymobile/free/anteater/resources/RuleResources;
    .locals 0

    iget-object p0, p0, Lcn/teddymobile/free/anteater/Anteater;->mResources:Lcn/teddymobile/free/anteater/resources/RuleResources;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcopyRuleList(Lcn/teddymobile/free/anteater/Anteater;)Ljava/util/ArrayList;
    .locals 0

    invoke-direct {p0}, Lcn/teddymobile/free/anteater/Anteater;->copyRuleList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mextractTitle(Lcn/teddymobile/free/anteater/Anteater;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcn/teddymobile/free/anteater/Anteater;->extractTitle(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mextractUrl(Lcn/teddymobile/free/anteater/Anteater;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcn/teddymobile/free/anteater/Anteater;->extractUrl(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mprocessFailed(Lcn/teddymobile/free/anteater/Anteater;Landroid/content/Context;Lcn/teddymobile/free/anteater/Anteater$ProcessCallback;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/teddymobile/free/anteater/Anteater;->processFailed(Landroid/content/Context;Lcn/teddymobile/free/anteater/Anteater$ProcessCallback;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mprocessSuccess(Lcn/teddymobile/free/anteater/Anteater;Landroid/content/Context;Lcn/teddymobile/free/anteater/Anteater$ProcessCallback;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/teddymobile/free/anteater/Anteater;->processSuccess(Landroid/content/Context;Lcn/teddymobile/free/anteater/Anteater$ProcessCallback;Ljava/util/ArrayList;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msaveFailed(Lcn/teddymobile/free/anteater/Anteater;Landroid/content/Context;Lcn/teddymobile/free/anteater/Anteater$SaveCallback;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/teddymobile/free/anteater/Anteater;->saveFailed(Landroid/content/Context;Lcn/teddymobile/free/anteater/Anteater$SaveCallback;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msaveResult(Lcn/teddymobile/free/anteater/Anteater;Landroid/content/Context;Lcn/teddymobile/free/anteater/rule/Rule;Lorg/json/JSONObject;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/teddymobile/free/anteater/Anteater;->saveResult(Landroid/content/Context;Lcn/teddymobile/free/anteater/rule/Rule;Lorg/json/JSONObject;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msaveSuccess(Lcn/teddymobile/free/anteater/Anteater;Landroid/content/Context;Lcn/teddymobile/free/anteater/Anteater$SaveCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/teddymobile/free/anteater/Anteater;->saveSuccess(Landroid/content/Context;Lcn/teddymobile/free/anteater/Anteater$SaveCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/teddymobile/free/anteater/Anteater;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 29
    const-class v0, Lcn/teddymobile/free/anteater/Anteater;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/teddymobile/free/anteater/Anteater;->TAG:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcn/teddymobile/free/anteater/Anteater;->sInstance:Lcn/teddymobile/free/anteater/Anteater;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/teddymobile/free/anteater/Anteater;->mResources:Lcn/teddymobile/free/anteater/resources/RuleResources;

    .line 53
    iput-object v0, p0, Lcn/teddymobile/free/anteater/Anteater;->mWorkHandler:Landroid/os/Handler;

    .line 73
    sget-object v0, Lcn/teddymobile/free/anteater/Anteater;->TAG:Ljava/lang/String;

    const-string v1, "Anteater <init>()"

    invoke-static {v0, v1}, Lcn/teddymobile/free/anteater/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method private blacklist copyRuleList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcn/teddymobile/free/anteater/rule/Rule;",
            ">;"
        }
    .end annotation

    .line 306
    iget-object v0, p0, Lcn/teddymobile/free/anteater/Anteater;->mResources:Lcn/teddymobile/free/anteater/resources/RuleResources;

    invoke-virtual {v0}, Lcn/teddymobile/free/anteater/resources/RuleResources;->getRuleList()Ljava/util/ArrayList;

    move-result-object v0

    .line 307
    .local v0, "ruleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/teddymobile/free/anteater/rule/Rule;>;"
    monitor-enter v0

    .line 308
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 309
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist extractTitle(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 5
    .param p1, "resultObject"    # Lorg/json/JSONObject;

    .line 326
    const-string v0, "title"

    const/4 v1, 0x0

    .line 328
    .local v1, "data":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 333
    :goto_0
    goto :goto_1

    .line 331
    :catch_0
    move-exception v2

    .line 332
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcn/teddymobile/free/anteater/Anteater;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcn/teddymobile/free/anteater/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 329
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 330
    .local v2, "e":Lorg/json/JSONException;
    sget-object v3, Lcn/teddymobile/free/anteater/Anteater;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "e":Lorg/json/JSONException;
    goto :goto_0

    .line 334
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 335
    sget-object v2, Lcn/teddymobile/free/anteater/Anteater;->TAG:Ljava/lang/String;

    const-string v3, "loadFromWindowList-->title"

    invoke-static {v2, v3}, Lcn/teddymobile/free/anteater/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    invoke-direct {p0, p1, v0}, Lcn/teddymobile/free/anteater/Anteater;->extractValueFromWindowList(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 338
    :cond_0
    invoke-direct {p0, v1}, Lcn/teddymobile/free/anteater/Anteater;->formatText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 339
    .end local v1    # "data":Ljava/lang/String;
    .local v0, "data":Ljava/lang/String;
    return-object v0
.end method

.method private blacklist extractUrl(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 5
    .param p1, "resultObject"    # Lorg/json/JSONObject;

    .line 343
    const-string v0, "url"

    const/4 v1, 0x0

    .line 345
    .local v1, "data":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 350
    :goto_0
    goto :goto_1

    .line 348
    :catch_0
    move-exception v2

    .line 349
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcn/teddymobile/free/anteater/Anteater;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcn/teddymobile/free/anteater/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 346
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 347
    .local v2, "e":Lorg/json/JSONException;
    sget-object v3, Lcn/teddymobile/free/anteater/Anteater;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "e":Lorg/json/JSONException;
    goto :goto_0

    .line 351
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 352
    sget-object v2, Lcn/teddymobile/free/anteater/Anteater;->TAG:Ljava/lang/String;

    const-string v3, "loadFromWindowList-->url"

    invoke-static {v2, v3}, Lcn/teddymobile/free/anteater/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-direct {p0, p1, v0}, Lcn/teddymobile/free/anteater/Anteater;->extractValueFromWindowList(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 355
    :cond_0
    invoke-direct {p0, v1}, Lcn/teddymobile/free/anteater/Anteater;->formatText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 356
    .end local v1    # "data":Ljava/lang/String;
    .local v0, "data":Ljava/lang/String;
    return-object v0
.end method

.method private blacklist extractValueFromWindowList(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "resultObject"    # Lorg/json/JSONObject;
    .param p2, "key"    # Ljava/lang/String;

    .line 360
    const/4 v0, 0x0

    .line 362
    .local v0, "jsonArray":Lorg/json/JSONArray;
    :try_start_0
    const-string v1, "window_list"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 365
    goto :goto_0

    .line 363
    :catch_0
    move-exception v1

    .line 364
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v2, Lcn/teddymobile/free/anteater/Anteater;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 366
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    if-eqz v0, :cond_1

    .line 367
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_1

    .line 369
    :try_start_1
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 370
    .local v2, "object":Lorg/json/JSONObject;
    invoke-virtual {v2, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 371
    .local v3, "result":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 372
    sget-object v4, Lcn/teddymobile/free/anteater/Anteater;->TAG:Ljava/lang/String;

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

    .line 373
    return-object v3

    .line 377
    .end local v2    # "object":Lorg/json/JSONObject;
    .end local v3    # "result":Ljava/lang/String;
    :cond_0
    goto :goto_2

    .line 375
    :catch_1
    move-exception v2

    .line 367
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 380
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist formatText(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 313
    const-string v0, ""

    if-nez p1, :cond_0

    .line 314
    return-object v0

    .line 316
    :cond_0
    const-string v1, "true"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 317
    return-object v0

    .line 319
    :cond_1
    const-string v1, "false"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 320
    return-object v0

    .line 322
    :cond_2
    return-object p1
.end method

.method public static blacklist getInstance()Lcn/teddymobile/free/anteater/Anteater;
    .locals 2

    .line 59
    sget-object v0, Lcn/teddymobile/free/anteater/Anteater;->sInstance:Lcn/teddymobile/free/anteater/Anteater;

    if-nez v0, :cond_1

    .line 60
    const-class v0, Lcn/teddymobile/free/anteater/Anteater;

    monitor-enter v0

    .line 61
    :try_start_0
    sget-object v1, Lcn/teddymobile/free/anteater/Anteater;->sInstance:Lcn/teddymobile/free/anteater/Anteater;

    if-nez v1, :cond_0

    .line 62
    new-instance v1, Lcn/teddymobile/free/anteater/Anteater;

    invoke-direct {v1}, Lcn/teddymobile/free/anteater/Anteater;-><init>()V

    sput-object v1, Lcn/teddymobile/free/anteater/Anteater;->sInstance:Lcn/teddymobile/free/anteater/Anteater;

    .line 64
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 66
    :cond_1
    :goto_0
    sget-object v0, Lcn/teddymobile/free/anteater/Anteater;->sInstance:Lcn/teddymobile/free/anteater/Anteater;

    return-object v0
.end method

.method private blacklist processFailed(Landroid/content/Context;Lcn/teddymobile/free/anteater/Anteater$ProcessCallback;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcn/teddymobile/free/anteater/Anteater$ProcessCallback;
    .param p3, "ruleSize"    # I

    .line 392
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 393
    .local v0, "packageName":Ljava/lang/String;
    sget-object v1, Lcn/teddymobile/free/anteater/Anteater;->TAG:Ljava/lang/String;

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

    .line 394
    new-instance v1, Lcn/teddymobile/free/anteater/Anteater$ResultData;

    invoke-direct {v1}, Lcn/teddymobile/free/anteater/Anteater$ResultData;-><init>()V

    .line 395
    .local v1, "result":Lcn/teddymobile/free/anteater/Anteater$ResultData;
    if-lez p3, :cond_0

    .line 396
    sget-object v2, Lcn/teddymobile/free/anteater/Anteater$ErrorCode;->NOT_FOUND:Lcn/teddymobile/free/anteater/Anteater$ErrorCode;

    invoke-virtual {v1, v2}, Lcn/teddymobile/free/anteater/Anteater$ResultData;->setError(Lcn/teddymobile/free/anteater/Anteater$ErrorCode;)V

    goto :goto_0

    .line 398
    :cond_0
    sget-object v2, Lcn/teddymobile/free/anteater/Anteater$ErrorCode;->UNSUPPORT:Lcn/teddymobile/free/anteater/Anteater$ErrorCode;

    invoke-virtual {v1, v2}, Lcn/teddymobile/free/anteater/Anteater$ResultData;->setError(Lcn/teddymobile/free/anteater/Anteater$ErrorCode;)V

    .line 400
    :goto_0
    invoke-interface {p2, p1, v1}, Lcn/teddymobile/free/anteater/Anteater$ProcessCallback;->onProcessResult(Landroid/content/Context;Lcn/teddymobile/free/anteater/Anteater$ResultData;)V

    .line 401
    return-void
.end method

.method private blacklist processSuccess(Landroid/content/Context;Lcn/teddymobile/free/anteater/Anteater$ProcessCallback;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcn/teddymobile/free/anteater/Anteater$ProcessCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcn/teddymobile/free/anteater/Anteater$ProcessCallback;",
            "Ljava/util/ArrayList<",
            "Lcn/teddymobile/free/anteater/Anteater$QueryData;",
            ">;)V"
        }
    .end annotation

    .line 384
    .local p3, "queryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/teddymobile/free/anteater/Anteater$QueryData;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, "packageName":Ljava/lang/String;
    sget-object v1, Lcn/teddymobile/free/anteater/Anteater;->TAG:Ljava/lang/String;

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

    .line 386
    new-instance v1, Lcn/teddymobile/free/anteater/Anteater$ResultData;

    invoke-direct {v1}, Lcn/teddymobile/free/anteater/Anteater$ResultData;-><init>()V

    .line 387
    .local v1, "result":Lcn/teddymobile/free/anteater/Anteater$ResultData;
    invoke-virtual {v1, p3}, Lcn/teddymobile/free/anteater/Anteater$ResultData;->setQueryList(Ljava/util/ArrayList;)V

    .line 388
    invoke-interface {p2, p1, v1}, Lcn/teddymobile/free/anteater/Anteater$ProcessCallback;->onProcessResult(Landroid/content/Context;Lcn/teddymobile/free/anteater/Anteater$ResultData;)V

    .line 389
    return-void
.end method

.method private blacklist saveFailed(Landroid/content/Context;Lcn/teddymobile/free/anteater/Anteater$SaveCallback;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcn/teddymobile/free/anteater/Anteater$SaveCallback;
    .param p3, "ruleSize"    # I

    .line 429
    new-instance v0, Lcn/teddymobile/free/anteater/Anteater$ResultData;

    invoke-direct {v0}, Lcn/teddymobile/free/anteater/Anteater$ResultData;-><init>()V

    .line 430
    .local v0, "result":Lcn/teddymobile/free/anteater/Anteater$ResultData;
    if-lez p3, :cond_0

    .line 431
    sget-object v1, Lcn/teddymobile/free/anteater/Anteater$ErrorCode;->SAVE_FAILED:Lcn/teddymobile/free/anteater/Anteater$ErrorCode;

    invoke-virtual {v0, v1}, Lcn/teddymobile/free/anteater/Anteater$ResultData;->setError(Lcn/teddymobile/free/anteater/Anteater$ErrorCode;)V

    goto :goto_0

    .line 433
    :cond_0
    sget-object v1, Lcn/teddymobile/free/anteater/Anteater$ErrorCode;->UNSUPPORT:Lcn/teddymobile/free/anteater/Anteater$ErrorCode;

    invoke-virtual {v0, v1}, Lcn/teddymobile/free/anteater/Anteater$ResultData;->setError(Lcn/teddymobile/free/anteater/Anteater$ErrorCode;)V

    .line 435
    :goto_0
    invoke-interface {p2, p1, v0}, Lcn/teddymobile/free/anteater/Anteater$SaveCallback;->onSaveResult(Landroid/content/Context;Lcn/teddymobile/free/anteater/Anteater$ResultData;)V

    .line 436
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

    .line 404
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 405
    .local v0, "object":Lorg/json/JSONObject;
    const-string v1, "result"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 406
    invoke-virtual {p2}, Lcn/teddymobile/free/anteater/rule/Rule;->getParser()Ljava/lang/String;

    move-result-object v2

    const-string v3, "parser"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 407
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    .line 408
    const-string v3, "content"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 409
    const-string v3, "cn.teddymobile.free.anteater.den.provider"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 410
    invoke-virtual {v2, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 411
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 412
    .local v1, "uri":Landroid/net/Uri;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 413
    .local v2, "values":Landroid/content/ContentValues;
    invoke-virtual {p2}, Lcn/teddymobile/free/anteater/rule/Rule;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "package_name"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    invoke-virtual {p2}, Lcn/teddymobile/free/anteater/rule/Rule;->getVersion()Ljava/lang/String;

    move-result-object v3

    const-string v4, "version"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    invoke-virtual {p2}, Lcn/teddymobile/free/anteater/rule/Rule;->getScene()Ljava/lang/String;

    move-result-object v3

    const-string v4, "scene"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "data"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 418
    .local v3, "insertUri":Landroid/net/Uri;
    sget-object v4, Lcn/teddymobile/free/anteater/Anteater;->TAG:Ljava/lang/String;

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

    .line 419
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

    .line 420
    if-eqz v3, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return v4
.end method

.method private blacklist saveSuccess(Landroid/content/Context;Lcn/teddymobile/free/anteater/Anteater$SaveCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcn/teddymobile/free/anteater/Anteater$SaveCallback;

    .line 424
    new-instance v0, Lcn/teddymobile/free/anteater/Anteater$ResultData;

    invoke-direct {v0}, Lcn/teddymobile/free/anteater/Anteater$ResultData;-><init>()V

    .line 425
    .local v0, "result":Lcn/teddymobile/free/anteater/Anteater$ResultData;
    invoke-interface {p2, p1, v0}, Lcn/teddymobile/free/anteater/Anteater$SaveCallback;->onSaveResult(Landroid/content/Context;Lcn/teddymobile/free/anteater/Anteater$ResultData;)V

    .line 426
    return-void
.end method


# virtual methods
.method public blacklist check(Landroid/view/View;Lcn/teddymobile/free/anteater/Anteater$CheckCallback;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "checkCallback"    # Lcn/teddymobile/free/anteater/Anteater$CheckCallback;

    .line 264
    iget-object v0, p0, Lcn/teddymobile/free/anteater/Anteater;->mWorkHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 265
    new-instance v1, Lcn/teddymobile/free/anteater/Anteater$3;

    invoke-direct {v1, p0, p1, p2}, Lcn/teddymobile/free/anteater/Anteater$3;-><init>(Lcn/teddymobile/free/anteater/Anteater;Landroid/view/View;Lcn/teddymobile/free/anteater/Anteater$CheckCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 298
    :cond_0
    sget-object v0, Lcn/teddymobile/free/anteater/Anteater;->TAG:Ljava/lang/String;

    const-string v1, "Check : No WorkHandler"

    invoke-static {v0, v1}, Lcn/teddymobile/free/anteater/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    :goto_0
    return-void
.end method

.method public blacklist getWorkHandler()Landroid/os/Handler;
    .locals 1

    .line 104
    iget-object v0, p0, Lcn/teddymobile/free/anteater/Anteater;->mWorkHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public blacklist init(Landroid/content/Context;Lcn/teddymobile/free/anteater/resources/RuleResources$InitCallback;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcn/teddymobile/free/anteater/resources/RuleResources$InitCallback;

    .line 81
    :try_start_0
    iget-object v0, p0, Lcn/teddymobile/free/anteater/Anteater;->mWorkHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 82
    const-string v0, "anteater"

    const/4 v1, 0x1

    invoke-interface {p2, p1, v0, v1}, Lcn/teddymobile/free/anteater/resources/RuleResources$InitCallback;->createWorkHandler(Landroid/content/Context;Ljava/lang/String;I)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcn/teddymobile/free/anteater/Anteater;->mWorkHandler:Landroid/os/Handler;

    .line 84
    :cond_0
    iget-object v0, p0, Lcn/teddymobile/free/anteater/Anteater;->mResources:Lcn/teddymobile/free/anteater/resources/RuleResources;

    if-nez v0, :cond_1

    .line 85
    new-instance v0, Lcn/teddymobile/free/anteater/resources/RuleResources;

    iget-object v1, p0, Lcn/teddymobile/free/anteater/Anteater;->mWorkHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcn/teddymobile/free/anteater/resources/RuleResources;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/teddymobile/free/anteater/Anteater;->mResources:Lcn/teddymobile/free/anteater/resources/RuleResources;

    .line 87
    :cond_1
    iget-object v0, p0, Lcn/teddymobile/free/anteater/Anteater;->mResources:Lcn/teddymobile/free/anteater/resources/RuleResources;

    invoke-virtual {v0, p1, p2}, Lcn/teddymobile/free/anteater/resources/RuleResources;->init(Landroid/content/Context;Lcn/teddymobile/free/anteater/resources/RuleResources$InitCallback;)V

    .line 88
    iget-object v0, p0, Lcn/teddymobile/free/anteater/Anteater;->mResources:Lcn/teddymobile/free/anteater/resources/RuleResources;

    invoke-virtual {v0, p1}, Lcn/teddymobile/free/anteater/resources/RuleResources;->registerObserver(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcn/teddymobile/free/anteater/Anteater;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/teddymobile/free/anteater/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public blacklist process(Ljava/lang/String;Landroid/view/View;Lcn/teddymobile/free/anteater/Anteater$ProcessCallback;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "callback"    # Lcn/teddymobile/free/anteater/Anteater$ProcessCallback;

    .line 108
    iget-object v0, p0, Lcn/teddymobile/free/anteater/Anteater;->mWorkHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 109
    new-instance v1, Lcn/teddymobile/free/anteater/Anteater$1;

    invoke-direct {v1, p0, p2, p1, p3}, Lcn/teddymobile/free/anteater/Anteater$1;-><init>(Lcn/teddymobile/free/anteater/Anteater;Landroid/view/View;Ljava/lang/String;Lcn/teddymobile/free/anteater/Anteater$ProcessCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 186
    :cond_0
    sget-object v0, Lcn/teddymobile/free/anteater/Anteater;->TAG:Ljava/lang/String;

    const-string v1, "Process : No WorkHandler"

    invoke-static {v0, v1}, Lcn/teddymobile/free/anteater/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :goto_0
    return-void
.end method

.method public blacklist release()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcn/teddymobile/free/anteater/Anteater;->mWorkHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 96
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 98
    :cond_0
    iget-object v0, p0, Lcn/teddymobile/free/anteater/Anteater;->mResources:Lcn/teddymobile/free/anteater/resources/RuleResources;

    if-eqz v0, :cond_1

    .line 99
    invoke-virtual {v0}, Lcn/teddymobile/free/anteater/resources/RuleResources;->unregisterObserver()V

    .line 101
    :cond_1
    return-void
.end method

.method public blacklist save(Ljava/lang/String;Landroid/view/View;Lcn/teddymobile/free/anteater/Anteater$SaveCallback;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "callback"    # Lcn/teddymobile/free/anteater/Anteater$SaveCallback;

    .line 191
    iget-object v0, p0, Lcn/teddymobile/free/anteater/Anteater;->mWorkHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 192
    new-instance v1, Lcn/teddymobile/free/anteater/Anteater$2;

    invoke-direct {v1, p0, p2, p1, p3}, Lcn/teddymobile/free/anteater/Anteater$2;-><init>(Lcn/teddymobile/free/anteater/Anteater;Landroid/view/View;Ljava/lang/String;Lcn/teddymobile/free/anteater/Anteater$SaveCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 259
    :cond_0
    sget-object v0, Lcn/teddymobile/free/anteater/Anteater;->TAG:Ljava/lang/String;

    const-string v1, "Save : No WorkHandler"

    invoke-static {v0, v1}, Lcn/teddymobile/free/anteater/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    :goto_0
    return-void
.end method
