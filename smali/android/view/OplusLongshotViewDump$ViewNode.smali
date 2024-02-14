.class final Landroid/view/OplusLongshotViewDump$ViewNode;
.super Ljava/lang/Object;
.source "OplusLongshotViewDump.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/OplusLongshotViewDump;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ViewNode"
.end annotation


# instance fields
.field private final blacklist mAccessibilityName:Ljava/lang/CharSequence;

.field private final blacklist mChildList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/OplusLongshotViewDump$ViewNode;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mClassName:Ljava/lang/CharSequence;

.field private final blacklist mClipRect:Landroid/graphics/Rect;

.field private final blacklist mFullRect:Landroid/graphics/Rect;

.field private blacklist mOverScrollMode:I

.field private final blacklist mScrollRect:Landroid/graphics/Rect;

.field private blacklist mSpend:J

.field private final blacklist mView:Landroid/view/View;


# direct methods
.method public constructor blacklist <init>(Landroid/view/View;Ljava/lang/CharSequence;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "accessibilityName"    # Ljava/lang/CharSequence;
    .param p3, "clipRect"    # Landroid/graphics/Rect;
    .param p4, "fullRect"    # Landroid/graphics/Rect;

    .line 1439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1432
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/OplusLongshotViewDump$ViewNode;->mClipRect:Landroid/graphics/Rect;

    .line 1433
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/OplusLongshotViewDump$ViewNode;->mFullRect:Landroid/graphics/Rect;

    .line 1434
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/view/OplusLongshotViewDump$ViewNode;->mScrollRect:Landroid/graphics/Rect;

    .line 1435
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/view/OplusLongshotViewDump$ViewNode;->mChildList:Ljava/util/List;

    .line 1436
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/view/OplusLongshotViewDump$ViewNode;->mSpend:J

    .line 1437
    const/4 v2, -0x1

    iput v2, p0, Landroid/view/OplusLongshotViewDump$ViewNode;->mOverScrollMode:I

    .line 1440
    iput-object p1, p0, Landroid/view/OplusLongshotViewDump$ViewNode;->mView:Landroid/view/View;

    .line 1441
    iput-object p2, p0, Landroid/view/OplusLongshotViewDump$ViewNode;->mAccessibilityName:Ljava/lang/CharSequence;

    .line 1442
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/view/OplusLongshotViewDump$ViewNode;->mClassName:Ljava/lang/CharSequence;

    .line 1443
    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1444
    invoke-virtual {v1, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1445
    return-void
.end method


# virtual methods
.method public blacklist addChild(Landroid/view/OplusLongshotViewDump$ViewNode;)V
    .locals 1
    .param p1, "viewNode"    # Landroid/view/OplusLongshotViewDump$ViewNode;

    .line 1476
    iget-object v0, p0, Landroid/view/OplusLongshotViewDump$ViewNode;->mChildList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1477
    return-void
.end method

.method public blacklist disableOverScroll()V
    .locals 6

    .line 1512
    iget-object v0, p0, Landroid/view/OplusLongshotViewDump$ViewNode;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 1513
    .local v0, "root":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_1

    .line 1515
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getWrapper()Landroid/view/IViewRootImplWrapper;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/IViewRootImplWrapper;->getExtImpl()Landroid/view/IViewRootImplExt;

    move-result-object v1

    .line 1516
    .local v1, "iViewRootImplExt":Landroid/view/IViewRootImplExt;
    const-string v2, "LongshotDump"

    if-eqz v1, :cond_0

    .line 1517
    invoke-static {}, Landroid/view/OplusLongshotViewDump;->-$$Nest$sfgetDBG()Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LongshotViewRoot Connected is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Landroid/view/IViewRootImplExt;->isConnected()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/oplus/util/OplusLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1519
    :cond_0
    iget-object v3, p0, Landroid/view/OplusLongshotViewDump$ViewNode;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getOverScrollMode()I

    move-result v3

    iput v3, p0, Landroid/view/OplusLongshotViewDump$ViewNode;->mOverScrollMode:I

    .line 1520
    invoke-static {}, Landroid/view/OplusLongshotViewDump;->-$$Nest$sfgetDBG()Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disableOverScroll : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/view/OplusLongshotViewDump$ViewNode;->mOverScrollMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/oplus/util/OplusLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1521
    iget-object v2, p0, Landroid/view/OplusLongshotViewDump$ViewNode;->mView:Landroid/view/View;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/View;->setOverScrollMode(I)V

    .line 1523
    .end local v1    # "iViewRootImplExt":Landroid/view/IViewRootImplExt;
    :cond_1
    return-void
.end method

.method public blacklist getAccessibilityName()Ljava/lang/CharSequence;
    .locals 1

    .line 1484
    iget-object v0, p0, Landroid/view/OplusLongshotViewDump$ViewNode;->mAccessibilityName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getChildList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/OplusLongshotViewDump$ViewNode;",
            ">;"
        }
    .end annotation

    .line 1480
    iget-object v0, p0, Landroid/view/OplusLongshotViewDump$ViewNode;->mChildList:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 1488
    iget-object v0, p0, Landroid/view/OplusLongshotViewDump$ViewNode;->mClassName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getClipRect()Landroid/graphics/Rect;
    .locals 1

    .line 1492
    iget-object v0, p0, Landroid/view/OplusLongshotViewDump$ViewNode;->mClipRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getFullRect()Landroid/graphics/Rect;
    .locals 1

    .line 1496
    iget-object v0, p0, Landroid/view/OplusLongshotViewDump$ViewNode;->mFullRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getScrollRect()Landroid/graphics/Rect;
    .locals 1

    .line 1508
    iget-object v0, p0, Landroid/view/OplusLongshotViewDump$ViewNode;->mScrollRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getView()Landroid/view/View;
    .locals 1

    .line 1472
    iget-object v0, p0, Landroid/view/OplusLongshotViewDump$ViewNode;->mView:Landroid/view/View;

    return-object v0
.end method

.method public blacklist resetOverScroll()V
    .locals 6

    .line 1526
    iget-object v0, p0, Landroid/view/OplusLongshotViewDump$ViewNode;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 1527
    .local v0, "root":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_1

    .line 1529
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getWrapper()Landroid/view/IViewRootImplWrapper;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/IViewRootImplWrapper;->getExtImpl()Landroid/view/IViewRootImplExt;

    move-result-object v1

    .line 1530
    .local v1, "iViewRootImplExt":Landroid/view/IViewRootImplExt;
    const-string v2, "LongshotDump"

    if-eqz v1, :cond_0

    .line 1531
    invoke-static {}, Landroid/view/OplusLongshotViewDump;->-$$Nest$sfgetDBG()Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LongshotViewRoot Connected is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Landroid/view/IViewRootImplExt;->isConnected()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/oplus/util/OplusLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1533
    :cond_0
    iget v3, p0, Landroid/view/OplusLongshotViewDump$ViewNode;->mOverScrollMode:I

    if-ltz v3, :cond_1

    .line 1534
    invoke-static {}, Landroid/view/OplusLongshotViewDump;->-$$Nest$sfgetDBG()Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resetOverScroll : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/view/OplusLongshotViewDump$ViewNode;->mOverScrollMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/oplus/util/OplusLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1535
    iget-object v2, p0, Landroid/view/OplusLongshotViewDump$ViewNode;->mView:Landroid/view/View;

    iget v3, p0, Landroid/view/OplusLongshotViewDump$ViewNode;->mOverScrollMode:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setOverScrollMode(I)V

    .line 1536
    const/4 v2, -0x1

    iput v2, p0, Landroid/view/OplusLongshotViewDump$ViewNode;->mOverScrollMode:I

    .line 1539
    .end local v1    # "iViewRootImplExt":Landroid/view/IViewRootImplExt;
    :cond_1
    return-void
.end method

.method public blacklist setScrollRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 1504
    iget-object v0, p0, Landroid/view/OplusLongshotViewDump$ViewNode;->mScrollRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1505
    return-void
.end method

.method public blacklist setSpend(J)V
    .locals 0
    .param p1, "spend"    # J

    .line 1500
    iput-wide p1, p0, Landroid/view/OplusLongshotViewDump$ViewNode;->mSpend:J

    .line 1501
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 1449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1450
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "View["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1451
    iget-object v1, p0, Landroid/view/OplusLongshotViewDump$ViewNode;->mAccessibilityName:Ljava/lang/CharSequence;

    const-string v2, ":"

    if-eqz v1, :cond_0

    .line 1452
    const-string v1, "accessibility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1453
    iget-object v1, p0, Landroid/view/OplusLongshotViewDump$ViewNode;->mAccessibilityName:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1454
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1456
    :cond_0
    iget-object v1, p0, Landroid/view/OplusLongshotViewDump$ViewNode;->mClassName:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 1457
    const-string v1, "class="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1458
    iget-object v1, p0, Landroid/view/OplusLongshotViewDump$ViewNode;->mClassName:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1459
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1461
    :cond_1
    const-string v1, "clip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1462
    iget-object v1, p0, Landroid/view/OplusLongshotViewDump$ViewNode;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1463
    const-string v1, ":full="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1464
    iget-object v1, p0, Landroid/view/OplusLongshotViewDump$ViewNode;->mFullRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1465
    const-string v1, ":spend="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1466
    iget-wide v1, p0, Landroid/view/OplusLongshotViewDump$ViewNode;->mSpend:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1467
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1468
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
