.class public Lcom/oplus/widget/OplusRecyclerListView;
.super Lcom/android/internal/app/AlertController$RecycleListView;
.source "OplusRecyclerListView.java"


# instance fields
.field private blacklist mClipPath:Landroid/graphics/Path;

.field private blacklist mCornerRadius:I

.field private blacklist mNeedClip:Z


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oplus/widget/OplusRecyclerListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/AlertController$RecycleListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc050026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/widget/OplusRecyclerListView;->mCornerRadius:I

    .line 38
    return-void
.end method

.method private blacklist clipRoundBounds(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 51
    const/16 v0, 0x8

    new-array v6, v0, [F

    iget v0, p0, Lcom/oplus/widget/OplusRecyclerListView;->mCornerRadius:I

    int-to-float v1, v0

    const/4 v2, 0x0

    aput v1, v6, v2

    int-to-float v1, v0

    const/4 v2, 0x1

    aput v1, v6, v2

    int-to-float v1, v0

    const/4 v2, 0x2

    aput v1, v6, v2

    int-to-float v0, v0

    const/4 v1, 0x3

    aput v0, v6, v1

    const/4 v0, 0x4

    const/4 v1, 0x0

    aput v1, v6, v0

    const/4 v0, 0x5

    aput v1, v6, v0

    const/4 v0, 0x6

    aput v1, v6, v0

    const/4 v0, 0x7

    aput v1, v6, v0

    .line 52
    .local v6, "cornerRadius":[F
    iget-object v0, p0, Lcom/oplus/widget/OplusRecyclerListView;->mClipPath:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 53
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/oplus/widget/OplusRecyclerListView;->mClipPath:Landroid/graphics/Path;

    .line 54
    invoke-virtual {p0}, Lcom/oplus/widget/OplusRecyclerListView;->getLeft()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/oplus/widget/OplusRecyclerListView;->getTop()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/oplus/widget/OplusRecyclerListView;->getRight()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/oplus/widget/OplusRecyclerListView;->getBottom()I

    move-result v0

    int-to-float v5, v0

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->addRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/oplus/widget/OplusRecyclerListView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 57
    return-void
.end method


# virtual methods
.method public whitelist draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 42
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 43
    iget-boolean v0, p0, Lcom/oplus/widget/OplusRecyclerListView;->mNeedClip:Z

    if-eqz v0, :cond_0

    .line 44
    invoke-direct {p0, p1}, Lcom/oplus/widget/OplusRecyclerListView;->clipRoundBounds(Landroid/graphics/Canvas;)V

    .line 46
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertController$RecycleListView;->draw(Landroid/graphics/Canvas;)V

    .line 47
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 48
    return-void
.end method

.method public blacklist setNeedClip(Z)V
    .locals 0
    .param p1, "needClip"    # Z

    .line 60
    iput-boolean p1, p0, Lcom/oplus/widget/OplusRecyclerListView;->mNeedClip:Z

    .line 61
    return-void
.end method
