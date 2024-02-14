.class public Landroid/view/autolayout/AutoLayoutUtils;
.super Ljava/lang/Object;
.source "AutoLayoutUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getViewInfo(Landroid/view/View;)Landroid/view/autolayout/AutoLayoutViewInfo;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getViewWrapper()Landroid/view/IViewWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IViewWrapper;->getViewExt()Landroid/view/IViewExt;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IViewExt;->getViewInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autolayout/AutoLayoutViewInfo;

    return-object v0
.end method

.method public static blacklist getViewMarginLeft(Landroid/view/View;)I
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 34
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 35
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 36
    .local v1, "marginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getViewMarginLeft return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/view/autolayout/AutoLayoutDebug;->log(Ljava/lang/String;)V

    .line 37
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    return v2

    .line 40
    .end local v1    # "marginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static blacklist getViewMarginRight(Landroid/view/View;)I
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 45
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 46
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 47
    .local v1, "marginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getViewMarginRight return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/view/autolayout/AutoLayoutDebug;->log(Ljava/lang/String;)V

    .line 48
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    return v2

    .line 51
    .end local v1    # "marginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
