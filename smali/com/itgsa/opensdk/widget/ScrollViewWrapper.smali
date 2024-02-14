.class public Lcom/itgsa/opensdk/widget/ScrollViewWrapper;
.super Ljava/lang/Object;
.source "ScrollViewWrapper.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ScrollViewWrapper"


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist getOverScrollerInScrollView(Landroid/widget/ScrollView;)Landroid/widget/OverScroller;
    .locals 4
    .param p0, "scrollView"    # Landroid/widget/ScrollView;

    .line 42
    const-string v0, "ScrollViewWrapper"

    :try_start_0
    const-string v1, "getOverScrollerInScrollView calling"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWrapper()Landroid/widget/IScrollViewWrapper;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/IScrollViewWrapper;->getOverScroller()Landroid/widget/OverScroller;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 44
    :catch_0
    move-exception v1

    .line 45
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error on getOverScrollerInScrollView "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .end local v1    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method
