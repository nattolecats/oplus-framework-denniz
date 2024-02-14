.class public Lcn/teddymobile/free/anteater/rule/utils/ViewHierarchyUtils;
.super Ljava/lang/Object;
.source "ViewHierarchyUtils.java"


# static fields
.field public static blacklist includeAccessibilityNodeInfoWithClassList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static blacklist includeAccessibilityNodeInfoWithViewIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sThirdPartyWebViewClassNames:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 6

    .line 29
    const-string v0, "com.uc.webview.export.WebView"

    const-string v1, "com.tencent.smtt.webkit.WebView"

    const-string v2, "com.tencent.smtt.sdk.WebView"

    const-string v3, "sogou.webkit.WebView"

    const-string v4, "com.baidu.webkit.sdk.WebView"

    const-string v5, "com.oplus.webview.KKWebview"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/teddymobile/free/anteater/rule/utils/ViewHierarchyUtils;->sThirdPartyWebViewClassNames:[Ljava/lang/String;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/teddymobile/free/anteater/rule/utils/ViewHierarchyUtils;->includeAccessibilityNodeInfoWithClassList:Ljava/util/List;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/teddymobile/free/anteater/rule/utils/ViewHierarchyUtils;->includeAccessibilityNodeInfoWithViewIdList:Ljava/util/List;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist addIncludeAccessibilityNodeInfoWithClassList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 205
    .local p0, "include":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 206
    .local v1, "s":Ljava/lang/String;
    sget-object v2, Lcn/teddymobile/free/anteater/rule/utils/ViewHierarchyUtils;->includeAccessibilityNodeInfoWithClassList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 207
    sget-object v2, Lcn/teddymobile/free/anteater/rule/utils/ViewHierarchyUtils;->includeAccessibilityNodeInfoWithClassList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    .end local v1    # "s":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 210
    :cond_1
    return-void
.end method

.method public static blacklist addIncludeAccessibilityNodeInfoWithViewIdList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 213
    .local p0, "include":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 214
    .local v1, "s":Ljava/lang/String;
    sget-object v2, Lcn/teddymobile/free/anteater/rule/utils/ViewHierarchyUtils;->includeAccessibilityNodeInfoWithViewIdList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 215
    sget-object v2, Lcn/teddymobile/free/anteater/rule/utils/ViewHierarchyUtils;->includeAccessibilityNodeInfoWithViewIdList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    .end local v1    # "s":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 218
    :cond_1
    return-void
.end method

.method private static blacklist checkClass(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "className"    # Ljava/lang/String;

    .line 118
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .local v0, "clazz":Ljava/lang/Class;
    :goto_0
    if-eqz v0, :cond_1

    .line 119
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    const/4 v1, 0x1

    return v1

    .line 118
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 123
    .end local v0    # "clazz":Ljava/lang/Class;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist getActivityContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 42
    :goto_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_2

    .line 43
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 44
    return-object p0

    .line 46
    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/content/ContextWrapper;

    .line 47
    .local v0, "wrapper":Landroid/content/ContextWrapper;
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 48
    .local v1, "base":Landroid/content/Context;
    if-ne v1, p0, :cond_1

    .line 49
    goto :goto_1

    .line 51
    :cond_1
    move-object p0, v1

    .line 52
    .end local v0    # "wrapper":Landroid/content/ContextWrapper;
    .end local v1    # "base":Landroid/content/Context;
    goto :goto_0

    .line 53
    :cond_2
    :goto_1
    return-object p0
.end method

.method public static blacklist getDecorView(Landroid/view/View;)Landroid/view/View;
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .line 66
    if-eqz p0, :cond_3

    .line 67
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 68
    .local v0, "context":Landroid/content/Context;
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 69
    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    .line 70
    .local v1, "activity":Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 71
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    return-object v2

    .line 73
    .end local v1    # "activity":Landroid/app/Activity;
    :cond_0
    goto :goto_1

    .line 75
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DecorView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 76
    return-object p0

    .line 78
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_3

    .line 79
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    move-object p0, v1

    check-cast p0, Landroid/view/View;

    goto :goto_0

    .line 87
    .end local v0    # "context":Landroid/content/Context;
    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getIntent(Landroid/view/View;)Landroid/content/Intent;
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/teddymobile/free/anteater/rule/utils/ViewHierarchyUtils;->getActivityContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 58
    .local v0, "context":Landroid/content/Context;
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 59
    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    .line 60
    .local v1, "activity":Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    return-object v2

    .line 62
    .end local v1    # "activity":Landroid/app/Activity;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist includeAccessibilityNodeInfoWithClass(Ljava/lang/String;Ljava/util/List;)Z
    .locals 4
    .param p0, "canonicalName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 181
    .local p1, "includeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 183
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 184
    .local v2, "canonical":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 185
    const/4 v0, 0x1

    return v0

    .line 187
    .end local v2    # "canonical":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 189
    :cond_2
    return v1
.end method

.method public static blacklist includeAccessibilityNodeInfoWithViewId(Ljava/lang/String;Ljava/util/List;)Z
    .locals 4
    .param p0, "idName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 193
    .local p1, "includeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 195
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 196
    .local v2, "id":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 197
    const/4 v0, 0x1

    return v0

    .line 199
    .end local v2    # "id":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 201
    :cond_2
    return v1
.end method

.method public static blacklist logViewHierarchy(Landroid/view/View;)Lorg/json/JSONObject;
    .locals 7
    .param p0, "view"    # Landroid/view/View;

    .line 136
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 138
    .local v0, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "canonicalName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .local v2, "idName":Ljava/lang/String;
    goto :goto_0

    .line 142
    .end local v2    # "idName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 143
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 144
    const-string v3, ""

    move-object v2, v3

    .line 148
    .local v2, "idName":Ljava/lang/String;
    :goto_0
    :try_start_1
    const-string v3, "view"

    invoke-virtual {p0}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    const-string v3, "viewHierarchy.favorite.all.info"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v4, "accessibilityNodeInfo"

    const-string v5, "content"

    if-eqz v3, :cond_0

    .line 151
    :try_start_2
    invoke-virtual {p0}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    invoke-virtual {p0}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 154
    :cond_0
    sget-object v3, Lcn/teddymobile/free/anteater/rule/utils/ViewHierarchyUtils;->includeAccessibilityNodeInfoWithClassList:Ljava/util/List;

    invoke-static {v1, v3}, Lcn/teddymobile/free/anteater/rule/utils/ViewHierarchyUtils;->includeAccessibilityNodeInfoWithClass(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcn/teddymobile/free/anteater/rule/utils/ViewHierarchyUtils;->includeAccessibilityNodeInfoWithViewIdList:Ljava/util/List;

    .line 155
    invoke-static {v2, v3}, Lcn/teddymobile/free/anteater/rule/utils/ViewHierarchyUtils;->includeAccessibilityNodeInfoWithViewId(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 156
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    invoke-virtual {p0}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    :cond_2
    :goto_1
    instance-of v3, p0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_4

    .line 162
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 164
    .local v3, "jsonArray":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    move-object v5, p0

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 165
    move-object v5, p0

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 166
    .local v5, "child":Landroid/view/View;
    invoke-static {v5}, Lcn/teddymobile/free/anteater/rule/utils/ViewHierarchyUtils;->logViewHierarchy(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v6

    .line 167
    .local v6, "object":Lorg/json/JSONObject;
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 164
    nop

    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "object":Lorg/json/JSONObject;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 170
    .end local v4    # "i":I
    :cond_3
    const-string v4, "leaf"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 175
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    :cond_4
    nop

    .line 177
    return-object v0

    .line 172
    :catch_1
    move-exception v3

    .line 173
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 174
    return-object v0
.end method

.method public static blacklist printViewHierarchyResult(Landroid/view/View;Ljava/lang/String;)V
    .locals 2
    .param p0, "decorView"    # Landroid/view/View;
    .param p1, "filePath"    # Ljava/lang/String;

    .line 131
    invoke-static {p0}, Lcn/teddymobile/free/anteater/rule/utils/ViewHierarchyUtils;->logViewHierarchy(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v0

    .line 132
    .local v0, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcn/teddymobile/free/anteater/rule/utils/DetectionFileUtils;->logFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public static blacklist retrieveWebView(Landroid/view/View;)Landroid/view/View;
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    .line 91
    if-eqz p0, :cond_4

    .line 92
    instance-of v0, p0, Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 93
    return-object p0

    .line 95
    :cond_0
    sget-object v0, Lcn/teddymobile/free/anteater/rule/utils/ViewHierarchyUtils;->sThirdPartyWebViewClassNames:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 96
    .local v3, "className":Ljava/lang/String;
    invoke-static {p0, v3}, Lcn/teddymobile/free/anteater/rule/utils/ViewHierarchyUtils;->checkClass(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 97
    return-object p0

    .line 95
    .end local v3    # "className":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 100
    :cond_2
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    .line 101
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    .line 102
    .local v0, "viewGroup":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 103
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcn/teddymobile/free/anteater/rule/utils/ViewHierarchyUtils;->retrieveWebView(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 104
    .local v2, "webView":Landroid/view/View;
    if-eqz v2, :cond_3

    .line 105
    return-object v2

    .line 102
    .end local v2    # "webView":Landroid/view/View;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 111
    .end local v0    # "viewGroup":Landroid/view/ViewGroup;
    .end local v1    # "i":I
    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method
