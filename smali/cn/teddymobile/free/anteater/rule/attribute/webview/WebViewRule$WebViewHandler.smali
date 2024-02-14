.class Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;
.super Landroid/os/Handler;
.source "WebViewRule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WebViewHandler"
.end annotation


# instance fields
.field private blacklist mContent:Ljava/lang/String;

.field private blacklist mTitle:Ljava/lang/String;

.field private blacklist mUrl:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmContent(Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;->mContent:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTitle(Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;->mTitle:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmUrl(Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;->mUrl:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetContentFromAccessibilityNodeInfo(Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;->getContentFromAccessibilityNodeInfo(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetTitle(Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;Landroid/view/View;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;->getTitle(Landroid/view/View;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetUrl(Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;Landroid/view/View;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;->getUrl(Landroid/view/View;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mretrieveWebViewAccessibilityNodeInfo(Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeProvider;Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;->retrieveWebViewAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeProvider;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mretrieveWebViewByCanonicalName(Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;->retrieveWebViewByCanonicalName(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>()V
    .locals 1

    .line 139
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 140
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler-IA;)V
    .locals 0

    invoke-direct {p0}, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;-><init>()V

    return-void
.end method

.method private blacklist getContentFromAccessibilityNodeInfo(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canonicalName"    # Ljava/lang/String;

    .line 198
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 199
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v1, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler$3;

    invoke-direct {v1, p0, p1, p2, v0}, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler$3;-><init>(Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;Landroid/view/View;Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v1}, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;->post(Ljava/lang/Runnable;)Z

    .line 228
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    goto :goto_0

    .line 229
    :catch_0
    move-exception v1

    .line 231
    :goto_0
    iget-object v1, p0, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;->mContent:Ljava/lang/String;

    return-object v1
.end method

.method private blacklist getTitle(Landroid/view/View;)Ljava/lang/String;
    .locals 2
    .param p1, "webView"    # Landroid/view/View;

    .line 143
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 144
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v1, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler$1;

    invoke-direct {v1, p0, p1, v0}, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler$1;-><init>(Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;Landroid/view/View;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v1}, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;->post(Ljava/lang/Runnable;)Z

    .line 163
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    goto :goto_0

    .line 164
    :catch_0
    move-exception v1

    .line 166
    :goto_0
    iget-object v1, p0, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;->mTitle:Ljava/lang/String;

    return-object v1
.end method

.method private blacklist getUrl(Landroid/view/View;)Ljava/lang/String;
    .locals 2
    .param p1, "webView"    # Landroid/view/View;

    .line 170
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 171
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v1, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler$2;

    invoke-direct {v1, p0, p1, v0}, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler$2;-><init>(Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;Landroid/view/View;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v1}, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;->post(Ljava/lang/Runnable;)Z

    .line 190
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    goto :goto_0

    .line 191
    :catch_0
    move-exception v1

    .line 193
    :goto_0
    iget-object v1, p0, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;->mUrl:Ljava/lang/String;

    return-object v1
.end method

.method private blacklist retrieveWebViewAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeProvider;Ljava/lang/StringBuilder;)V
    .locals 5
    .param p1, "root"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "provider"    # Landroid/view/accessibility/AccessibilityNodeProvider;
    .param p3, "builder"    # Ljava/lang/StringBuilder;

    .line 259
    if-nez p1, :cond_0

    return-void

    .line 261
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 262
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 265
    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v0

    .line 266
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 267
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v2

    .line 268
    .local v2, "childNodeId":J
    nop

    .line 269
    invoke-static {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v4

    .line 268
    invoke-virtual {p2, v4}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    .line 270
    .local v4, "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-direct {p0, v4, p2, p3}, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;->retrieveWebViewAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeProvider;Ljava/lang/StringBuilder;)V

    .line 266
    .end local v2    # "childNodeId":J
    .end local v4    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 272
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private blacklist retrieveWebViewByCanonicalName(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canonicalName"    # Ljava/lang/String;

    .line 235
    if-eqz p1, :cond_2

    .line 236
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "canonicalCurrent":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    return-object p1

    .line 242
    :cond_0
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 243
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    .line 244
    .local v1, "viewGroup":Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 245
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lcn/teddymobile/free/anteater/rule/attribute/webview/WebViewRule$WebViewHandler;->retrieveWebViewByCanonicalName(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 246
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 247
    return-object v3

    .line 244
    .end local v3    # "v":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 253
    .end local v0    # "canonicalCurrent":Ljava/lang/String;
    .end local v1    # "viewGroup":Landroid/view/ViewGroup;
    .end local v2    # "i":I
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method
