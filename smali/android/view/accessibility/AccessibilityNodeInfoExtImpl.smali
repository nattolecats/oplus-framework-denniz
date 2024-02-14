.class public Landroid/view/accessibility/AccessibilityNodeInfoExtImpl;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoExtImpl.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getRealClassName(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "nodeinfo"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 27
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->hasExtras()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "realClassName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 30
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist setRealClassName(Ljava/lang/CharSequence;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p0, "className"    # Ljava/lang/CharSequence;
    .param p1, "nodeinfo"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 34
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 35
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 36
    const-string v1, "realClassName"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 38
    :cond_0
    return-void
.end method
