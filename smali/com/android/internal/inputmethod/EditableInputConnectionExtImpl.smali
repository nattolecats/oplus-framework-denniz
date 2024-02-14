.class public Lcom/android/internal/inputmethod/EditableInputConnectionExtImpl;
.super Ljava/lang/Object;
.source "EditableInputConnectionExtImpl.java"

# interfaces
.implements Lcom/android/internal/inputmethod/IEditableInputConnectionExt;


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mBase:Lcom/android/internal/inputmethod/EditableInputConnection;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 13
    const-class v0, Lcom/android/internal/inputmethod/EditableInputConnectionExtImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/inputmethod/EditableInputConnectionExtImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "base"    # Ljava/lang/Object;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    move-object v0, p1

    check-cast v0, Lcom/android/internal/inputmethod/EditableInputConnection;

    iput-object v0, p0, Lcom/android/internal/inputmethod/EditableInputConnectionExtImpl;->mBase:Lcom/android/internal/inputmethod/EditableInputConnection;

    .line 18
    return-void
.end method

.method private blacklist handleKeyCodeDel(Landroid/widget/TextView;Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .line 35
    const-string v0, "handleKeyCodeDel"

    invoke-direct {p0, v0}, Lcom/android/internal/inputmethod/EditableInputConnectionExtImpl;->log(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 37
    .local v0, "action":I
    if-nez v0, :cond_0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/internal/inputmethod/EditableInputConnectionExtImpl;->handleKeyCodeDelDown(Landroid/widget/TextView;Landroid/view/KeyEvent;)V

    goto :goto_0

    .line 39
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/internal/inputmethod/EditableInputConnectionExtImpl;->handleKeyCodeDelUp(Landroid/widget/TextView;Landroid/view/KeyEvent;)V

    .line 42
    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist handleKeyCodeDelDown(Landroid/widget/TextView;Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .line 45
    const-string v0, "handleKeyCodeDelDown"

    invoke-direct {p0, v0}, Lcom/android/internal/inputmethod/EditableInputConnectionExtImpl;->log(Ljava/lang/String;)V

    .line 46
    if-nez p1, :cond_0

    .line 47
    return-void

    .line 51
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getWrapper()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ITextViewWrapper;

    invoke-interface {v0}, Landroid/widget/ITextViewWrapper;->getEditor()Landroid/widget/Editor;

    move-result-object v0

    .line 52
    .local v0, "editor":Landroid/widget/Editor;
    if-nez v0, :cond_1

    .line 53
    return-void

    .line 57
    :cond_1
    invoke-virtual {v0}, Landroid/widget/Editor;->getWrapper()Landroid/widget/IEditorWrapper;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/IEditorWrapper;->getEditorExt()Landroid/widget/IEditorExt;

    move-result-object v1

    .line 58
    .local v1, "editorExt":Landroid/widget/IEditorExt;
    invoke-interface {v1, v0, p2}, Landroid/widget/IEditorExt;->handleKeyCodeDelDown(Landroid/widget/Editor;Landroid/view/KeyEvent;)V

    .line 59
    return-void
.end method

.method private blacklist handleKeyCodeDelUp(Landroid/widget/TextView;Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .line 62
    const-string v0, "handleKeyCodeDelUp"

    invoke-direct {p0, v0}, Lcom/android/internal/inputmethod/EditableInputConnectionExtImpl;->log(Ljava/lang/String;)V

    .line 63
    if-nez p1, :cond_0

    .line 64
    return-void

    .line 68
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getWrapper()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ITextViewWrapper;

    invoke-interface {v0}, Landroid/widget/ITextViewWrapper;->getEditor()Landroid/widget/Editor;

    move-result-object v0

    .line 69
    .local v0, "editor":Landroid/widget/Editor;
    if-nez v0, :cond_1

    .line 70
    return-void

    .line 74
    :cond_1
    invoke-virtual {v0}, Landroid/widget/Editor;->getWrapper()Landroid/widget/IEditorWrapper;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/IEditorWrapper;->getEditorExt()Landroid/widget/IEditorExt;

    move-result-object v1

    .line 75
    .local v1, "editorExt":Landroid/widget/IEditorExt;
    invoke-interface {v1, v0, p2}, Landroid/widget/IEditorExt;->handleKeyCodeDelUp(Landroid/widget/Editor;Landroid/view/KeyEvent;)V

    .line 76
    return-void
.end method

.method private blacklist log(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .line 79
    sget-object v0, Lcom/android/internal/inputmethod/EditableInputConnectionExtImpl;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void
.end method


# virtual methods
.method public blacklist handleSendKeyEvent(Landroid/widget/TextView;Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .line 23
    const-string v0, "handleSendKeyEvent"

    invoke-direct {p0, v0}, Lcom/android/internal/inputmethod/EditableInputConnectionExtImpl;->log(Ljava/lang/String;)V

    .line 24
    if-nez p2, :cond_0

    .line 25
    return-void

    .line 28
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 29
    .local v0, "keyCode":I
    const/16 v1, 0x43

    if-ne v0, v1, :cond_1

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/internal/inputmethod/EditableInputConnectionExtImpl;->handleKeyCodeDel(Landroid/widget/TextView;Landroid/view/KeyEvent;)V

    .line 32
    :cond_1
    return-void
.end method
