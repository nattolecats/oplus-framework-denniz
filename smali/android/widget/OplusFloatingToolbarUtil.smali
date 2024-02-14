.class public Landroid/widget/OplusFloatingToolbarUtil;
.super Ljava/lang/Object;
.source "OplusFloatingToolbarUtil.java"

# interfaces
.implements Landroid/widget/IOplusFloatingToolbarUtil;


# static fields
.field private static final blacklist SEARCH_PACKAGE_NAME:Ljava/lang/String; = "com.heytap.browser"


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleCursorControllersEnabled(ZZZZZ)[Z
    .locals 2
    .param p1, "isMenuEnabled"    # Z
    .param p2, "isInsertMenuEnabled"    # Z
    .param p3, "isSelectMenuEnabled"    # Z
    .param p4, "insertionControllerEnabled"    # Z
    .param p5, "selectionControllerEnabled"    # Z

    .line 50
    if-nez p1, :cond_0

    .line 51
    const/4 p4, 0x0

    .line 52
    const/4 p5, 0x0

    goto :goto_0

    .line 53
    :cond_0
    if-nez p2, :cond_1

    .line 54
    const/4 p4, 0x0

    goto :goto_0

    .line 55
    :cond_1
    if-nez p3, :cond_2

    .line 56
    const/4 p5, 0x0

    .line 58
    :cond_2
    :goto_0
    const/4 v0, 0x2

    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean p4, v0, v1

    const/4 v1, 0x1

    aput-boolean p5, v0, v1

    return-object v0
.end method

.method public whitelist needAllSelected(Z)Z
    .locals 0
    .param p1, "needAllSelected"    # Z

    .line 63
    return p1
.end method

.method public whitelist needHook()Z
    .locals 1

    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist setSearchMenuItem(ILandroid/content/Intent;Ljava/lang/CharSequence;Landroid/content/pm/ResolveInfo;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "index"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .param p5, "menu"    # Landroid/view/Menu;

    .line 36
    iget-object v0, p4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.heytap.browser"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 38
    invoke-interface {p5, v1, v1, p1, p3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 40
    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v0

    .line 41
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 42
    return v1

    .line 45
    :cond_0
    return v1
.end method

.method public whitelist updateSelectAllItem(Landroid/view/Menu;Landroid/widget/TextView;I)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "textView"    # Landroid/widget/TextView;
    .param p3, "menuItemOrderSelect"    # I

    .line 73
    invoke-virtual {p2}, Landroid/widget/TextView;->canSelectText()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p2}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    invoke-virtual {p2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    invoke-virtual {p2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 76
    .local v0, "canSelect":Z
    :goto_0
    const v3, 0xc02006d

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-eqz v4, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    .line 77
    .local v4, "selectItemExists":Z
    :goto_1
    if-eqz v0, :cond_2

    if-nez v4, :cond_2

    .line 78
    const v5, 0xc0400ca

    invoke-interface {p1, v2, v3, p3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 80
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_2

    .line 81
    :cond_2
    if-nez v0, :cond_3

    if-eqz v4, :cond_3

    .line 82
    invoke-interface {p1, v3}, Landroid/view/Menu;->removeItem(I)V

    .line 84
    :cond_3
    :goto_2
    return-void
.end method
