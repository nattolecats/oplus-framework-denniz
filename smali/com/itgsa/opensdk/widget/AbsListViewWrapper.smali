.class public Lcom/itgsa/opensdk/widget/AbsListViewWrapper;
.super Ljava/lang/Object;
.source "AbsListViewWrapper.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "AbsListViewWrapper"


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist getOverScrollerInListView(Landroid/widget/AbsListView;)Landroid/widget/OverScroller;
    .locals 3
    .param p0, "absListView"    # Landroid/widget/AbsListView;

    .line 43
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWrapper()Landroid/widget/IAbsListViewWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/IAbsListViewWrapper;->setFlingRunnable()V

    .line 44
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWrapper()Landroid/widget/IAbsListViewWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/IAbsListViewWrapper;->getOverScroller()Landroid/widget/OverScroller;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error on getOverScrollerInListView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AbsListViewWrapper"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method
