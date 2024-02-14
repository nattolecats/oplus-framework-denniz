.class Landroid/view/OplusLongshotViewDump$ContentComparator;
.super Ljava/lang/Object;
.source "OplusLongshotViewDump.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/OplusLongshotViewDump;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContentComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/view/OplusLongshotViewContent;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 1542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/OplusLongshotViewDump$ContentComparator-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/OplusLongshotViewDump$ContentComparator;-><init>()V

    return-void
.end method

.method private blacklist rectCompare(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 4
    .param p1, "rect1"    # Landroid/graphics/Rect;
    .param p2, "rect2"    # Landroid/graphics/Rect;

    .line 1564
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    const/4 v2, 0x1

    if-le v0, v1, :cond_0

    .line 1565
    return v2

    .line 1566
    :cond_0
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    const/4 v3, -0x1

    if-ge v0, v1, :cond_1

    .line 1567
    return v3

    .line 1569
    :cond_1
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v1, :cond_2

    .line 1570
    return v2

    .line 1571
    :cond_2
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_3

    .line 1572
    return v3

    .line 1574
    :cond_3
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-le v0, v1, :cond_4

    .line 1575
    return v2

    .line 1576
    :cond_4
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-ge v0, v1, :cond_5

    .line 1577
    return v3

    .line 1579
    :cond_5
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_6

    .line 1580
    return v2

    .line 1581
    :cond_6
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_7

    .line 1582
    return v3

    .line 1584
    :cond_7
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist compare(Landroid/view/OplusLongshotViewContent;Landroid/view/OplusLongshotViewContent;)I
    .locals 5
    .param p1, "content1"    # Landroid/view/OplusLongshotViewContent;
    .param p2, "content2"    # Landroid/view/OplusLongshotViewContent;

    .line 1546
    invoke-virtual {p1}, Landroid/view/OplusLongshotViewContent;->getParent()Landroid/view/OplusLongshotViewContent;

    move-result-object v0

    .line 1547
    .local v0, "parent1":Landroid/view/OplusLongshotViewContent;
    invoke-virtual {p2}, Landroid/view/OplusLongshotViewContent;->getParent()Landroid/view/OplusLongshotViewContent;

    move-result-object v1

    .line 1548
    .local v1, "parent2":Landroid/view/OplusLongshotViewContent;
    const/4 v2, 0x0

    .line 1549
    .local v2, "result":I
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 1550
    invoke-virtual {v0}, Landroid/view/OplusLongshotViewContent;->getRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1}, Landroid/view/OplusLongshotViewContent;->getRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Landroid/view/OplusLongshotViewDump$ContentComparator;->rectCompare(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v2

    .line 1551
    if-nez v2, :cond_0

    .line 1552
    invoke-virtual {v0}, Landroid/view/OplusLongshotViewContent;->getView()Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    .line 1553
    .local v3, "hash1":I
    invoke-virtual {v1}, Landroid/view/OplusLongshotViewContent;->getView()Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    .line 1554
    .local v4, "hash2":I
    sub-int v2, v4, v3

    .line 1557
    .end local v3    # "hash1":I
    .end local v4    # "hash2":I
    :cond_0
    if-nez v2, :cond_1

    .line 1558
    invoke-virtual {p1}, Landroid/view/OplusLongshotViewContent;->getRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p2}, Landroid/view/OplusLongshotViewContent;->getRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Landroid/view/OplusLongshotViewDump$ContentComparator;->rectCompare(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v2

    .line 1560
    :cond_1
    return v2
.end method

.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1542
    check-cast p1, Landroid/view/OplusLongshotViewContent;

    check-cast p2, Landroid/view/OplusLongshotViewContent;

    invoke-virtual {p0, p1, p2}, Landroid/view/OplusLongshotViewDump$ContentComparator;->compare(Landroid/view/OplusLongshotViewContent;Landroid/view/OplusLongshotViewContent;)I

    move-result p1

    return p1
.end method
