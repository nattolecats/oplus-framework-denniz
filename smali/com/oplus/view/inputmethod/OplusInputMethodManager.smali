.class public final Lcom/oplus/view/inputmethod/OplusInputMethodManager;
.super Ljava/lang/Object;
.source "OplusInputMethodManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/view/inputmethod/OplusInputMethodManager$OplusInputMethodManagerHolder;
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/oplus/view/inputmethod/OplusInputMethodManager-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/view/inputmethod/OplusInputMethodManager;-><init>()V

    return-void
.end method

.method public static whitelist getInstance()Lcom/oplus/view/inputmethod/OplusInputMethodManager;
    .locals 1

    .line 41
    invoke-static {}, Lcom/oplus/view/inputmethod/OplusInputMethodManager$OplusInputMethodManagerHolder;->-$$Nest$sfgetINSTANCE()Lcom/oplus/view/inputmethod/OplusInputMethodManager;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist hideSoftInput(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 61
    invoke-static {}, Landroid/view/inputmethod/OplusInputMethodManagerInternal;->getInstance()Landroid/view/inputmethod/OplusInputMethodManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/inputmethod/OplusInputMethodManagerInternal;->hideCurrentInputMethod()V

    .line 62
    return-void
.end method


# virtual methods
.method public whitelist clearDefaultInputMethodByCustomize()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 76
    invoke-static {}, Landroid/view/inputmethod/OplusInputMethodManagerInternal;->getInstance()Landroid/view/inputmethod/OplusInputMethodManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/inputmethod/OplusInputMethodManagerInternal;->clearDefaultInputMethodByCustomize()Z

    move-result v0

    return v0
.end method

.method public whitelist commitTextByOtherSide()V
    .locals 1

    .line 108
    invoke-static {}, Landroid/view/inputmethod/OplusInputMethodManagerInternal;->getInstance()Landroid/view/inputmethod/OplusInputMethodManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/inputmethod/OplusInputMethodManagerInternal;->commitTextByOtherSide()V

    .line 109
    return-void
.end method

.method public whitelist getDefaultInputMethodByCustomize()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 71
    invoke-static {}, Landroid/view/inputmethod/OplusInputMethodManagerInternal;->getInstance()Landroid/view/inputmethod/OplusInputMethodManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/inputmethod/OplusInputMethodManagerInternal;->getDefaultInputMethodByCustomize()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getInputMethodWindowVisibleHeight(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 123
    if-eqz p1, :cond_0

    .line 124
    invoke-static {}, Landroid/view/inputmethod/OplusInputMethodManagerInternal;->getInstance()Landroid/view/inputmethod/OplusInputMethodManagerInternal;

    move-result-object v0

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/OplusInputMethodManagerInternal;->getInputMethodWindowVisibleHeight(I)I

    move-result v0

    .line 124
    return v0

    .line 127
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist hideCurrentInputMethod()V
    .locals 1

    .line 51
    invoke-static {}, Landroid/view/inputmethod/OplusInputMethodManagerInternal;->getInstance()Landroid/view/inputmethod/OplusInputMethodManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/inputmethod/OplusInputMethodManagerInternal;->hideCurrentInputMethod()V

    .line 52
    return-void
.end method

.method public whitelist registerInputMethodSynergyService(Landroid/content/ComponentName;Z)V
    .locals 1
    .param p1, "synergyName"    # Landroid/content/ComponentName;
    .param p2, "register"    # Z

    .line 98
    invoke-static {}, Landroid/view/inputmethod/OplusInputMethodManagerInternal;->getInstance()Landroid/view/inputmethod/OplusInputMethodManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/inputmethod/OplusInputMethodManagerInternal;->registerInputMethodSynergyService(Landroid/content/ComponentName;Z)V

    .line 99
    return-void
.end method

.method public whitelist setDefaultInputMethodByCustomize(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 66
    invoke-static {}, Landroid/view/inputmethod/OplusInputMethodManagerInternal;->getInstance()Landroid/view/inputmethod/OplusInputMethodManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/OplusInputMethodManagerInternal;->setDefaultInputMethodByCustomize(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist updateCursorAnchorInfoToSynergy(Landroid/view/inputmethod/CursorAnchorInfo;)V
    .locals 0
    .param p1, "cursorAnchorInfo"    # Landroid/view/inputmethod/CursorAnchorInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 87
    return-void
.end method

.method public whitelist updateTouchDeviceId(I)V
    .locals 0
    .param p1, "deviceId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 82
    return-void
.end method
