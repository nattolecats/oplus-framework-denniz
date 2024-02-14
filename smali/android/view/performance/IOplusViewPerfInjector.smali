.class public interface abstract Landroid/view/performance/IOplusViewPerfInjector;
.super Ljava/lang/Object;
.source "IOplusViewPerfInjector.java"


# virtual methods
.method public blacklist checkBoostAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 23
    return-void
.end method

.method public blacklist checkBoostBuildDrawingCache()V
    .locals 0

    .line 24
    return-void
.end method

.method public blacklist checkBoostOnPerformClick(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .line 26
    return-void
.end method

.method public blacklist checkBoostTouchEvent(I)V
    .locals 0
    .param p1, "action"    # I

    .line 25
    return-void
.end method

.method public blacklist checkNeedBoostedPropertyAnimator(Landroid/view/ViewPropertyAnimator;)V
    .locals 0
    .param p1, "animator"    # Landroid/view/ViewPropertyAnimator;

    .line 27
    return-void
.end method

.method public blacklist getOplusAdjustlayerTypeInstance()Landroid/view/performance/IOplusAdjustlayerType;
    .locals 1

    .line 22
    sget-object v0, Landroid/view/performance/IOplusAdjustlayerType;->DEFAULT:Landroid/view/performance/IOplusAdjustlayerType;

    return-object v0
.end method

.method public blacklist ignoreSpecailViewDescendantInvalidated(Landroid/view/ViewParent;)V
    .locals 0
    .param p1, "p"    # Landroid/view/ViewParent;

    .line 28
    return-void
.end method

.method public blacklist initView()V
    .locals 0

    .line 21
    return-void
.end method

.method public blacklist isIgnoreSpecailViewDescendantInvalidated()Z
    .locals 1

    .line 29
    const/4 v0, 0x0

    return v0
.end method
