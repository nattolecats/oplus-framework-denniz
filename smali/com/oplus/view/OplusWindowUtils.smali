.class public final Lcom/oplus/view/OplusWindowUtils;
.super Ljava/lang/Object;
.source "OplusWindowUtils.java"


# static fields
.field private static final blacklist DIRECT_APPS:[Ljava/lang/String;

.field public static final whitelist PACKAGE_ASSISTANTSCREEN:Ljava/lang/String; = "com.coloros.assistantscreen"

.field public static final whitelist PACKAGE_DIRECTSERVICE:Ljava/lang/String; = "com.coloros.colordirectservice"

.field public static final whitelist PACKAGE_DIRECTUI:Ljava/lang/String; = "com.coloros.directui"

.field public static final whitelist PACKAGE_EXSERVICEUI:Ljava/lang/String; = "com.oplus.exserviceui"

.field public static final whitelist PACKAGE_FLOATASSISTANT:Ljava/lang/String; = "com.coloros.floatassistant"

.field public static final whitelist PACKAGE_GALLERY:Ljava/lang/String; = "gallery3d"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PACKAGE_INCALL:Ljava/lang/String; = "com.android.incallui"

.field public static final whitelist PACKAGE_SCREENSHOT:Ljava/lang/String; = "com.oplus.screenshot"

.field public static final whitelist PACKAGE_SYSTEMUI:Ljava/lang/String; = "com.android.systemui"

.field public static final whitelist PACKAGE_TALKBACK:Ljava/lang/String; = "com.google.android.marvin.talkback"

.field private static final blacklist SYSTEMUI_BARS:[Ljava/lang/String;

.field private static final blacklist TITLE_DIALOG_VOLUME:Ljava/lang/String; = "VolumeDialogImplEx"

.field private static final blacklist TITLE_EDGE_FLOATBAR:Ljava/lang/String; = "ColorOSEdgeFloatBar"

.field private static final blacklist TITLE_EDGE_PANEL:Ljava/lang/String; = "ColorOSEdgePanel"

.field private static final blacklist TITLE_NOTIFICATIONSHADE:Ljava/lang/String; = "NotificationShade"

.field private static final blacklist TITLE_SHORTCUTS_PANEL:Ljava/lang/String; = "ShortcutsPanel"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 72
    const-string v0, "TickerPanel"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/view/OplusWindowUtils;->SYSTEMUI_BARS:[Ljava/lang/String;

    .line 77
    const-string v0, "com.coloros.directui"

    const-string v1, "com.coloros.colordirectservice"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/view/OplusWindowUtils;->DIRECT_APPS:[Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist isAssistantScreen(Ljava/lang/String;)Z
    .locals 1
    .param p0, "owningPackage"    # Ljava/lang/String;

    .line 208
    const-string v0, "com.coloros.assistantscreen"

    invoke-static {p0, v0}, Lcom/oplus/view/OplusWindowUtils;->isPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static whitelist isDirectApp(Ljava/lang/String;)Z
    .locals 6
    .param p0, "owningPackage"    # Ljava/lang/String;

    .line 166
    sget-object v0, Lcom/oplus/view/OplusWindowUtils;->DIRECT_APPS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 167
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 168
    const/4 v0, 0x1

    return v0

    .line 166
    .end local v4    # "name":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 171
    :cond_1
    return v2
.end method

.method public static whitelist isEdgeFloatBar(I)Z
    .locals 1
    .param p0, "type"    # I

    .line 105
    const/16 v0, 0x90a

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static whitelist isEdgeFloatBarTitle(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "title"    # Ljava/lang/CharSequence;

    .line 179
    const-string v0, "ColorOSEdgeFloatBar"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static whitelist isEdgePanelTitle(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "title"    # Ljava/lang/CharSequence;

    .line 183
    const-string v0, "ColorOSEdgePanel"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static whitelist isExServiceUiApp(Ljava/lang/String;)Z
    .locals 1
    .param p0, "owningPackage"    # Ljava/lang/String;

    .line 146
    const-string v0, "com.oplus.exserviceui"

    invoke-static {p0, v0}, Lcom/oplus/view/OplusWindowUtils;->isPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static whitelist isExpand(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 3
    .param p0, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 187
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 188
    return v1

    .line 190
    :cond_0
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v0, v2, :cond_1

    .line 191
    return v1

    .line 193
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static whitelist isFloatAssistant(Ljava/lang/String;)Z
    .locals 1
    .param p0, "owningPackage"    # Ljava/lang/String;

    .line 158
    const-string v0, "com.coloros.floatassistant"

    invoke-static {p0, v0}, Lcom/oplus/view/OplusWindowUtils;->isPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static whitelist isGallery(Ljava/lang/String;)Z
    .locals 1
    .param p0, "owningPackage"    # Ljava/lang/String;

    .line 162
    const-string v0, "gallery3d"

    invoke-static {p0, v0}, Lcom/oplus/view/OplusWindowUtils;->isPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static whitelist isInputMethodWindow(ILjava/lang/CharSequence;)Z
    .locals 1
    .param p0, "windowType"    # I
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 86
    packed-switch p0, :pswitch_data_0

    .line 91
    const/4 v0, 0x0

    return v0

    .line 88
    :pswitch_0
    const-string v0, "InputMethod"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x7db
        :pswitch_0
    .end packed-switch
.end method

.method public static whitelist isNavigationBar(I)Z
    .locals 1
    .param p0, "type"    # I

    .line 101
    const/16 v0, 0x7e3

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static whitelist isNotificationShade(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "title"    # Ljava/lang/CharSequence;

    .line 215
    const-string v0, "NotificationShade"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static blacklist isPackage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "owningPackage"    # Ljava/lang/String;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 223
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static whitelist isScreenshotApp(Ljava/lang/String;)Z
    .locals 1
    .param p0, "owningPackage"    # Ljava/lang/String;

    .line 150
    const-string v0, "com.oplus.screenshot"

    invoke-static {p0, v0}, Lcom/oplus/view/OplusWindowUtils;->isPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static whitelist isShortcutsPanel(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "title"    # Ljava/lang/CharSequence;

    .line 138
    const-string v0, "ShortcutsPanel"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static whitelist isStatusBar(I)Z
    .locals 1
    .param p0, "type"    # I

    .line 97
    const/16 v0, 0x7d0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static whitelist isSystemFloatBar(ILjava/lang/CharSequence;)Z
    .locals 1
    .param p0, "type"    # I
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 113
    invoke-static {p0}, Lcom/oplus/view/OplusWindowUtils;->isEdgeFloatBar(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    const/4 v0, 0x1

    return v0

    .line 116
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist isSystemHeadsUp(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .param p0, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 109
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static whitelist isSystemInCallApp(Ljava/lang/String;)Z
    .locals 1
    .param p0, "owningPackage"    # Ljava/lang/String;

    .line 175
    const-string v0, "com.android.incallui"

    invoke-static {p0, v0}, Lcom/oplus/view/OplusWindowUtils;->isPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static whitelist isSystemUiApp(Ljava/lang/String;)Z
    .locals 1
    .param p0, "owningPackage"    # Ljava/lang/String;

    .line 154
    const-string v0, "com.android.systemui"

    invoke-static {p0, v0}, Lcom/oplus/view/OplusWindowUtils;->isPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static whitelist isSystemUiBar(ILjava/lang/CharSequence;)Z
    .locals 7
    .param p0, "type"    # I
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 120
    invoke-static {p0}, Lcom/oplus/view/OplusWindowUtils;->isNavigationBar(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 121
    return v1

    .line 123
    :cond_0
    invoke-static {p0}, Lcom/oplus/view/OplusWindowUtils;->isStatusBar(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    return v1

    .line 127
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 128
    sget-object v0, Lcom/oplus/view/OplusWindowUtils;->SYSTEMUI_BARS:[Ljava/lang/String;

    array-length v3, v0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v0, v4

    .line 129
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 130
    return v1

    .line 128
    .end local v5    # "name":Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 134
    :cond_3
    return v2
.end method

.method public static whitelist isSystemWindow(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .param p0, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 197
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d0

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static whitelist isTalkBack(Ljava/lang/String;)Z
    .locals 1
    .param p0, "owningPackage"    # Ljava/lang/String;

    .line 202
    const-string v0, "com.google.android.marvin.talkback"

    invoke-static {p0, v0}, Lcom/oplus/view/OplusWindowUtils;->isPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static whitelist isVolumeDialog(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "title"    # Ljava/lang/CharSequence;

    .line 142
    const-string v0, "VolumeDialogImplEx"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
