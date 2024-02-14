.class Landroid/view/inputmethod/OplusInputMethodManagerInternal$1;
.super Landroid/util/Singleton;
.source "OplusInputMethodManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/OplusInputMethodManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Landroid/view/inputmethod/IOplusInputMethodManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist create()Landroid/view/inputmethod/IOplusInputMethodManager;
    .locals 5

    .line 28
    const-string v0, "OplusInputMethodManagerInternal"

    :try_start_0
    const-string v1, "input_method"

    .line 29
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodManager;

    move-result-object v1

    .line 30
    .local v1, "inputMethodManager":Lcom/android/internal/view/IInputMethodManager;
    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodManager;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->getExtension()Landroid/os/IBinder;

    move-result-object v2

    .line 31
    .local v2, "b":Landroid/os/IBinder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get inputMethodManager extension: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/oplus/util/OplusInputMethodUtil;->slog(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-static {v2}, Landroid/view/inputmethod/IOplusInputMethodManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/inputmethod/IOplusInputMethodManager;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 33
    .end local v1    # "inputMethodManager":Lcom/android/internal/view/IInputMethodManager;
    .end local v2    # "b":Landroid/os/IBinder;
    :catch_0
    move-exception v1

    .line 34
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create IOplusInputMethodManager singleton failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oplus/util/OplusInputMethodUtil;->slog(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .end local v1    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic blacklist create()Ljava/lang/Object;
    .locals 1

    .line 24
    invoke-virtual {p0}, Landroid/view/inputmethod/OplusInputMethodManagerInternal$1;->create()Landroid/view/inputmethod/IOplusInputMethodManager;

    move-result-object v0

    return-object v0
.end method
