.class Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler$3;
.super Ljava/lang/Object;
.source "WebViewRule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;->getContentFromAccessibilityNodeInfo(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;

.field final synthetic blacklist val$canonicalName:Ljava/lang/String;

.field final synthetic blacklist val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic blacklist val$view:Landroid/view/View;


# direct methods
.method constructor blacklist <init>(Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;Landroid/view/View;Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p1, "this$0"    # Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;

    .line 199
    iput-object p1, p0, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler$3;->this$0:Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;

    iput-object p2, p0, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler$3;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler$3;->val$canonicalName:Ljava/lang/String;

    iput-object p4, p0, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler$3;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 6

    .line 203
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler$3;->this$0:Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;

    iget-object v2, p0, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler$3;->val$view:Landroid/view/View;

    iget-object v3, p0, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler$3;->val$canonicalName:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;->-$$Nest$mretrieveWebViewByCanonicalName(Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 204
    .local v1, "webView":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 205
    invoke-virtual {v1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v2

    .line 206
    .local v2, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v2, :cond_0

    .line 207
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .local v3, "builder":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler$3;->this$0:Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;

    invoke-virtual {v1}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    invoke-static {v4, v5, v2, v3}, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;->-$$Nest$mretrieveWebViewAccessibilityNodeInfo(Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeProvider;Ljava/lang/StringBuilder;)V

    .line 209
    iget-object v4, p0, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler$3;->this$0:Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;->-$$Nest$fputmContent(Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;Ljava/lang/String;)V

    .line 210
    .end local v3    # "builder":Ljava/lang/StringBuilder;
    goto :goto_0

    .line 211
    :cond_0
    iget-object v3, p0, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler$3;->this$0:Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;

    invoke-static {v3, v0}, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;->-$$Nest$fputmContent(Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;Ljava/lang/String;)V

    .line 213
    .end local v2    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :goto_0
    goto :goto_1

    .line 214
    :cond_1
    iget-object v2, p0, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler$3;->this$0:Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;

    invoke-static {v2, v0}, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;->-$$Nest$fputmContent(Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;Ljava/lang/String;)V

    .line 217
    :goto_1
    iget-object v2, p0, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler$3;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    return-void

    .line 219
    .end local v1    # "webView":Landroid/view/View;
    :catch_0
    move-exception v1

    .line 220
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 221
    iget-object v2, p0, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler$3;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 223
    .end local v1    # "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler$3;->this$0:Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;

    invoke-static {v1, v0}, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;->-$$Nest$fputmContent(Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler$3;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 225
    return-void
.end method
