.class public Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule;
.super Ljava/lang/Object;
.source "WebViewRule.java"

# interfaces
.implements Lcn/teddymobile/free/anteater/rule/attribute/AttributeRule;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;
    }
.end annotation


# static fields
.field private static final blacklist JSON_FIELD_CONTENT:Ljava/lang/String; = "content"

.field private static final blacklist JSON_FIELD_EXTRACT_CONTENT:Ljava/lang/String; = "extract_content"

.field private static final blacklist JSON_FIELD_EXTRACT_CONTENT_CANONICAL_NAME:Ljava/lang/String; = "extract_content_canonical"

.field private static final blacklist JSON_FIELD_EXTRACT_TITLE:Ljava/lang/String; = "extract_title"

.field private static final blacklist JSON_FIELD_EXTRACT_URL:Ljava/lang/String; = "extract_url"

.field private static final blacklist JSON_FIELD_TITLE:Ljava/lang/String; = "title"

.field private static final blacklist JSON_FIELD_URL:Ljava/lang/String; = "url"

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mExtractContent:Z

.field private blacklist mExtractContentCanonicalName:Ljava/lang/String;

.field private blacklist mExtractTitle:Z

.field private blacklist mExtractUrl:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule;->mExtractTitle:Z

    .line 55
    iput-boolean v0, p0, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule;->mExtractUrl:Z

    .line 56
    iput-boolean v0, p0, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule;->mExtractContent:Z

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule;->mExtractContentCanonicalName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist extractAttribute(Landroid/view/View;)Lorg/json/JSONObject;
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .line 82
    const/4 v0, 0x0

    .line 84
    .local v0, "result":Lorg/json/JSONObject;
    invoke-static {p1}, Lcn/teddymobile/free/anteater/rule/utils/ViewHierarchyUtils;->getDecorView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 85
    .local v1, "decorView":Landroid/view/View;
    if-eqz v1, :cond_5

    .line 86
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    move-object v0, v2

    .line 88
    new-instance v2, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;-><init>(Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler-IA;)V

    .line 89
    .local v2, "handler":Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;
    invoke-static {v1}, Lcn/teddymobile/free/anteater/rule/utils/ViewHierarchyUtils;->retrieveWebView(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    .line 90
    .local v3, "webView":Landroid/view/View;
    if-eqz v3, :cond_2

    .line 92
    :try_start_0
    iget-boolean v4, p0, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule;->mExtractTitle:Z

    if-eqz v4, :cond_0

    .line 93
    invoke-static {v2, v3}, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;->-$$Nest$mgetTitle(Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    .line 94
    .local v4, "title":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 95
    const-string v5, "title"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    .end local v4    # "title":Ljava/lang/String;
    :cond_0
    iget-boolean v4, p0, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule;->mExtractUrl:Z

    if-eqz v4, :cond_1

    .line 99
    invoke-static {v2, v3}, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;->-$$Nest$mgetUrl(Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    .line 100
    .local v4, "url":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 101
    const-string v5, "url"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 104
    .end local v4    # "url":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 105
    :cond_1
    :goto_0
    goto :goto_1

    .line 107
    :cond_2
    sget-object v4, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule;->TAG:Ljava/lang/String;

    const-string v5, "WebView is null."

    invoke-static {v4, v5}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :goto_1
    iget-boolean v4, p0, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule;->mExtractContent:Z

    if-eqz v4, :cond_4

    .line 112
    :try_start_1
    iget-object v4, p0, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule;->mExtractContentCanonicalName:Ljava/lang/String;

    invoke-static {v2, v1, v4}, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;->-$$Nest$mgetContentFromAccessibilityNodeInfo(Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 114
    .local v4, "content":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 115
    const-string v5, "content"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 119
    .end local v4    # "content":Ljava/lang/String;
    :cond_3
    goto :goto_2

    .line 117
    :catch_1
    move-exception v4

    .line 118
    .local v4, "ignored":Lorg/json/JSONException;
    sget-object v5, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule;->TAG:Ljava/lang/String;

    const-string v6, "WebView rule extract content JSONException."

    invoke-static {v5, v6}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .end local v2    # "handler":Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;
    .end local v3    # "webView":Landroid/view/View;
    .end local v4    # "ignored":Lorg/json/JSONException;
    :cond_4
    :goto_2
    goto :goto_3

    .line 122
    :cond_5
    sget-object v2, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule;->TAG:Ljava/lang/String;

    const-string v3, "DecorView is null."

    invoke-static {v2, v3}, Lcn/teddymobile/free/anteater/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :goto_3
    sget-object v2, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/teddymobile/free/anteater/logger/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-object v0
.end method

.method public blacklist loadFromJSON(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "ruleObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 74
    const-string v0, "extract_title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule;->mExtractTitle:Z

    .line 75
    const-string v0, "extract_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule;->mExtractUrl:Z

    .line 76
    const-string v0, "extract_content"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule;->mExtractContent:Z

    .line 77
    const-string v0, "extract_content_canonical"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule;->mExtractContentCanonicalName:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[WebViewRule] ExtractTitle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule;->mExtractTitle:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nExtractUrl = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule;->mExtractUrl:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nExtractContent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule;->mExtractContent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
