.class public Landroid/app/dialog/OplusAlertDialogMessageView;
.super Landroid/widget/TextView;
.source "OplusAlertDialogMessageView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 12
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 13
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;
    .param p3, "i"    # I
    .param p4, "i1"    # I

    .line 20
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 21
    return-void
.end method


# virtual methods
.method protected whitelist onAttachedToWindow()V
    .locals 1

    .line 29
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 30
    invoke-virtual {p0}, Landroid/app/dialog/OplusAlertDialogMessageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 31
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .locals 1

    .line 41
    invoke-virtual {p0}, Landroid/app/dialog/OplusAlertDialogMessageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 42
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 43
    return-void
.end method

.method public whitelist onGlobalLayout()V
    .locals 2

    .line 35
    invoke-virtual {p0}, Landroid/app/dialog/OplusAlertDialogMessageView;->getLineCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 36
    .local v0, "isMultiLine":Z
    if-eqz v0, :cond_1

    const v1, 0x800003

    goto :goto_1

    :cond_1
    const/16 v1, 0x11

    :goto_1
    invoke-virtual {p0, v1}, Landroid/app/dialog/OplusAlertDialogMessageView;->setGravity(I)V

    .line 37
    return-void
.end method
