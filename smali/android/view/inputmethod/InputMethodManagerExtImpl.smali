.class public Landroid/view/inputmethod/InputMethodManagerExtImpl;
.super Ljava/lang/Object;
.source "InputMethodManagerExtImpl.java"

# interfaces
.implements Landroid/view/inputmethod/IInputMethodManagerExt;
.implements Landroid/view/ViewRootImpl$ConfigChangedCallback;


# static fields
.field private static final blacklist CALLER_DEPTH:I = 0xc

.field private static final blacklist CALLER_START:I = 0x2

.field private static final blacklist FORCE_DISABLE_SHOW_FORCE_SOFTINPUT:I = 0x2bd

.field private static final blacklist FORCE_FOCUS_PACKAGES:[Ljava/lang/String;

.field private static final blacklist TAG:Ljava/lang/String; = "InputMethodManager"

.field private static final blacklist TIMEOUT_CLICK_MILLIS:J = 0x32L

.field private static final blacklist VALUE_BROWSER_CALL_PATH:Ljava/lang/String; = "org.chromium.content.browser.input.ImeAdapterImpl"

.field private static final blacklist VALUE_CLICK_CALL_PATH:Ljava/lang/String; = ".onClick"

.field private static final blacklist VALUE_TOUCH_CALL_PATH:Ljava/lang/String; = ".onTouch"

.field private static blacklist sPackageManager:Landroid/content/pm/OplusPackageManager;

.field private static blacklist sWindowingMode:I


# instance fields
.field private blacklist mCallByUserWhenStartInputFail:Z

.field private final blacklist mCheckFocusRunnable:Ljava/lang/Runnable;

.field private blacklist mCurRootView:Landroid/view/ViewRootImpl;

.field private blacklist mForceNewFocusOnce:Z

.field private blacklist mLastCallClickTime:J

.field private blacklist mStartInputSuccess:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCurRootView(Landroid/view/inputmethod/InputMethodManagerExtImpl;)Landroid/view/ViewRootImpl;
    .locals 0

    iget-object p0, p0, Landroid/view/inputmethod/InputMethodManagerExtImpl;->mCurRootView:Landroid/view/ViewRootImpl;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 44
    const-string v0, "cn.wps.moffice"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/inputmethod/InputMethodManagerExtImpl;->FORCE_FOCUS_PACKAGES:[Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    sput-object v0, Landroid/view/inputmethod/InputMethodManagerExtImpl;->sPackageManager:Landroid/content/pm/OplusPackageManager;

    .line 53
    const/4 v0, 0x0

    sput v0, Landroid/view/inputmethod/InputMethodManagerExtImpl;->sWindowingMode:I

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "base"    # Ljava/lang/Object;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Landroid/view/inputmethod/InputMethodManagerExtImpl$1;

    invoke-direct {v0, p0}, Landroid/view/inputmethod/InputMethodManagerExtImpl$1;-><init>(Landroid/view/inputmethod/InputMethodManagerExtImpl;)V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManagerExtImpl;->mCheckFocusRunnable:Ljava/lang/Runnable;

    .line 74
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManagerExtImpl;->updateDebugToClass()V

    .line 75
    return-void
.end method

.method private blacklist isServerdViewForceFocus()Z
    .locals 8

    .line 250
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManagerExtImpl;->mCurRootView:Landroid/view/ViewRootImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 251
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getImeFocusController()Landroid/view/ImeFocusController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ImeFocusController;->getServedView()Landroid/view/View;

    move-result-object v0

    .line 252
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 253
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 254
    .local v2, "className":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isServerdViewForceFocus: className = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/view/inputmethod/InputMethodManagerExtImpl;->logDebug(Ljava/lang/String;)V

    .line 255
    sget-object v3, Landroid/view/inputmethod/InputMethodManagerExtImpl;->FORCE_FOCUS_PACKAGES:[Ljava/lang/String;

    array-length v4, v3

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 256
    .local v6, "packageName":Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 257
    const/4 v1, 0x1

    return v1

    .line 255
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 262
    .end local v0    # "view":Landroid/view/View;
    .end local v2    # "className":Ljava/lang/String;
    :cond_1
    return v1
.end method

.method private blacklist updateDebugToClass()V
    .locals 2

    .line 78
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0}, Lcom/oplus/util/OplusInputMethodUtil;->updateDebugToClass(Ljava/lang/Class;)V

    .line 79
    const-class v0, Landroid/view/ImeFocusController;

    invoke-static {v0}, Lcom/oplus/util/OplusInputMethodUtil;->updateDebugToClass(Ljava/lang/Class;)V

    .line 80
    const-class v0, Landroid/view/inputmethod/BaseInputConnection;

    invoke-static {v0}, Lcom/oplus/util/OplusInputMethodUtil;->updateDebugImeToClass(Ljava/lang/Class;)V

    .line 81
    const-class v0, Landroid/view/ImeFocusController;

    const-string v1, "sDebugIme"

    invoke-static {v0, v1}, Lcom/oplus/util/OplusInputMethodUtil;->updateDebugImeToClass(Ljava/lang/Class;Ljava/lang/String;)V

    .line 82
    return-void
.end method


# virtual methods
.method public blacklist adjustForceFlag(I)I
    .locals 3
    .param p1, "flags"    # I

    .line 101
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 102
    sget-object v0, Landroid/view/inputmethod/InputMethodManagerExtImpl;->sPackageManager:Landroid/content/pm/OplusPackageManager;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Landroid/content/pm/OplusPackageManager;

    invoke-direct {v0}, Landroid/content/pm/OplusPackageManager;-><init>()V

    sput-object v0, Landroid/view/inputmethod/InputMethodManagerExtImpl;->sPackageManager:Landroid/content/pm/OplusPackageManager;

    .line 105
    :cond_0
    sget-object v0, Landroid/view/inputmethod/InputMethodManagerExtImpl;->sPackageManager:Landroid/content/pm/OplusPackageManager;

    const/16 v1, 0x2bd

    invoke-static {}, Landroid/app/AppGlobals;->getInitialPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/OplusPackageManager;->inCptWhiteList(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    const-string v0, "adjustForceFlag: flags set to 0"

    invoke-virtual {p0, v0}, Landroid/view/inputmethod/InputMethodManagerExtImpl;->logDebug(Ljava/lang/String;)V

    .line 107
    const/4 v0, 0x0

    return v0

    .line 110
    :cond_1
    return p1
.end method

.method public blacklist adjustStartInputFlags(I)I
    .locals 1
    .param p1, "flags"    # I

    .line 224
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodManagerExtImpl;->mCallByUserWhenStartInputFail:Z

    if-eqz v0, :cond_0

    .line 225
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodManagerExtImpl;->mCallByUserWhenStartInputFail:Z

    .line 226
    const-string v0, "adjustStartInputFlags FLAG_CALL_BY_USER_WHEN_START_INPUT_FAIL"

    invoke-virtual {p0, v0}, Landroid/view/inputmethod/InputMethodManagerExtImpl;->logDebug(Ljava/lang/String;)V

    .line 227
    or-int/lit16 v0, p1, 0x100

    return v0

    .line 229
    :cond_0
    return p1
.end method

.method public blacklist attachInfoToEditorInfo(Landroid/view/inputmethod/EditorInfo;)V
    .locals 3
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;

    .line 156
    if-eqz p1, :cond_3

    .line 157
    const/4 v0, 0x0

    .line 158
    .local v0, "flags":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attachInfoToEditorInfo: mCurRootView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManagerExtImpl;->mCurRootView:Landroid/view/ViewRootImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sWindowingMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/view/inputmethod/InputMethodManagerExtImpl;->sWindowingMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/inputmethod/InputMethodManagerExtImpl;->logDebug(Ljava/lang/String;)V

    .line 160
    sget v1, Landroid/view/inputmethod/InputMethodManagerExtImpl;->sWindowingMode:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 161
    or-int/lit8 v0, v0, 0x1

    .line 162
    const-string v1, "attachInfoToEditorInfo: multi window mode"

    invoke-virtual {p0, v1}, Landroid/view/inputmethod/InputMethodManagerExtImpl;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :cond_0
    const/16 v2, 0x64

    if-ne v1, v2, :cond_1

    .line 164
    or-int/lit8 v0, v0, 0x2

    .line 165
    const-string v1, "attachInfoToEditorInfo: zoom mode"

    invoke-virtual {p0, v1}, Landroid/view/inputmethod/InputMethodManagerExtImpl;->logDebug(Ljava/lang/String;)V

    .line 167
    :cond_1
    :goto_0
    iget-object v1, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-nez v1, :cond_2

    .line 168
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 170
    :cond_2
    iget-object v1, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string v2, "com.oplus.im.SCENES"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 172
    .end local v0    # "flags":I
    :cond_3
    return-void
.end method

.method public blacklist configDebug([Ljava/lang/String;)Z
    .locals 1
    .param p1, "args"    # [Ljava/lang/String;

    .line 115
    const-string v0, "imm"

    invoke-static {p1, v0}, Lcom/oplus/util/OplusInputMethodUtil;->dynamicallyConfigDebugByDumpArgs([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManagerExtImpl;->updateDebugToClass()V

    .line 117
    const/4 v0, 0x1

    return v0

    .line 119
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist invalidateInputToSynergy(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;I)V
    .locals 1
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p3, "sessionId"    # I

    .line 129
    invoke-static {}, Landroid/view/inputmethod/OplusInputMethodManagerInternal;->getInstance()Landroid/view/inputmethod/OplusInputMethodManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/inputmethod/OplusInputMethodManagerInternal;->invalidateInputToSynergy(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;I)V

    .line 130
    return-void
.end method

.method public blacklist logDebug(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 86
    const-string v0, "InputMethodManager"

    invoke-static {v0, p1}, Lcom/oplus/util/OplusInputMethodUtil;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public blacklist logDebugIme(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 91
    const-string v0, "InputMethodManager"

    invoke-static {v0, p1}, Lcom/oplus/util/OplusInputMethodUtil;->logDebugIme(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public blacklist logMethodCallers(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 96
    const-string v0, "InputMethodManager"

    invoke-static {v0, p1}, Lcom/oplus/util/OplusInputMethodUtil;->logMethodCallers(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public blacklist needForceNewFocus()Z
    .locals 3

    .line 234
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodManagerExtImpl;->mForceNewFocusOnce:Z

    .line 235
    .local v0, "forceNewFocus":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/inputmethod/InputMethodManagerExtImpl;->mForceNewFocusOnce:Z

    .line 236
    if-eqz v0, :cond_0

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needForceNewFocus forceNewFocus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/inputmethod/InputMethodManagerExtImpl;->logDebug(Ljava/lang/String;)V

    .line 239
    :cond_0
    return v0
.end method

.method public blacklist onCallClickBeforeCheckFocus()V
    .locals 2

    .line 197
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodManagerExtImpl;->mStartInputSuccess:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodManagerExtImpl;->mCallByUserWhenStartInputFail:Z

    .line 198
    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodManagerExtImpl;->mForceNewFocusOnce:Z

    .line 199
    if-eqz v0, :cond_0

    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/inputmethod/InputMethodManagerExtImpl;->mLastCallClickTime:J

    .line 201
    const-string v0, "onCallClickBeforeCheckFocus: force new focus"

    invoke-virtual {p0, v0}, Landroid/view/inputmethod/InputMethodManagerExtImpl;->logDebug(Ljava/lang/String;)V

    .line 203
    :cond_0
    return-void
.end method

.method public blacklist onCallShowBeforeCheckFocus()V
    .locals 6

    .line 207
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodManagerExtImpl;->mStartInputSuccess:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Landroid/view/inputmethod/InputMethodManagerExtImpl;->mLastCallClickTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x32

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    .line 208
    const/4 v0, 0x2

    const/16 v2, 0xc

    invoke-static {v0, v2}, Landroid/os/Debug;->getCallers(II)Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "callers":Ljava/lang/String;
    const-string v2, ".onTouch"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 210
    const-string v2, ".onClick"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 211
    const-string v2, "org.chromium.content.browser.input.ImeAdapterImpl"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 212
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManagerExtImpl;->isServerdViewForceFocus()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Landroid/view/inputmethod/InputMethodManagerExtImpl;->mCallByUserWhenStartInputFail:Z

    .line 213
    if-eqz v1, :cond_2

    .line 214
    const-string v1, "onCallShowBeforeCheckFocus: force new focus"

    invoke-virtual {p0, v1}, Landroid/view/inputmethod/InputMethodManagerExtImpl;->logDebug(Ljava/lang/String;)V

    .line 216
    .end local v0    # "callers":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 217
    :cond_3
    iput-boolean v1, p0, Landroid/view/inputmethod/InputMethodManagerExtImpl;->mCallByUserWhenStartInputFail:Z

    .line 219
    :goto_0
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodManagerExtImpl;->mCallByUserWhenStartInputFail:Z

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodManagerExtImpl;->mForceNewFocusOnce:Z

    .line 220
    return-void
.end method

.method public blacklist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "globalConfig"    # Landroid/content/res/Configuration;

    .line 176
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManagerExtImpl;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 177
    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    .line 178
    .local v0, "windowingMode":I
    sget v1, Landroid/view/inputmethod/InputMethodManagerExtImpl;->sWindowingMode:I

    if-eq v0, v1, :cond_0

    .line 179
    sput v0, Landroid/view/inputmethod/InputMethodManagerExtImpl;->sWindowingMode:I

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged mCurRootView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManagerExtImpl;->mCurRootView:Landroid/view/ViewRootImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sWindowingMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/view/inputmethod/InputMethodManagerExtImpl;->sWindowingMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/inputmethod/InputMethodManagerExtImpl;->logDebug(Ljava/lang/String;)V

    .line 182
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManagerExtImpl;->mCurRootView:Landroid/view/ViewRootImpl;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 183
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManagerExtImpl;->mCurRootView:Landroid/view/ViewRootImpl;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManagerExtImpl;->mCheckFocusRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 184
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManagerExtImpl;->mCurRootView:Landroid/view/ViewRootImpl;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManagerExtImpl;->mCheckFocusRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 188
    .end local v0    # "windowingMode":I
    :cond_0
    return-void
.end method

.method public blacklist onStartInputResult(Z)V
    .locals 0
    .param p1, "success"    # Z

    .line 192
    iput-boolean p1, p0, Landroid/view/inputmethod/InputMethodManagerExtImpl;->mStartInputSuccess:Z

    .line 193
    return-void
.end method

.method public blacklist updateCurrentRootView(Landroid/view/ViewRootImpl;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/ViewRootImpl;

    .line 134
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManagerExtImpl;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eq p1, v0, :cond_3

    .line 135
    if-eqz v0, :cond_1

    .line 136
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManagerExtImpl;->mCurRootView:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManagerExtImpl;->mCheckFocusRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 139
    :cond_0
    invoke-static {p0}, Landroid/view/ViewRootImpl;->removeConfigCallback(Landroid/view/ViewRootImpl$ConfigChangedCallback;)V

    .line 141
    :cond_1
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManagerExtImpl;->mCurRootView:Landroid/view/ViewRootImpl;

    .line 142
    if-nez p1, :cond_2

    .line 143
    const/4 v0, 0x0

    sput v0, Landroid/view/inputmethod/InputMethodManagerExtImpl;->sWindowingMode:I

    goto :goto_0

    .line 145
    :cond_2
    invoke-static {p0}, Landroid/view/ViewRootImpl;->addConfigCallback(Landroid/view/ViewRootImpl$ConfigChangedCallback;)V

    .line 146
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManagerExtImpl;->mCurRootView:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 147
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    sput v0, Landroid/view/inputmethod/InputMethodManagerExtImpl;->sWindowingMode:I

    .line 149
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCurrentRootView mCurRootView = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManagerExtImpl;->mCurRootView:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sWindowingMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/view/inputmethod/InputMethodManagerExtImpl;->sWindowingMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/inputmethod/InputMethodManagerExtImpl;->logDebug(Ljava/lang/String;)V

    .line 152
    :cond_3
    return-void
.end method

.method public blacklist updateCursorAnchorInfoToSynergy(Landroid/view/inputmethod/CursorAnchorInfo;)V
    .locals 1
    .param p1, "cursorAnchorInfo"    # Landroid/view/inputmethod/CursorAnchorInfo;

    .line 124
    invoke-static {}, Landroid/view/inputmethod/OplusInputMethodManagerInternal;->getInstance()Landroid/view/inputmethod/OplusInputMethodManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/OplusInputMethodManagerInternal;->updateCursorAnchorInfoToSynergy(Landroid/view/inputmethod/CursorAnchorInfo;)V

    .line 125
    return-void
.end method

.method public blacklist updateReportToImeController(Landroid/content/Context;IZ)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "displayId"    # I
    .param p3, "reportToImeController"    # Z

    .line 245
    if-eqz p3, :cond_1

    if-eqz p2, :cond_0

    .line 246
    invoke-static {p1, p2}, Lcom/oplus/util/OplusInputMethodUtil;->isMirageDisplay(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 245
    :goto_0
    return v0
.end method
