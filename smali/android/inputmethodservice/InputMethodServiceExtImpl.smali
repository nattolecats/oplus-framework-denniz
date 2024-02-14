.class public Landroid/inputmethodservice/InputMethodServiceExtImpl;
.super Ljava/lang/Object;
.source "InputMethodServiceExtImpl.java"

# interfaces
.implements Landroid/inputmethodservice/IInputMethodServiceExt;


# static fields
.field private static final blacklist ACTION_DISPLAY:Ljava/lang/String; = "synergy.display"

.field private static final blacklist KEYBOARD_PREVENT_TOUCH:Ljava/lang/String; = "keyboard_prevent_touch"

.field private static final blacklist KEYBOARD_PREVENT_TOUCH_DEFAULT:I = -0x1

.field private static final blacklist KEYBOARD_PREVENT_TOUCH_ON:I = 0x1

.field private static final blacklist KEY_DISPLAY_ID:Ljava/lang/String; = "displayId"

.field private static final blacklist KEY_KEYBOARD_POSITION:Ljava/lang/String; = "keyboard_position"

.field private static final blacklist KEY_KEYBOARD_QUICK_SWITCH:Ljava/lang/String; = "keyboard_quick_switch"

.field private static final blacklist SYSTEM_FOLDING_MODE_CLOSE:I = 0x0

.field private static final blacklist SYSTEM_FOLDING_MODE_KEYS:Ljava/lang/String; = "oplus_system_folding_mode"

.field private static final blacklist SYSTEM_FOLDING_MODE_OPEN:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "InputMethodServiceExtImpl"

.field private static final blacklist URI_KEYBOARD_POSITION:Landroid/net/Uri;

.field private static final blacklist URI_KEYBOARD_PREVENT_TOUCH:Landroid/net/Uri;

.field private static final blacklist URI_KEYBOARD_QUICK_SWITCH:Landroid/net/Uri;

.field private static final blacklist URI_SYSTEM_FOLDING_MODE_KEYS:Landroid/net/Uri;

.field private static final blacklist VALUE_KEYBOARD_POSITION_RAISE:I = 0x1

.field private static final blacklist VALUE_KEYBOARD_QUICK_SWITCH_OPEN:I = 0x1


# instance fields
.field private blacklist mContentTopInsets:I

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mFoldingMode:I

.field private final blacklist mInputMethodService:Landroid/inputmethodservice/InputMethodService;

.field private blacklist mIsExpRom:Z

.field private blacklist mKeyboardFloating:Z

.field private blacklist mKeyboardPosition:I

.field private blacklist mKeyboardPreventTouch:I

.field private blacklist mKeyboardQuickSwitch:I

.field private blacklist mLastEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field private blacklist mLastExclusionRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mNavigationBarFrame:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mOplusInputMethodServiceUtils:Landroid/inputmethodservice/IOplusInputMethodServiceUtils;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 51
    const-string v0, "keyboard_prevent_touch"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->URI_KEYBOARD_PREVENT_TOUCH:Landroid/net/Uri;

    .line 56
    const-string v0, "oplus_system_folding_mode"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->URI_SYSTEM_FOLDING_MODE_KEYS:Landroid/net/Uri;

    .line 61
    const-string v0, "keyboard_position"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->URI_KEYBOARD_POSITION:Landroid/net/Uri;

    .line 65
    const-string v0, "keyboard_quick_switch"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->URI_KEYBOARD_QUICK_SWITCH:Landroid/net/Uri;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "base"    # Ljava/lang/Object;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->mKeyboardFloating:Z

    .line 86
    move-object v0, p1

    check-cast v0, Landroid/inputmethodservice/InputMethodService;

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    .line 87
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodServiceExtImpl;->updateDebugToClass()V

    .line 88
    return-void
.end method

.method private blacklist attachInfoToEditorInfo(Landroid/view/inputmethod/EditorInfo;)V
    .locals 4
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;

    .line 318
    if-eqz p1, :cond_1

    iget-object v0, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 319
    iget-object v0, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string v1, "com.oplus.im.SCENES"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 320
    .local v0, "flags":I
    iget v2, p0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->mFoldingMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 321
    or-int/lit8 v0, v0, 0x10

    goto :goto_0

    .line 323
    :cond_0
    and-int/lit8 v0, v0, -0x11

    .line 325
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachInfoToEditorInfo: folding mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->mFoldingMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InputMethodServiceExtImpl"

    invoke-static {v3, v2}, Lcom/oplus/util/OplusInputMethodUtil;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object v2, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 328
    .end local v0    # "flags":I
    :cond_1
    return-void
.end method

.method private blacklist updateDebugToClass()V
    .locals 1

    .line 91
    const-class v0, Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Lcom/oplus/util/OplusInputMethodUtil;->updateDebugToClass(Ljava/lang/Class;)V

    .line 92
    return-void
.end method


# virtual methods
.method public blacklist appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 310
    const-string v0, "synergy.display"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    const-string v0, "displayId"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 312
    .local v0, "displayId":I
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v1, v0}, Landroid/inputmethodservice/InputMethodService;->updateDisplay(I)V

    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDisplay "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputMethodServiceExtImpl"

    invoke-static {v2, v1}, Lcom/oplus/util/OplusInputMethodUtil;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    .end local v0    # "displayId":I
    :cond_0
    return-void
.end method

.method public blacklist configDebug([Ljava/lang/String;)V
    .locals 1
    .param p1, "args"    # [Ljava/lang/String;

    .line 201
    const-string v0, "ims"

    invoke-static {p1, v0}, Lcom/oplus/util/OplusInputMethodUtil;->dynamicallyConfigDebugByDumpArgs([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodServiceExtImpl;->updateDebugToClass()V

    .line 204
    :cond_0
    return-void
.end method

.method public blacklist hookHideImmediately(ILandroid/inputmethodservice/SoftInputWindow;)Z
    .locals 2
    .param p1, "flags"    # I
    .param p2, "window"    # Landroid/inputmethodservice/SoftInputWindow;

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hideImmediately: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodServiceExtImpl"

    invoke-static {v1, v0}, Lcom/oplus/util/OplusInputMethodUtil;->logDebugIme(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 132
    const/16 v1, 0x100

    if-ne p1, v1, :cond_0

    .line 133
    invoke-virtual {p2}, Landroid/inputmethodservice/SoftInputWindow;->hide()V

    .line 134
    return v0

    .line 136
    :cond_0
    const/16 v1, 0x1000

    if-ne p1, v1, :cond_1

    .line 137
    invoke-virtual {p2}, Landroid/inputmethodservice/SoftInputWindow;->hide()V

    .line 138
    const/4 v0, 0x1

    return v0

    .line 140
    :cond_1
    return v0

    .line 142
    :cond_2
    return v0
.end method

.method public blacklist hookOnColorChange(Landroid/net/Uri;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .line 147
    sget-object v0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->URI_KEYBOARD_POSITION:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "InputMethodServiceExtImpl"

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "keyboard_position"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->mKeyboardPosition:I

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mKeyboardPosition: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->mKeyboardPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oplus/util/OplusInputMethodUtil;->logDebugIme(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 151
    :cond_0
    sget-object v0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->URI_KEYBOARD_QUICK_SWITCH:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "keyboard_quick_switch"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->mKeyboardQuickSwitch:I

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mKeyboardQuickSwitch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->mKeyboardQuickSwitch:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oplus/util/OplusInputMethodUtil;->logDebugIme(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :cond_1
    sget-object v0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->URI_KEYBOARD_PREVENT_TOUCH:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x1

    const-string v3, "keyboard_prevent_touch"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->mKeyboardPreventTouch:I

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mKeyboardPreventTouch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->mKeyboardPreventTouch:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oplus/util/OplusInputMethodUtil;->logDebugIme(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 159
    :cond_2
    sget-object v0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->URI_SYSTEM_FOLDING_MODE_KEYS:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 160
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v3, "oplus_system_folding_mode"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->mFoldingMode:I

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mFoldingMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->mFoldingMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oplus/util/OplusInputMethodUtil;->logDebugIme(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-direct {p0, v0}, Landroid/inputmethodservice/InputMethodServiceExtImpl;->attachInfoToEditorInfo(Landroid/view/inputmethod/EditorInfo;)V

    .line 165
    :cond_3
    :goto_0
    return-void
.end method

.method public blacklist hookOnComputeRaise(Landroid/inputmethodservice/InputMethodService$Insets;Landroid/app/Dialog;)V
    .locals 10
    .param p1, "insets"    # Landroid/inputmethodservice/InputMethodService$Insets;
    .param p2, "dialog"    # Landroid/app/Dialog;

    .line 96
    iget v0, p0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->mContentTopInsets:I

    const-string v1, "InputMethodServiceExtImpl"

    const-string v2, "->"

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    iget-boolean v0, v0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    if-nez v0, :cond_0

    iget v0, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    iget v3, p0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->mContentTopInsets:I

    if-eq v0, v3, :cond_0

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hookOnComputeRaise restore contentTopInsets:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->mContentTopInsets:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/util/OplusInputMethodUtil;->logDebugIme(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget v0, p0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->mContentTopInsets:I

    iput v0, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    .line 102
    :cond_0
    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 103
    .local v0, "decorView":Landroid/view/View;
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v3}, Landroid/inputmethodservice/InputMethodService;->isExtractViewShown()Z

    move-result v3

    .line 104
    .local v3, "isExtractViewShown":Z
    iget-object v4, p0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    iget-object v4, v4, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    move v4, v6

    .line 105
    .local v4, "inputFrameVisible":Z
    :goto_0
    if-eqz v4, :cond_2

    if-nez v3, :cond_2

    iget-object v7, p0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->mContext:Landroid/content/Context;

    iget v8, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    .line 106
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-static {v7, v8, v9}, Lcom/oplus/util/OplusInputMethodUtil;->isFloatingContentHeight(Landroid/content/Context;II)Z

    move-result v7

    if-eqz v7, :cond_2

    move v7, v5

    goto :goto_1

    :cond_2
    move v7, v6

    .line 107
    .local v7, "keyboardFloating":Z
    :goto_1
    iget v8, p0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->mContentTopInsets:I

    iget v9, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    if-eq v8, v9, :cond_3

    move v8, v5

    goto :goto_2

    :cond_3
    move v8, v6

    .line 108
    .local v8, "insetsChanged":Z
    :goto_2
    iget-boolean v9, p0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->mKeyboardFloating:Z

    if-eq v9, v7, :cond_4

    goto :goto_3

    :cond_4
    move v5, v6

    .line 109
    .local v5, "floatingChanged":Z
    :goto_3
    if-nez v8, :cond_5

    if-eqz v5, :cond_6

    .line 110
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "hookOnComputeRaise isExtractViewShown:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " keyboardFloating:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v9, p0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->mKeyboardFloating:Z

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " contentTopInsets:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v9, p0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->mContentTopInsets:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " decorHeight:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 114
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " touchableRegion:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p1, Landroid/inputmethodservice/InputMethodService$Insets;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " inputFrameVisible:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 110
    invoke-static {v1, v2}, Lcom/oplus/util/OplusInputMethodUtil;->logDebugIme(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iput-boolean v7, p0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->mKeyboardFloating:Z

    .line 118
    iget v1, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    iput v1, p0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->mContentTopInsets:I

    .line 120
    :cond_6
    if-eqz v5, :cond_7

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->mNavigationBarFrame:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_7

    .line 121
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 122
    .local v1, "navigationBarFrame":Landroid/view/View;
    if-eqz v1, :cond_7

    .line 123
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodServiceExtImpl;->updateNavigationBarOnShown(Landroid/view/View;)V

    .line 126
    .end local v1    # "navigationBarFrame":Landroid/view/View;
    :cond_7
    return-void
.end method

.method public blacklist hookOnCreate(Landroid/database/ContentObserver;Landroid/content/Context;)V
    .locals 4
    .param p1, "settingObserver"    # Landroid/database/ContentObserver;
    .param p2, "context"    # Landroid/content/Context;

    .line 169
    iput-object p2, p0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->mContext:Landroid/content/Context;

    .line 170
    invoke-static {}, Landroid/common/OplusFrameworkFactory;->getInstance()Landroid/common/OplusFrameworkFactory;

    move-result-object v0

    sget-object v1, Landroid/inputmethodservice/IOplusInputMethodServiceUtils;->DEFAULT:Landroid/inputmethodservice/IOplusInputMethodServiceUtils;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Landroid/common/OplusFrameworkFactory;->getFeature(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/IOplusInputMethodServiceUtils;

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->mOplusInputMethodServiceUtils:Landroid/inputmethodservice/IOplusInputMethodServiceUtils;

    .line 171
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Landroid/inputmethodservice/IOplusInputMethodServiceUtils;->init(Landroid/content/Context;)V

    .line 172
    sget-object v0, Lcom/oplus/font/IOplusFontManager;->DEFAULT:Lcom/oplus/font/IOplusFontManager;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/oplus/font/IOplusFontManager;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oplus/font/IOplusFontManager;->setIMEFlag(Z)V

    .line 173
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Landroid/inputmethodservice/InputMethodServiceExtImpl;->URI_KEYBOARD_POSITION:Landroid/net/Uri;

    invoke-virtual {v0, v3, v2, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 175
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Landroid/inputmethodservice/InputMethodServiceExtImpl;->URI_KEYBOARD_QUICK_SWITCH:Landroid/net/Uri;

    invoke-virtual {v0, v3, v2, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 177
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Landroid/inputmethodservice/InputMethodServiceExtImpl;->URI_KEYBOARD_PREVENT_TOUCH:Landroid/net/Uri;

    invoke-virtual {v0, v3, v2, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 179
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Landroid/inputmethodservice/InputMethodServiceExtImpl;->URI_SYSTEM_FOLDING_MODE_KEYS:Landroid/net/Uri;

    invoke-virtual {v0, v3, v2, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 181
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "keyboard_position"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->mKeyboardPosition:I

    .line 183
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "keyboard_quick_switch"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->mKeyboardQuickSwitch:I

    .line 185
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "oplus_system_folding_mode"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->mFoldingMode:I

    .line 187
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "keyboard_prevent_touch"

    const/4 v3, -0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->mKeyboardPreventTouch:I

    .line 189
    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v0

    .line 190
    const-string v2, "oplus.software.inputmethod.cn"

    invoke-virtual {v0, v2}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->mIsExpRom:Z

    .line 192
    return-void
.end method

.method public blacklist hookOnDestroy()V
    .locals 1

    .line 196
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->mOplusInputMethodServiceUtils:Landroid/inputmethodservice/IOplusInputMethodServiceUtils;

    invoke-interface {v0}, Landroid/inputmethodservice/IOplusInputMethodServiceUtils;->onDestroy()V

    .line 197
    return-void
.end method

.method public blacklist isFoldDisplayOpen()Z
    .locals 2

    .line 223
    iget v0, p0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->mFoldingMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public blacklist logDebug(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 257
    const-string v0, "InputMethodServiceExtImpl"

    invoke-static {v0, p1}, Lcom/oplus/util/OplusInputMethodUtil;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    return-void
.end method

.method public blacklist logDebugIme(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 262
    const-string v0, "InputMethodServiceExtImpl"

    invoke-static {v0, p1}, Lcom/oplus/util/OplusInputMethodUtil;->logDebugIme(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method public blacklist logMethodCallers(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 267
    const-string v0, "InputMethodServiceExtImpl"

    invoke-static {v0, p1}, Lcom/oplus/util/OplusInputMethodUtil;->logMethodCallers(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    return-void
.end method

.method public blacklist onEditorInfoUpdate(Landroid/view/inputmethod/EditorInfo;)V
    .locals 5
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;

    .line 228
    const-string v0, "com.oplus.im.SCENES"

    const-string v1, "InputMethodServiceExtImpl"

    if-eqz p1, :cond_1

    .line 229
    iget-object v2, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-nez v2, :cond_0

    .line 230
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 232
    :cond_0
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->mLastEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v2, :cond_1

    iget-object v2, v2, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 233
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 234
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->mLastEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v2, v2, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 235
    .local v2, "lastScenes":I
    iget-object v3, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 236
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onEditorInfoUpdate restore scenes = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/oplus/util/OplusInputMethodUtil;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    .end local v2    # "lastScenes":I
    :cond_1
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->mLastEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 240
    invoke-static {}, Lcom/oplus/util/OplusInputMethodUtil;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz p1, :cond_5

    .line 241
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v3, 0x2000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    .line 242
    const-string v2, "onEditorInfoUpdate attribute contains IME_FLAG_NO_FULLSCREEN"

    invoke-static {v1, v2}, Lcom/oplus/util/OplusInputMethodUtil;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :cond_2
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v3, 0x10000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_3

    .line 245
    const-string v2, "onEditorInfoUpdate attribute contains IME_FLAG_NO_EXTRACT_UI"

    invoke-static {v1, v2}, Lcom/oplus/util/OplusInputMethodUtil;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_3
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->internalImeOptions:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    .line 248
    const-string v2, "onEditorInfoUpdate attribute contains IME_INTERNAL_FLAG_APP_WINDOW_PORTRAIT"

    invoke-static {v1, v2}, Lcom/oplus/util/OplusInputMethodUtil;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :cond_4
    iget-object v2, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 251
    .local v0, "scenes":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEditorInfoUpdate scenes = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/util/OplusInputMethodUtil;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .end local v0    # "scenes":I
    :cond_5
    return-void
.end method

.method public blacklist updateExclusionRects(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 208
    .local p1, "exclusionRects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    if-eqz p1, :cond_3

    .line 209
    iget v0, p0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->mKeyboardPreventTouch:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 210
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->mIsExpRom:Z

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .line 211
    .local v0, "shouldPreventTouch":Z
    if-nez v0, :cond_2

    .line 212
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 214
    :cond_2
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->mLastExclusionRects:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 215
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->mLastExclusionRects:Ljava/util/List;

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateExclusionRects "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->mLastExclusionRects:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputMethodServiceExtImpl"

    invoke-static {v2, v1}, Lcom/oplus/util/OplusInputMethodUtil;->logDebugIme(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    .end local v0    # "shouldPreventTouch":Z
    :cond_3
    return-void
.end method

.method public blacklist updateExtractViewStyle(Landroid/view/View;)V
    .locals 3
    .param p1, "extractFrame"    # Landroid/view/View;

    .line 302
    :try_start_0
    invoke-static {p1}, Landroid/inputmethodservice/OplusExtractViewHelper;->updateExtractViewStyle(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    goto :goto_0

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "InputMethodServiceExtImpl"

    const-string v2, "updateExtractViewStyle"

    invoke-static {v1, v2, v0}, Lcom/oplus/util/OplusInputMethodUtil;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 306
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public blacklist updateNavButtonFlags(I)I
    .locals 2
    .param p1, "navButtonFlags"    # I

    .line 290
    iget v0, p0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->mKeyboardQuickSwitch:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateNavButtonFlags: hide switcher, mKeyboardQuickSwitch = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->mKeyboardQuickSwitch:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodServiceExtImpl"

    invoke-static {v1, v0}, Lcom/oplus/util/OplusInputMethodUtil;->logDebugIme(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    and-int/lit8 v0, p1, -0x3

    return v0

    .line 296
    :cond_0
    return p1
.end method

.method public blacklist updateNavigationBarOnShown(Landroid/view/View;)V
    .locals 6
    .param p1, "navigationBarFrame"    # Landroid/view/View;

    .line 272
    if-eqz p1, :cond_4

    .line 273
    nop

    .line 274
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->mKeyboardPosition:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 275
    :goto_0
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodServiceExtImpl;->isFoldDisplayOpen()Z

    move-result v4

    .line 273
    const-string v5, "InputMethodServiceExtImpl"

    invoke-static {v5, v0, v3, v1, v4}, Lcom/oplus/util/OplusInputMethodUtil;->shouldKeyboardRaise(Ljava/lang/String;Landroid/content/Context;ZZZ)Z

    move-result v0

    .line 276
    .local v0, "shouldKeyboardRaise":Z
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->mKeyboardFloating:Z

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    move v1, v3

    .line 277
    .local v1, "showNavigationBar":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateNavigationBarOnShown showNavigationBar:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " shouldKeyboardRaise:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mKeyboardFloating:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->mKeyboardFloating:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/oplus/util/OplusInputMethodUtil;->logDebugIme(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x4

    :goto_2
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 282
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->mNavigationBarFrame:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_4

    .line 283
    :cond_3
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/inputmethodservice/InputMethodServiceExtImpl;->mNavigationBarFrame:Ljava/lang/ref/WeakReference;

    .line 286
    .end local v0    # "shouldKeyboardRaise":Z
    .end local v1    # "showNavigationBar":Z
    :cond_4
    return-void
.end method
