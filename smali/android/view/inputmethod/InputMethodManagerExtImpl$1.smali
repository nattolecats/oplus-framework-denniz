.class Landroid/view/inputmethod/InputMethodManagerExtImpl$1;
.super Ljava/lang/Object;
.source "InputMethodManagerExtImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputMethodManagerExtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/inputmethod/InputMethodManagerExtImpl;


# direct methods
.method constructor blacklist <init>(Landroid/view/inputmethod/InputMethodManagerExtImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/inputmethod/InputMethodManagerExtImpl;

    .line 55
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManagerExtImpl$1;->this$0:Landroid/view/inputmethod/InputMethodManagerExtImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 2

    .line 58
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManagerExtImpl$1;->this$0:Landroid/view/inputmethod/InputMethodManagerExtImpl;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManagerExtImpl;->-$$Nest$fgetmCurRootView(Landroid/view/inputmethod/InputMethodManagerExtImpl;)Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManagerExtImpl$1;->this$0:Landroid/view/inputmethod/InputMethodManagerExtImpl;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManagerExtImpl;->-$$Nest$fgetmCurRootView(Landroid/view/inputmethod/InputMethodManagerExtImpl;)Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManagerExtImpl$1;->this$0:Landroid/view/inputmethod/InputMethodManagerExtImpl;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManagerExtImpl;->-$$Nest$fgetmCurRootView(Landroid/view/inputmethod/InputMethodManagerExtImpl;)Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasImeFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManagerExtImpl$1;->this$0:Landroid/view/inputmethod/InputMethodManagerExtImpl;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManagerExtImpl;->-$$Nest$fgetmCurRootView(Landroid/view/inputmethod/InputMethodManagerExtImpl;)Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManagerExtImpl$1;->this$0:Landroid/view/inputmethod/InputMethodManagerExtImpl;

    const-string v1, "mCheckFocusRunnable checkFocus"

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManagerExtImpl;->logDebug(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManagerExtImpl$1;->this$0:Landroid/view/inputmethod/InputMethodManagerExtImpl;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManagerExtImpl;->-$$Nest$fgetmCurRootView(Landroid/view/inputmethod/InputMethodManagerExtImpl;)Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getImeFocusController()Landroid/view/ImeFocusController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/ImeFocusController;->checkFocus(ZZ)Z

    .line 64
    :cond_0
    return-void
.end method
