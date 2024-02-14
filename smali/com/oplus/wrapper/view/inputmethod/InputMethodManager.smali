.class public Lcom/oplus/wrapper/view/inputmethod/InputMethodManager;
.super Ljava/lang/Object;
.source "InputMethodManager.java"


# instance fields
.field private final blacklist mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method public constructor whitelist <init>(Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0
    .param p1, "inputMethodManager"    # Landroid/view/inputmethod/InputMethodManager;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/oplus/wrapper/view/inputmethod/InputMethodManager;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 36
    return-void
.end method


# virtual methods
.method public whitelist getInputMethodWindowVisibleHeight()I
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/oplus/wrapper/view/inputmethod/InputMethodManager;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodWindowVisibleHeight()I

    move-result v0

    return v0
.end method
