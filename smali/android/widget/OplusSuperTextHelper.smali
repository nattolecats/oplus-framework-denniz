.class public Landroid/widget/OplusSuperTextHelper;
.super Ljava/lang/Object;
.source "OplusSuperTextHelper.java"


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist startInsertionActionMode(Landroid/widget/TextView;)V
    .locals 3
    .param p0, "textView"    # Landroid/widget/TextView;

    .line 39
    if-nez p0, :cond_0

    .line 40
    return-void

    .line 43
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 44
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 45
    const-string v1, "com.oplus.permission.safe.PROTECT"

    const-string v2, "SuperText Permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Landroid/widget/TextView;->getWrapper()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ITextViewWrapper;

    invoke-interface {v1}, Landroid/widget/ITextViewWrapper;->getEditor()Landroid/widget/Editor;

    move-result-object v1

    .line 47
    .local v1, "editor":Landroid/widget/Editor;
    if-eqz v1, :cond_1

    .line 48
    invoke-virtual {v1}, Landroid/widget/Editor;->startInsertionActionMode()V

    .line 51
    .end local v1    # "editor":Landroid/widget/Editor;
    :cond_1
    return-void
.end method
