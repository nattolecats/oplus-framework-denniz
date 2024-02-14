.class public Landroid/content/ClipboardManagerExtImpl;
.super Ljava/lang/Object;
.source "ClipboardManagerExtImpl.java"

# interfaces
.implements Landroid/content/IClipboardManagerExt;


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "ClipboardManagerExt"


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method private static blacklist getLocalRuleMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 80
    .local v0, "localMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "android.widget.TextView"

    const-string v2, "canPasteAsPlainText|canPaste|paste"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v1, "android.widget.Editor"

    const-string v2, "onClick"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v1, "android.view.View"

    const-string v2, "performLongClick"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v1, "org.chromium.ui.base.Clipboard"

    const-string v2, "?"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    return-object v0
.end method

.method private blacklist getUserPathInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 75
    invoke-static {}, Landroid/content/OplusClipboardManager;->getUserPathInfo()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getUserPrimaryClip(Ljava/lang/String;I)Landroid/content/ClipData;
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 71
    invoke-static {p1, p2}, Landroid/content/OplusClipboardManager;->getUserPrimaryClip(Ljava/lang/String;I)Landroid/content/ClipData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist adjustBeforeGetPrimaryClip(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 37
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/content/ClipboardManagerExtImpl;->getUserPathInfo()Ljava/util/Map;

    move-result-object v1

    .line 39
    .local v1, "stackTraceInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 40
    :cond_0
    invoke-static {}, Landroid/content/ClipboardManagerExtImpl;->getLocalRuleMap()Ljava/util/Map;

    move-result-object v2

    move-object v1, v2

    .line 42
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 43
    .local v2, "elements":[Ljava/lang/StackTraceElement;
    array-length v3, v2

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, v2, v4

    .line 48
    .local v5, "element":Ljava/lang/StackTraceElement;
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\\$"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v0

    .line 49
    .local v6, "keyClassName":Ljava/lang/String;
    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 50
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 51
    .local v3, "valueMethod":Ljava/lang/String;
    const-string v4, "?"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 53
    const/4 v0, 0x1

    return v0

    .line 55
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 43
    .end local v3    # "valueMethod":Ljava/lang/String;
    .end local v5    # "element":Ljava/lang/StackTraceElement;
    .end local v6    # "keyClassName":Ljava/lang/String;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 60
    .end local v1    # "stackTraceInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "elements":[Ljava/lang/StackTraceElement;
    :cond_4
    goto :goto_1

    .line 58
    :catch_0
    move-exception v1

    .line 59
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ClipboardManagerExt"

    const-string v3, "hookGetPrimaryClip has exception"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return v0
.end method

.method public blacklist hookGetPrimaryClip(Ljava/lang/String;I)Landroid/content/ClipData;
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/content/ClipboardManagerExtImpl;->getUserPrimaryClip(Ljava/lang/String;I)Landroid/content/ClipData;

    move-result-object v0

    return-object v0
.end method
