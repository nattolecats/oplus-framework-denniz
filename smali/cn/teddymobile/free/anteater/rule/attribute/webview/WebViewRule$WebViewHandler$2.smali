.class Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler$2;
.super Ljava/lang/Object;
.source "WebViewRule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;->getUrl(Landroid/view/View;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;

.field final synthetic blacklist val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic blacklist val$webView:Landroid/view/View;


# direct methods
.method constructor blacklist <init>(Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;Landroid/view/View;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p1, "this$0"    # Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;

    .line 171
    iput-object p1, p0, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler$2;->this$0:Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;

    iput-object p2, p0, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler$2;->val$webView:Landroid/view/View;

    iput-object p3, p0, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 4

    .line 175
    :try_start_0
    iget-object v0, p0, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler$2;->val$webView:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getUrl"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 176
    .local v0, "method":Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 177
    iget-object v1, p0, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler$2;->val$webView:Landroid/view/View;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 178
    .local v1, "result":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 179
    iget-object v2, p0, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler$2;->this$0:Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3}, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;->-$$Nest$fputmUrl(Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;Ljava/lang/String;)V

    .line 180
    iget-object v2, p0, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    return-void

    .line 184
    .end local v0    # "method":Ljava/lang/reflect/Method;
    .end local v1    # "result":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    .line 185
    :goto_0
    iget-object v0, p0, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler$2;->this$0:Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;->-$$Nest$fputmUrl(Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 187
    return-void
.end method
