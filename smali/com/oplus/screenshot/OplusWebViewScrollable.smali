.class public Lcom/oplus/screenshot/OplusWebViewScrollable;
.super Ljava/lang/Object;
.source "OplusWebViewScrollable.java"

# interfaces
.implements Lcom/oplus/screenshot/IOplusScrollable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/screenshot/OplusWebViewScrollable$Invoker;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oplus/screenshot/IOplusScrollable<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_SCALE:F = 1.0f

.field private static final blacklist METHOD_NAME_GET_CONTENT_HEIGHT:Ljava/lang/String; = "getContentHeight"

.field private static final blacklist METHOD_NAME_GET_CONTENT_WIDTH:Ljava/lang/String; = "getContentWidth"

.field private static final blacklist METHOD_NAME_GET_SCALE:Ljava/lang/String; = "getScale"

.field private static final blacklist TAG:Ljava/lang/String; = "OplusWebViewScrollable"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getContentHeight(Landroid/view/View;)I
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    .line 99
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/oplus/screenshot/OplusWebViewScrollable$Invoker;->INTEGER_INVOKER:Lcom/oplus/screenshot/OplusWebViewScrollable$Invoker;

    const-string v2, "getContentHeight"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-array v4, v0, [Ljava/lang/Class;

    invoke-static {p0, v1, v2, v3, v4}, Lcom/oplus/screenshot/OplusWebViewScrollable$Invoker;->invokes(Landroid/view/View;Lcom/oplus/screenshot/OplusWebViewScrollable$Invoker;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 100
    .local v1, "result":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 101
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 105
    .end local v1    # "result":Ljava/lang/Integer;
    :cond_0
    goto :goto_0

    .line 103
    :catch_0
    move-exception v1

    .line 104
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    const-string v2, "OplusWebViewScrollable"

    const-string v3, "Invoke getContentHeight failed, view is not WebView like."

    invoke-static {v2, v3, v1}, Lcom/oplus/util/OplusLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    .end local v1    # "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    return v0
.end method

.method private static blacklist getContentWidth(Landroid/view/View;)I
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    .line 87
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/oplus/screenshot/OplusWebViewScrollable$Invoker;->INTEGER_INVOKER:Lcom/oplus/screenshot/OplusWebViewScrollable$Invoker;

    const-string v2, "getContentWidth"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-array v4, v0, [Ljava/lang/Class;

    invoke-static {p0, v1, v2, v3, v4}, Lcom/oplus/screenshot/OplusWebViewScrollable$Invoker;->invokes(Landroid/view/View;Lcom/oplus/screenshot/OplusWebViewScrollable$Invoker;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 88
    .local v1, "result":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 93
    .end local v1    # "result":Ljava/lang/Integer;
    :cond_0
    goto :goto_0

    .line 91
    :catch_0
    move-exception v1

    .line 92
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    const-string v2, "OplusWebViewScrollable"

    const-string v3, "Invoke getContentWidth failed, view is not WebView like."

    invoke-static {v2, v3, v1}, Lcom/oplus/util/OplusLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    .end local v1    # "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    return v0
.end method

.method private static blacklist getScale(Landroid/view/View;)F
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .line 111
    :try_start_0
    sget-object v0, Lcom/oplus/screenshot/OplusWebViewScrollable$Invoker;->FLOAT_INVOKER:Lcom/oplus/screenshot/OplusWebViewScrollable$Invoker;

    const-string v1, "getScale"

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/oplus/screenshot/OplusWebViewScrollable$Invoker;->invokes(Landroid/view/View;Lcom/oplus/screenshot/OplusWebViewScrollable$Invoker;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 112
    .local v0, "result":Ljava/lang/Float;
    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 117
    .end local v0    # "result":Ljava/lang/Float;
    :cond_0
    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    const-string v1, "OplusWebViewScrollable"

    const-string v2, "Invoke getContentHeight failed, view is not WebView like."

    invoke-static {v1, v2, v0}, Lcom/oplus/util/OplusLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method


# virtual methods
.method public blacklist getHorizontalScrollExtent(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public blacklist getHorizontalScrollOffset(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v0

    return v0
.end method

.method public blacklist getHorizontalScrollRange(Landroid/view/View;)I
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 67
    invoke-static {p1}, Lcom/oplus/screenshot/OplusWebViewScrollable;->getContentWidth(Landroid/view/View;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1}, Lcom/oplus/screenshot/OplusWebViewScrollable;->getScale(Landroid/view/View;)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public blacklist getVerticalScrollExtent(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public blacklist getVerticalScrollOffset(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v0

    return v0
.end method

.method public blacklist getVerticalScrollRange(Landroid/view/View;)I
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 82
    invoke-static {p1}, Lcom/oplus/screenshot/OplusWebViewScrollable;->getContentHeight(Landroid/view/View;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1}, Lcom/oplus/screenshot/OplusWebViewScrollable;->getScale(Landroid/view/View;)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public blacklist scrollBy(Landroid/view/View;II)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 47
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->scrollBy(II)V

    .line 48
    return-void
.end method

.method public blacklist scrollTo(Landroid/view/View;II)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 52
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->scrollTo(II)V

    .line 53
    return-void
.end method
