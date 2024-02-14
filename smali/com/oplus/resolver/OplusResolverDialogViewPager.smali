.class public Lcom/oplus/resolver/OplusResolverDialogViewPager;
.super Lcom/oplus/widget/OplusViewPager;
.source "OplusResolverDialogViewPager.java"


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    invoke-direct {p0, p1}, Lcom/oplus/widget/OplusViewPager;-><init>(Landroid/content/Context;)V

    .line 40
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/oplus/resolver/OplusResolverDialogViewPager;->setOverScrollMode(I)V

    .line 41
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/oplus/widget/OplusViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/oplus/resolver/OplusResolverDialogViewPager;->setOverScrollMode(I)V

    .line 46
    return-void
.end method


# virtual methods
.method public whitelist getCurrentItem()I
    .locals 1

    .line 50
    invoke-super {p0}, Lcom/oplus/widget/OplusViewPager;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method protected whitelist onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 55
    invoke-super {p0, p1, p2}, Lcom/oplus/widget/OplusViewPager;->onMeasure(II)V

    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, "height":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/resolver/OplusResolverDialogViewPager;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 58
    invoke-virtual {p0, v1}, Lcom/oplus/resolver/OplusResolverDialogViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 59
    .local v2, "child":Landroid/view/View;
    const v3, 0x1fffffff

    const/4 v4, 0x0

    .line 60
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 59
    invoke-virtual {v2, p1, v3}, Landroid/view/View;->measure(II)V

    .line 61
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 62
    .local v3, "h":I
    if-le v3, v0, :cond_0

    .line 63
    move v0, v3

    .line 57
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "h":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/resolver/OplusResolverDialogViewPager;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/oplus/resolver/OplusResolverDialogViewPager;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 67
    .end local v0    # "height":I
    .local v1, "height":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/oplus/resolver/OplusResolverDialogViewPager;->setMeasuredDimension(II)V

    .line 68
    return-void
.end method

.method public whitelist setGridViewList(Ljava/util/List;Ljava/util/List;Landroid/content/Intent;Landroid/widget/CheckBox;Landroid/app/Dialog;)V
    .locals 0
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "checkbox"    # Landroid/widget/CheckBox;
    .param p5, "alertDialog"    # Landroid/app/Dialog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/widget/OplusGridView;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/Intent;",
            "Landroid/widget/CheckBox;",
            "Landroid/app/Dialog;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 73
    .local p1, "listOplusGridView":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/widget/OplusGridView;>;"
    .local p2, "riList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    return-void
.end method

.method public whitelist setResolverItemEventListener(Lcom/oplus/widget/OplusPagerAdapter$OplusResolverItemEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/oplus/widget/OplusPagerAdapter$OplusResolverItemEventListener;

    .line 76
    invoke-virtual {p0}, Lcom/oplus/resolver/OplusResolverDialogViewPager;->getAdapter()Lcom/oplus/widget/OplusPagerAdapter;

    move-result-object v0

    .line 77
    .local v0, "adapter":Lcom/oplus/widget/OplusPagerAdapter;
    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0, p1}, Lcom/oplus/widget/OplusPagerAdapter;->setOplusResolverItemEventListener(Lcom/oplus/widget/OplusPagerAdapter$OplusResolverItemEventListener;)V

    .line 80
    :cond_0
    return-void
.end method
