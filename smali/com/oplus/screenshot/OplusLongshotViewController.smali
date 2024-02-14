.class public Lcom/oplus/screenshot/OplusLongshotViewController;
.super Lcom/oplus/screenshot/OplusLongshotController;
.source "OplusLongshotViewController.java"


# static fields
.field private static final blacklist DBG:Z

.field private static final blacklist TAG:Ljava/lang/String; = "LongshotDump"


# instance fields
.field private blacklist mViewExt:Landroid/view/ViewExtImpl;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 33
    sget-boolean v0, Lcom/oplus/screenshot/OplusLongshotDump;->DBG:Z

    sput-boolean v0, Lcom/oplus/screenshot/OplusLongshotViewController;->DBG:Z

    return-void
.end method

.method public constructor whitelist <init>(Lcom/oplus/screenshot/OplusLongshotViewBase;)V
    .locals 1
    .param p1, "view"    # Lcom/oplus/screenshot/OplusLongshotViewBase;

    .line 47
    const-string v0, "View"

    invoke-direct {p0, p1, v0}, Lcom/oplus/screenshot/OplusLongshotController;-><init>(Lcom/oplus/screenshot/OplusLongshotViewBase;Ljava/lang/String;)V

    .line 48
    move-object v0, p1

    check-cast v0, Landroid/view/ViewExtImpl;

    iput-object v0, p0, Lcom/oplus/screenshot/OplusLongshotViewController;->mViewExt:Landroid/view/ViewExtImpl;

    .line 49
    return-void
.end method


# virtual methods
.method public whitelist getOverScrollMode(I)I
    .locals 0
    .param p1, "overScrollMode"    # I

    .line 63
    return p1
.end method

.method public whitelist isLongshotConnected()Z
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/oplus/screenshot/OplusLongshotViewController;->mViewExt:Landroid/view/ViewExtImpl;

    invoke-virtual {v0}, Landroid/view/ViewExtImpl;->getViewRootImpl()Landroid/view/IViewRootImplExt;

    move-result-object v0

    .line 56
    .local v0, "viewRoot":Landroid/view/IViewRootImplExt;
    if-eqz v0, :cond_0

    .line 57
    invoke-interface {v0}, Landroid/view/IViewRootImplExt;->isConnected()Z

    move-result v1

    return v1

    .line 59
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist overScrollBy(IIIIIIIIZIZ)Z
    .locals 13
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I
    .param p3, "scrollX"    # I
    .param p4, "scrollY"    # I
    .param p5, "scrollRangeX"    # I
    .param p6, "scrollRangeY"    # I
    .param p7, "maxOverScrollX"    # I
    .param p8, "maxOverScrollY"    # I
    .param p9, "isTouchEvent"    # Z
    .param p10, "oldScrollY"    # I
    .param p11, "result"    # Z

    .line 72
    move/from16 v0, p7

    move/from16 v1, p8

    neg-int v2, v1

    .line 73
    .local v2, "top":I
    add-int v3, v1, p6

    .line 74
    .local v3, "bottom":I
    const/4 v4, 0x0

    .line 75
    .local v4, "clampedY":Z
    add-int v5, p4, p2

    .line 76
    .local v5, "newScrollY":I
    if-le v5, v3, :cond_0

    .line 77
    move v5, v3

    .line 78
    const/4 v4, 0x1

    goto :goto_0

    .line 79
    :cond_0
    if-ge v5, v2, :cond_1

    .line 80
    move v5, v2

    .line 81
    const/4 v4, 0x1

    .line 83
    :cond_1
    :goto_0
    move/from16 v6, p10

    if-eq v5, v6, :cond_6

    .line 84
    neg-int v7, v0

    .line 85
    .local v7, "left":I
    add-int v8, v0, p5

    .line 86
    .local v8, "right":I
    const/4 v9, 0x0

    .line 87
    .local v9, "clampedX":Z
    add-int v10, p3, p1

    .line 88
    .local v10, "newScrollX":I
    if-le v10, v8, :cond_2

    .line 89
    move v10, v8

    .line 90
    const/4 v9, 0x1

    goto :goto_1

    .line 91
    :cond_2
    if-ge v10, v7, :cond_3

    .line 92
    move v10, v7

    .line 93
    const/4 v9, 0x1

    .line 95
    :cond_3
    :goto_1
    move-object v11, p0

    iget-object v12, v11, Lcom/oplus/screenshot/OplusLongshotViewController;->mViewExt:Landroid/view/ViewExtImpl;

    invoke-virtual {v12, v10, v5, v9, v4}, Landroid/view/ViewExtImpl;->onLongshotOverScrolled(IIZZ)V

    .line 96
    if-nez v9, :cond_5

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    const/4 v12, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v12, 0x1

    .end local p11    # "result":Z
    .local v12, "result":Z
    :goto_3
    goto :goto_4

    .line 83
    .end local v7    # "left":I
    .end local v8    # "right":I
    .end local v9    # "clampedX":Z
    .end local v10    # "newScrollX":I
    .end local v12    # "result":Z
    .restart local p11    # "result":Z
    :cond_6
    move-object v11, p0

    move/from16 v12, p11

    .line 98
    .end local p11    # "result":Z
    .restart local v12    # "result":Z
    :goto_4
    return v12
.end method
