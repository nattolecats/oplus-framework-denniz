.class public Lcom/android/internal/widget/floatingtoolbar/OverflowPanelExtImpl;
.super Ljava/lang/Object;
.source "OverflowPanelExtImpl.java"

# interfaces
.implements Lcom/android/internal/widget/floatingtoolbar/IOverflowPanelExt;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "base"    # Ljava/lang/Object;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist hookOverflowPanel()Z
    .locals 1

    .line 34
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist hookSetScrollerbar(Landroid/view/View;)V
    .locals 3
    .param p1, "overflowPanel"    # Landroid/view/View;

    .line 40
    if-eqz p1, :cond_0

    .line 41
    nop

    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc08007b

    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 42
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 41
    invoke-virtual {p1, v0}, Landroid/view/View;->setVerticalScrollbarThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    :cond_0
    return-void
.end method
