.class public Lcom/oplus/util/OplusInputMethodUtil;
.super Ljava/lang/Object;
.source "OplusInputMethodUtil.java"


# static fields
.field private static final blacklist CALLER_DEPTH:I = 0xa

.field private static final blacklist CALLER_START:I = 0x1

.field private static final blacklist DEBUG_FIELD:Ljava/lang/String; = "DEBUG"

.field private static final blacklist DISPLAY_APP_MIRAGE:Ljava/lang/String; = "Mirage_appshare_display"

.field private static final blacklist DISPLAY_CAR_MIRAGE:Ljava/lang/String; = "Mirage_car_display"

.field private static final blacklist DISPLAY_PC_MIRAGE:Ljava/lang/String; = "Mirage_pc_display"

.field private static final blacklist DISPLAY_PUTT:Ljava/lang/String; = "OplusPuttDisplay"

.field private static final blacklist DUMP_ARG_ALL:Ljava/lang/String; = "all"

.field private static final blacklist DUMP_ARG_ALWAYS:Ljava/lang/String; = "always"

.field private static final blacklist DUMP_ARG_LOG:Ljava/lang/String; = "log"

.field private static final blacklist DUMP_ARG_OFF:Ljava/lang/String; = "0"

.field private static final blacklist DUMP_ARG_ON:Ljava/lang/String; = "1"

.field private static final blacklist DUMP_IMMS:Ljava/lang/String; = "imms"

.field private static final blacklist FEATURE_FOLD:Ljava/lang/String; = "oplus.hardware.type.fold"

.field private static final blacklist FEATURE_REMAP_DISPLAY_DISABLED:Ljava/lang/String; = "oplus.software.fold_remap_display_disabled"

.field public static final blacklist FLAG_CALL_BY_USER_WHEN_START_INPUT_FAIL:I = 0x100

.field public static final blacklist GBOARD_INPUTMETHOD_PACKAGE:Ljava/lang/String; = "com.google.android.inputmethod.latin"

.field public static final blacklist HIDE_SECURE_KEYBOARD:I = 0x100

.field public static final blacklist HIDE_SECURE_KEYBOARD_ONLY:I = 0x1000

.field public static final blacklist INPUT_METHOD_WINDOW_MODE_FOLDING_MODE:I = 0x10

.field public static final blacklist INPUT_METHOD_WINDOW_MODE_GAME_MODE:I = 0x8

.field public static final blacklist INPUT_METHOD_WINDOW_MODE_SIMPLE_MODE:I = 0x4

.field public static final blacklist INPUT_METHOD_WINDOW_MODE_SPLIT_SCREEN:I = 0x1

.field public static final blacklist INPUT_METHOD_WINDOW_MODE_ZOOM:I = 0x2

.field private static final blacklist KEY_IME_LOG:Ljava/lang/String; = "persist.sys.assert.imelog"

.field private static final blacklist KEY_IME_LOG_ALWAYS_ON:Ljava/lang/String; = "persist.sys.assert.imelog_alwayson"

.field public static final blacklist KEY_INPUT_METHOD_SCENES:Ljava/lang/String; = "com.oplus.im.SCENES"

.field private static final blacklist KEY_PANIC:Ljava/lang/String; = "persist.sys.assert.panic"

.field private static final blacklist MIN_CONTENT_HEIGHT:I = 0x3a

.field public static final blacklist REASON_HIDE_SECURE_KEYBOARD:I = 0x3e8

.field public static final blacklist REASON_HIDE_SECURE_KEYBOARD_ONLY:I = 0x3e9

.field private static final blacklist TAG:Ljava/lang/String; = "OplusInputMethodUtil"

.field private static blacklist sAlwaysOn:Z

.field private static blacklist sDebug:Z

.field private static blacklist sDebugIme:Z

.field private static blacklist sFoldable:Ljava/lang/Boolean;

.field private static blacklist sRemapDisplayDisabled:Ljava/lang/Boolean;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 89
    const-string v0, "persist.sys.assert.imelog_alwayson"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oplus/util/OplusInputMethodUtil;->sAlwaysOn:Z

    .line 90
    const/4 v2, 0x1

    if-nez v0, :cond_1

    const-string v0, "persist.sys.assert.imelog"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/oplus/util/OplusInputMethodUtil;->sDebugIme:Z

    .line 91
    if-nez v0, :cond_2

    const-string v0, "persist.sys.assert.panic"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    sput-boolean v1, Lcom/oplus/util/OplusInputMethodUtil;->sDebug:Z

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init sDebug to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/oplus/util/OplusInputMethodUtil;->sDebug:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", init sDebugIme to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/oplus/util/OplusInputMethodUtil;->sDebugIme:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", init sAlwaysOn to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/oplus/util/OplusInputMethodUtil;->sAlwaysOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusInputMethodUtil"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist dynamicallyConfigDebugByDumpArgs([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p0, "args"    # [Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dynamicallyConfigDebugByDumpArgs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusInputMethodUtil"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 v0, 0x0

    if-eqz p0, :cond_9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    array-length v2, p0

    const/4 v3, 0x2

    if-le v2, v3, :cond_9

    aget-object v2, p0, v0

    .line 100
    const-string v4, "log"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 101
    const/4 v2, 0x1

    aget-object v4, p0, v2

    const-string v5, "all"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v6, "always"

    if-nez v4, :cond_0

    aget-object v4, p0, v2

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 102
    :cond_0
    const-string v4, "imms"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v7, "persist.sys.assert.imelog"

    const-string v8, "persist.sys.assert.imelog_alwayson"

    if-eqz v4, :cond_4

    .line 103
    const/4 v4, 0x0

    .line 104
    .local v4, "on":Ljava/lang/Boolean;
    aget-object v9, p0, v3

    const-string v10, "1"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 105
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 106
    :cond_1
    aget-object v3, p0, v3

    const-string v9, "0"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 107
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 109
    :cond_2
    :goto_0
    if-eqz v4, :cond_4

    .line 110
    aget-object v3, p0, v2

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 111
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 112
    :cond_3
    aget-object v3, p0, v2

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 113
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .end local v4    # "on":Ljava/lang/Boolean;
    :cond_4
    :goto_1
    invoke-static {v8, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/oplus/util/OplusInputMethodUtil;->sAlwaysOn:Z

    .line 118
    if-nez v3, :cond_6

    invoke-static {v7, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    move v3, v0

    goto :goto_3

    :cond_6
    :goto_2
    move v3, v2

    :goto_3
    sput-boolean v3, Lcom/oplus/util/OplusInputMethodUtil;->sDebugIme:Z

    .line 119
    if-nez v3, :cond_7

    const-string v3, "persist.sys.assert.panic"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    move v0, v2

    :cond_8
    sput-boolean v0, Lcom/oplus/util/OplusInputMethodUtil;->sDebug:Z

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update sDebug to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v3, Lcom/oplus/util/OplusInputMethodUtil;->sDebug:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", update sDebugIme to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v3, Lcom/oplus/util/OplusInputMethodUtil;->sDebugIme:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", update sAlwaysOn to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v3, Lcom/oplus/util/OplusInputMethodUtil;->sAlwaysOn:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return v2

    .line 125
    :cond_9
    return v0
.end method

.method public static blacklist existMirageDisplay(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 175
    invoke-static {p0}, Lcom/oplus/util/OplusInputMethodUtil;->getDisplayManager(Landroid/content/Context;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    .line 176
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 177
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v2

    .line 178
    .local v2, "displays":[Landroid/view/Display;
    if-eqz v2, :cond_1

    .line 179
    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 180
    .local v5, "display":Landroid/view/Display;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/oplus/util/OplusInputMethodUtil;->isMirageDisplay(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 181
    const/4 v1, 0x1

    return v1

    .line 179
    .end local v5    # "display":Landroid/view/Display;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 186
    .end local v2    # "displays":[Landroid/view/Display;
    :cond_1
    return v1
.end method

.method public static blacklist getDisplay(Landroid/content/Context;I)Landroid/view/Display;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "displayId"    # I

    .line 165
    invoke-static {p0}, Lcom/oplus/util/OplusInputMethodUtil;->getDisplayManager(Landroid/content/Context;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    .line 166
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private static blacklist getDisplayManager(Landroid/content/Context;)Landroid/hardware/display/DisplayManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 161
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "display"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    :goto_0
    return-object v0
.end method

.method public static blacklist getDisplayName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "displayId"    # I

    .line 170
    invoke-static {p0, p1}, Lcom/oplus/util/OplusInputMethodUtil;->getDisplay(Landroid/content/Context;I)Landroid/view/Display;

    move-result-object v0

    .line 171
    .local v0, "display":Landroid/view/Display;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static blacklist isAppMirageDisplay(Landroid/content/Context;I)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "displayId"    # I

    .line 203
    invoke-static {p0, p1}, Lcom/oplus/util/OplusInputMethodUtil;->getDisplayName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "displayName":Ljava/lang/String;
    invoke-static {v0}, Lcom/oplus/util/OplusInputMethodUtil;->isAppMirageDisplay(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static blacklist isAppMirageDisplay(Ljava/lang/String;)Z
    .locals 1
    .param p0, "displayName"    # Ljava/lang/String;

    .line 199
    const-string v0, "Mirage_appshare_display"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isCarMirageDisplay(Landroid/content/Context;I)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "displayId"    # I

    .line 194
    invoke-static {p0, p1}, Lcom/oplus/util/OplusInputMethodUtil;->getDisplayName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "displayName":Ljava/lang/String;
    invoke-static {v0}, Lcom/oplus/util/OplusInputMethodUtil;->isCarMirageDisplay(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static blacklist isCarMirageDisplay(Ljava/lang/String;)Z
    .locals 1
    .param p0, "displayName"    # Ljava/lang/String;

    .line 190
    const-string v0, "Mirage_car_display"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isDebug()Z
    .locals 1

    .line 287
    sget-boolean v0, Lcom/oplus/util/OplusInputMethodUtil;->sDebug:Z

    return v0
.end method

.method public static blacklist isDebugIme()Z
    .locals 1

    .line 291
    sget-boolean v0, Lcom/oplus/util/OplusInputMethodUtil;->sDebugIme:Z

    return v0
.end method

.method public static blacklist isFloatingContentHeight(Landroid/content/Context;II)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentTop"    # I
    .param p2, "contentBottom"    # I

    .line 326
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 327
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x42680000    # 58.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 328
    .local v1, "minHeight":I
    sub-int v2, p2, p1

    if-ge v2, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 330
    .end local v1    # "minHeight":I
    :cond_1
    return v0
.end method

.method public static blacklist isFoldDisplay()Z
    .locals 2

    .line 295
    sget-object v0, Lcom/oplus/util/OplusInputMethodUtil;->sFoldable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 296
    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v0

    const-string v1, "oplus.hardware.type.fold"

    invoke-virtual {v0, v1}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/oplus/util/OplusInputMethodUtil;->sFoldable:Ljava/lang/Boolean;

    .line 298
    :cond_0
    sget-object v0, Lcom/oplus/util/OplusInputMethodUtil;->sFoldable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static blacklist isMirageDisplay(Landroid/content/Context;I)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "displayId"    # I

    .line 222
    invoke-static {p0, p1}, Lcom/oplus/util/OplusInputMethodUtil;->getDisplayName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "displayName":Ljava/lang/String;
    invoke-static {v0}, Lcom/oplus/util/OplusInputMethodUtil;->isMirageDisplay(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static blacklist isMirageDisplay(Ljava/lang/String;)Z
    .locals 1
    .param p0, "displayName"    # Ljava/lang/String;

    .line 217
    const-string v0, "Mirage_pc_display"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Mirage_car_display"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 218
    const-string v0, "Mirage_appshare_display"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 217
    :goto_1
    return v0
.end method

.method public static blacklist isPcMirageDisplay(Landroid/content/Context;I)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "displayId"    # I

    .line 212
    invoke-static {p0, p1}, Lcom/oplus/util/OplusInputMethodUtil;->getDisplayName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "displayName":Ljava/lang/String;
    invoke-static {v0}, Lcom/oplus/util/OplusInputMethodUtil;->isPcMirageDisplay(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static blacklist isPcMirageDisplay(Ljava/lang/String;)Z
    .locals 1
    .param p0, "displayName"    # Ljava/lang/String;

    .line 208
    const-string v0, "Mirage_pc_display"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isPuttDisplay(Ljava/lang/String;)Z
    .locals 1
    .param p0, "displayName"    # Ljava/lang/String;

    .line 227
    const-string v0, "OplusPuttDisplay"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isRemapDisplayDisabled()Z
    .locals 2

    .line 302
    sget-object v0, Lcom/oplus/util/OplusInputMethodUtil;->sRemapDisplayDisabled:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 303
    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v0

    .line 304
    const-string v1, "oplus.software.fold_remap_display_disabled"

    invoke-virtual {v0, v1}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    .line 303
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/oplus/util/OplusInputMethodUtil;->sRemapDisplayDisabled:Ljava/lang/Boolean;

    .line 306
    :cond_0
    sget-object v0, Lcom/oplus/util/OplusInputMethodUtil;->sRemapDisplayDisabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static blacklist log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .line 235
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    return-void
.end method

.method public static blacklist logDebug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .line 239
    sget-boolean v0, Lcom/oplus/util/OplusInputMethodUtil;->sDebug:Z

    if-eqz v0, :cond_0

    .line 240
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_0
    return-void
.end method

.method public static blacklist logDebugIme(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .line 245
    sget-boolean v0, Lcom/oplus/util/OplusInputMethodUtil;->sDebugIme:Z

    if-eqz v0, :cond_0

    .line 246
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_0
    return-void
.end method

.method public static blacklist logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 231
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 232
    return-void
.end method

.method public static blacklist logMethodCallers(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .line 251
    sget-boolean v0, Lcom/oplus/util/OplusInputMethodUtil;->sDebugIme:Z

    if-eqz v0, :cond_0

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " callers: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Landroid/os/Debug;->getCallers(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 253
    :cond_0
    sget-boolean v0, Lcom/oplus/util/OplusInputMethodUtil;->sDebug:Z

    if-eqz v0, :cond_1

    .line 254
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_1
    :goto_0
    return-void
.end method

.method public static blacklist shouldKeyboardRaise(Ljava/lang/String;Landroid/content/Context;ZZZ)Z
    .locals 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isNavGestureMode"    # Z
    .param p3, "isPositionRaise"    # Z
    .param p4, "isFoldDisplayOpen"    # Z

    .line 311
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/OplusBaseConfiguration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/OplusBaseConfiguration;->orientation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 313
    .local v0, "isPortrait":Z
    :goto_0
    invoke-static {}, Lcom/oplus/util/OplusInputMethodUtil;->isRemapDisplayDisabled()Z

    move-result v3

    .line 314
    .local v3, "isRemapDisplayDisabled":Z
    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    if-nez v0, :cond_1

    if-eqz p4, :cond_2

    if-nez v3, :cond_2

    :cond_1
    move v1, v2

    .line 316
    .local v1, "shouldKeyboardRaise":Z
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shouldKeyboardRaise = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", isNavGestureMode = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", isPositionRaise = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", isPortrait = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", isRemapDisplayDisabled = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", isFoldDisplayOpen = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/oplus/util/OplusInputMethodUtil;->logDebugIme(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    return v1
.end method

.method public static blacklist slog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .line 263
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    return-void
.end method

.method public static blacklist slogDebug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .line 267
    sget-boolean v0, Lcom/oplus/util/OplusInputMethodUtil;->sDebug:Z

    if-eqz v0, :cond_0

    .line 268
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_0
    return-void
.end method

.method public static blacklist slogDebugIme(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .line 273
    sget-boolean v0, Lcom/oplus/util/OplusInputMethodUtil;->sDebugIme:Z

    if-eqz v0, :cond_0

    .line 274
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_0
    return-void
.end method

.method public static blacklist slogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 259
    invoke-static {p0, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 260
    return-void
.end method

.method public static blacklist slogMethodCallers(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .line 279
    sget-boolean v0, Lcom/oplus/util/OplusInputMethodUtil;->sDebugIme:Z

    if-eqz v0, :cond_0

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " callers: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Landroid/os/Debug;->getCallers(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 281
    :cond_0
    sget-boolean v0, Lcom/oplus/util/OplusInputMethodUtil;->sDebug:Z

    if-eqz v0, :cond_1

    .line 282
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_1
    :goto_0
    return-void
.end method

.method public static blacklist updateDebugImeToClass(Ljava/lang/Class;)V
    .locals 2
    .param p0, "clz"    # Ljava/lang/Class;

    .line 137
    sget-boolean v0, Lcom/oplus/util/OplusInputMethodUtil;->sDebugIme:Z

    const-string v1, "DEBUG"

    invoke-static {p0, v1, v0}, Lcom/oplus/util/OplusInputMethodUtil;->updateDebugToClass(Ljava/lang/Class;Ljava/lang/String;Z)V

    .line 138
    return-void
.end method

.method public static blacklist updateDebugImeToClass(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .param p0, "clz"    # Ljava/lang/Class;
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 141
    sget-boolean v0, Lcom/oplus/util/OplusInputMethodUtil;->sDebugIme:Z

    invoke-static {p0, p1, v0}, Lcom/oplus/util/OplusInputMethodUtil;->updateDebugToClass(Ljava/lang/Class;Ljava/lang/String;Z)V

    .line 142
    return-void
.end method

.method public static blacklist updateDebugToClass(Ljava/lang/Class;)V
    .locals 2
    .param p0, "clz"    # Ljava/lang/Class;

    .line 129
    sget-boolean v0, Lcom/oplus/util/OplusInputMethodUtil;->sDebug:Z

    const-string v1, "DEBUG"

    invoke-static {p0, v1, v0}, Lcom/oplus/util/OplusInputMethodUtil;->updateDebugToClass(Ljava/lang/Class;Ljava/lang/String;Z)V

    .line 130
    return-void
.end method

.method public static blacklist updateDebugToClass(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .param p0, "clz"    # Ljava/lang/Class;
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 133
    sget-boolean v0, Lcom/oplus/util/OplusInputMethodUtil;->sDebug:Z

    invoke-static {p0, p1, v0}, Lcom/oplus/util/OplusInputMethodUtil;->updateDebugToClass(Ljava/lang/Class;Ljava/lang/String;Z)V

    .line 134
    return-void
.end method

.method private static blacklist updateDebugToClass(Ljava/lang/Class;Ljava/lang/String;Z)V
    .locals 5
    .param p0, "clz"    # Ljava/lang/Class;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "debug"    # Z

    .line 145
    const-string v0, "updateDebugToClass fail"

    const-string v1, "OplusInputMethodUtil"

    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 147
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 148
    .local v2, "debugField":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 149
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 150
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDebugToClass "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    nop

    .end local v2    # "debugField":Ljava/lang/reflect/Field;
    goto :goto_0

    .line 154
    :catch_0
    move-exception v2

    .line 155
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v1, v0, v2}, Lcom/oplus/util/OplusInputMethodUtil;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 152
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v2

    .line 153
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    invoke-static {v1, v0, v2}, Lcom/oplus/util/OplusInputMethodUtil;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 158
    .end local v2    # "e":Ljava/lang/NoSuchFieldException;
    :cond_0
    :goto_0
    return-void
.end method
