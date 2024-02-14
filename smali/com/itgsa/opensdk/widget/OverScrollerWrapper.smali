.class public Lcom/itgsa/opensdk/widget/OverScrollerWrapper;
.super Ljava/lang/Object;
.source "OverScrollerWrapper.java"


# static fields
.field private static final blacklist FLING_MODE:I = 0x1

.field private static final blacklist SCROLL_MODE:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "OverScrollerWrapper"


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist getModeInOverScroller(Landroid/widget/OverScroller;)I
    .locals 4
    .param p0, "overScroller"    # Landroid/widget/OverScroller;

    .line 48
    const-string v0, "OverScrollerWrapper"

    :try_start_0
    const-string v1, "getModeInOverScroller calling"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual {p0}, Landroid/widget/OverScroller;->getWrapper()Landroid/widget/IOverScrollerWrapper;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/IOverScrollerWrapper;->getMode()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 50
    :catch_0
    move-exception v1

    .line 51
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error on getModeInOverScroller "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .end local v1    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method
