.class public Lcom/android/internal/widget/ResolverDrawerLayoutExtImp;
.super Ljava/lang/Object;
.source "ResolverDrawerLayoutExtImp.java"

# interfaces
.implements Lcom/android/internal/widget/IResolverDrawerLayoutExt;


# instance fields
.field private blacklist mIsOpShareUi:Z

.field private blacklist mNestedScrollChild:Landroid/widget/ScrollView;

.field private final blacklist mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 2
    .param p1, "base"    # Ljava/lang/Object;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v0

    const-string v1, "oplus.software.op_share_sheet"

    invoke-virtual {v0, v1}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayoutExtImp;->mIsOpShareUi:Z

    .line 22
    move-object v0, p1

    check-cast v0, Lcom/android/internal/widget/ResolverDrawerLayout;

    iput-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayoutExtImp;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    .line 23
    return-void
.end method


# virtual methods
.method public blacklist customOnNestedScroll(FII)V
    .locals 2
    .param p1, "velocityY"    # F
    .param p2, "mCollapsibleHeight"    # I
    .param p3, "mUncollapsibleHeight"    # I

    .line 120
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayoutExtImp;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getWrapper()Lcom/android/internal/app/IResolverDrawerLayoutWrapper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/android/internal/app/IResolverDrawerLayoutWrapper;->smoothScrollTo(IF)V

    goto :goto_0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayoutExtImp;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getWrapper()Lcom/android/internal/app/IResolverDrawerLayoutWrapper;

    move-result-object v0

    add-int v1, p2, p3

    invoke-interface {v0, v1, p1}, Lcom/android/internal/app/IResolverDrawerLayoutWrapper;->smoothScrollTo(IF)V

    .line 124
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayoutExtImp;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getWrapper()Lcom/android/internal/app/IResolverDrawerLayoutWrapper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/internal/app/IResolverDrawerLayoutWrapper;->setDismissOnScrollerFinished(Z)V

    .line 126
    :goto_0
    return-void
.end method

.method public blacklist customOnStopNestedScroll(FII)V
    .locals 3
    .param p1, "mCollapseOffset"    # F
    .param p2, "mCollapsibleHeight"    # I
    .param p3, "mUncollapsibleHeight"    # I

    .line 156
    int-to-float v0, p2

    cmpl-float v0, p1, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayoutExtImp;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getWrapper()Lcom/android/internal/app/IResolverDrawerLayoutWrapper;

    move-result-object v0

    invoke-interface {v0, p2, v1}, Lcom/android/internal/app/IResolverDrawerLayoutWrapper;->smoothScrollTo(IF)V

    goto :goto_0

    .line 158
    :cond_0
    int-to-float v0, p2

    cmpg-float v0, p1, v0

    const/high16 v2, 0x40000000    # 2.0f

    if-gez v0, :cond_1

    add-int v0, p2, p3

    int-to-float v0, v0

    div-float/2addr v0, v2

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayoutExtImp;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getWrapper()Lcom/android/internal/app/IResolverDrawerLayoutWrapper;

    move-result-object v0

    invoke-interface {v0, p2, v1}, Lcom/android/internal/app/IResolverDrawerLayoutWrapper;->smoothScrollTo(IF)V

    goto :goto_0

    .line 160
    :cond_1
    add-int v0, p2, p3

    int-to-float v0, v0

    div-float/2addr v0, v2

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    .line 161
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayoutExtImp;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getWrapper()Lcom/android/internal/app/IResolverDrawerLayoutWrapper;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lcom/android/internal/app/IResolverDrawerLayoutWrapper;->smoothScrollTo(IF)V

    goto :goto_0

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayoutExtImp;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getWrapper()Lcom/android/internal/app/IResolverDrawerLayoutWrapper;

    move-result-object v0

    add-int v2, p2, p3

    invoke-interface {v0, v2, v1}, Lcom/android/internal/app/IResolverDrawerLayoutWrapper;->smoothScrollTo(IF)V

    .line 164
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayoutExtImp;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getWrapper()Lcom/android/internal/app/IResolverDrawerLayoutWrapper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/internal/app/IResolverDrawerLayoutWrapper;->setDismissOnScrollerFinished(Z)V

    .line 166
    :goto_0
    return-void
.end method

.method public blacklist customOnTouchEventMove(FLandroid/widget/AbsListView;Lcom/android/internal/widget/RecyclerView;F)V
    .locals 3
    .param p1, "dy"    # F
    .param p2, "mNestedListChild"    # Landroid/widget/AbsListView;
    .param p3, "mNestedRecyclerChild"    # Lcom/android/internal/widget/RecyclerView;
    .param p4, "mCollapseOffset"    # F

    .line 53
    iget-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayoutExtImp;->mIsOpShareUi:Z

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayoutExtImp;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getWrapper()Lcom/android/internal/app/IResolverDrawerLayoutWrapper;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/app/IResolverDrawerLayoutWrapper;->performDrag(F)V

    goto :goto_1

    .line 56
    :cond_0
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayoutExtImp;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->getWrapper()Lcom/android/internal/app/IResolverDrawerLayoutWrapper;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/app/IResolverDrawerLayoutWrapper;->isNestedListChildScrolled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    neg-float v0, p1

    float-to-int v0, v0

    invoke-virtual {p2, v0, v2}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    goto :goto_1

    .line 58
    :cond_1
    cmpl-float v1, p1, v0

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayoutExtImp;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->getWrapper()Lcom/android/internal/app/IResolverDrawerLayoutWrapper;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/app/IResolverDrawerLayoutWrapper;->isNestedListChildScrolled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 59
    neg-float v0, p1

    float-to-int v0, v0

    invoke-virtual {p3, v2, v0}, Lcom/android/internal/widget/RecyclerView;->scrollBy(II)V

    goto :goto_1

    .line 62
    :cond_2
    cmpl-float v0, p1, v0

    if-lez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    invoke-virtual {p0, v0, p4}, Lcom/android/internal/widget/ResolverDrawerLayoutExtImp;->isNestedScrollChildScrolled(ZF)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 63
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayoutExtImp;->mNestedScrollChild:Landroid/widget/ScrollView;

    neg-float v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/ScrollView;->scrollBy(II)V

    goto :goto_1

    .line 66
    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayoutExtImp;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getWrapper()Lcom/android/internal/app/IResolverDrawerLayoutWrapper;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/app/IResolverDrawerLayoutWrapper;->performDrag(F)V

    .line 69
    :goto_1
    return-void
.end method

.method public blacklist customOnTouchEventUpFling(FFII)V
    .locals 3
    .param p1, "yvel"    # F
    .param p2, "mCollapseOffset"    # F
    .param p3, "mCollapsibleHeight"    # I
    .param p4, "mUncollapsibleHeight"    # I

    .line 80
    iget-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayoutExtImp;->mIsOpShareUi:Z

    if-eqz v0, :cond_0

    add-int v0, p3, p4

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    move v0, p3

    .line 81
    .local v0, "collapsibleHeight":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayoutExtImp;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->getWrapper()Lcom/android/internal/app/IResolverDrawerLayoutWrapper;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/app/IResolverDrawerLayoutWrapper;->isDismissable()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    cmpl-float v1, p1, v2

    if-lez v1, :cond_1

    int-to-float v1, v0

    cmpl-float v1, p2, v1

    if-lez v1, :cond_1

    .line 83
    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayoutExtImp;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->getWrapper()Lcom/android/internal/app/IResolverDrawerLayoutWrapper;

    move-result-object v1

    add-int v2, p3, p4

    invoke-interface {v1, v2, p1}, Lcom/android/internal/app/IResolverDrawerLayoutWrapper;->smoothScrollTo(IF)V

    .line 84
    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayoutExtImp;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->getWrapper()Lcom/android/internal/app/IResolverDrawerLayoutWrapper;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/internal/app/IResolverDrawerLayoutWrapper;->setDismissOnScrollerFinished(Z)V

    goto :goto_2

    .line 86
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayoutExtImp;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->scrollNestedScrollableChildBackToTop()V

    .line 89
    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayoutExtImp;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->getWrapper()Lcom/android/internal/app/IResolverDrawerLayoutWrapper;

    move-result-object v1

    cmpg-float v2, p1, v2

    if-gez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    move v2, p3

    :goto_1
    invoke-interface {v1, v2, p1}, Lcom/android/internal/app/IResolverDrawerLayoutWrapper;->smoothScrollTo(IF)V

    .line 92
    :goto_2
    return-void
.end method

.method public blacklist customOnTouchEventUpScrollBack(FII)V
    .locals 5
    .param p1, "mCollapseOffset"    # F
    .param p2, "mCollapsibleHeight"    # I
    .param p3, "mUncollapsibleHeight"    # I

    .line 101
    iget-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayoutExtImp;->mIsOpShareUi:Z

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 102
    add-int v0, p2, p3

    int-to-float v0, v0

    div-float/2addr v0, v2

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayoutExtImp;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getWrapper()Lcom/android/internal/app/IResolverDrawerLayoutWrapper;

    move-result-object v0

    invoke-interface {v0, v1, v3}, Lcom/android/internal/app/IResolverDrawerLayoutWrapper;->smoothScrollTo(IF)V

    goto :goto_1

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayoutExtImp;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getWrapper()Lcom/android/internal/app/IResolverDrawerLayoutWrapper;

    move-result-object v0

    add-int v1, p2, p3

    invoke-interface {v0, v1, v3}, Lcom/android/internal/app/IResolverDrawerLayoutWrapper;->smoothScrollTo(IF)V

    .line 106
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayoutExtImp;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getWrapper()Lcom/android/internal/app/IResolverDrawerLayoutWrapper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/internal/app/IResolverDrawerLayoutWrapper;->setDismissOnScrollerFinished(Z)V

    goto :goto_1

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayoutExtImp;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getWrapper()Lcom/android/internal/app/IResolverDrawerLayoutWrapper;

    move-result-object v0

    int-to-float v4, p2

    div-float/2addr v4, v2

    cmpg-float v2, p1, v4

    if-gez v2, :cond_2

    goto :goto_0

    :cond_2
    move v1, p2

    :goto_0
    invoke-interface {v0, v1, v3}, Lcom/android/internal/app/IResolverDrawerLayoutWrapper;->smoothScrollTo(IF)V

    .line 111
    :goto_1
    return-void
.end method

.method public blacklist hookonStartNestedScroll(Landroid/view/View;)V
    .locals 1
    .param p1, "targetView"    # Landroid/view/View;

    .line 144
    instance-of v0, p1, Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    .line 145
    move-object v0, p1

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayoutExtImp;->mNestedScrollChild:Landroid/widget/ScrollView;

    .line 147
    :cond_0
    return-void
.end method

.method public blacklist hookresetTouch()V
    .locals 1

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayoutExtImp;->mNestedScrollChild:Landroid/widget/ScrollView;

    .line 131
    return-void
.end method

.method public blacklist hooksmoothScrollTo(ZLcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;)V
    .locals 2
    .param p1, "mDismissOnScrollerFinished"    # Z
    .param p2, "mOnDismissedListener"    # Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    .line 135
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayoutExtImp;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    new-instance v1, Lcom/android/internal/widget/ResolverDrawerLayoutExtImp$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/internal/widget/ResolverDrawerLayoutExtImp$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/ResolverDrawerLayoutExtImp;ZLcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->post(Ljava/lang/Runnable;)Z

    .line 140
    return-void
.end method

.method public blacklist isNestedScrollChildScrolled(ZF)Z
    .locals 3
    .param p1, "upToDown"    # Z
    .param p2, "mCollapseOffset"    # F

    .line 32
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayoutExtImp;->mNestedScrollChild:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 33
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_2

    .line 35
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 36
    iget-object v2, p0, Lcom/android/internal/widget/ResolverDrawerLayoutExtImp;->mNestedScrollChild:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    if-lez v2, :cond_0

    move v1, v0

    :cond_0
    return v1

    .line 38
    :cond_1
    return v0

    .line 41
    :cond_2
    return v1
.end method

.method public blacklist isOpShareUi()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayoutExtImp;->mIsOpShareUi:Z

    return v0
.end method

.method synthetic blacklist lambda$hooksmoothScrollTo$0$com-android-internal-widget-ResolverDrawerLayoutExtImp(ZLcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;)V
    .locals 1
    .param p1, "mDismissOnScrollerFinished"    # Z
    .param p2, "mOnDismissedListener"    # Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    .line 136
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayoutExtImp;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getWrapper()Lcom/android/internal/app/IResolverDrawerLayoutWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/IResolverDrawerLayoutWrapper;->dismiss()V

    .line 139
    :cond_0
    return-void
.end method

.method public blacklist shouldHookOnTouchEventMove()Z
    .locals 1

    .line 48
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist shouldHookOnTouchEventUpFling()Z
    .locals 1

    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist shouldHookOnTouchEventUpScrollBack()Z
    .locals 1

    .line 96
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist shouldHookonNestedScroll()Z
    .locals 1

    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist shouldHookonStopNestedScroll()Z
    .locals 1

    .line 151
    const/4 v0, 0x1

    return v0
.end method
