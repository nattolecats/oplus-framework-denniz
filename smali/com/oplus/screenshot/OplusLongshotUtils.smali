.class public final Lcom/oplus/screenshot/OplusLongshotUtils;
.super Ljava/lang/Object;
.source "OplusLongshotUtils.java"


# static fields
.field public static final whitelist INTENT_HOME:Landroid/content/Intent;

.field public static final whitelist PACKAGE_EXSERVICEUI:Ljava/lang/String; = "com.oplus.exserviceui"

.field public static final whitelist PACKAGE_GALLERY:Ljava/lang/String; = "gallery3d"

.field public static final whitelist PACKAGE_SCREENSHOT:Ljava/lang/String; = "com.oplus.screenshot"

.field public static final whitelist PACKAGE_SYSTEMUI:Ljava/lang/String; = "com.android.systemui"

.field private static final blacklist TAG:Ljava/lang/String; = "LongshotDump"

.field public static final whitelist TAG_LONGSHOT:Ljava/lang/String; = "Screenshot"

.field public static final whitelist VALUE_FIVE:I = 0x5

.field public static final whitelist VALUE_FOUR:I = 0x4

.field public static final whitelist VALUE_THREE:I = 0x3

.field public static final whitelist VALUE_TWO:I = 0x2

.field public static final whitelist VIEW_DECOR:Ljava/lang/String; = "com.android.internal.policy.impl.PhoneWindow$DecorView"

.field public static final whitelist VIEW_NAVIGATIONBAR:Ljava/lang/String; = "com.android.systemui.statusbar.phone.NavigationBarView"

.field public static final whitelist VIEW_STATUSBAR:Ljava/lang/String; = "com.android.systemui.statusbar.phone.StatusBarWindowView"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 53
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/oplus/screenshot/OplusLongshotUtils;->INTENT_HOME:Landroid/content/Intent;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist canScrollVertically(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 220
    const/4 v0, 0x0

    .line 222
    .local v0, "result":Z
    :try_start_0
    invoke-static {p0}, Lcom/oplus/screenshot/OplusLongshotUtils;->testScrollVertically(Landroid/view/View;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 226
    goto :goto_0

    .line 223
    :catch_0
    move-exception v1

    .line 225
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x1

    .line 227
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public static whitelist canScrollVerticallyForward(Lcom/oplus/screenshot/OplusLongshotViewBase;)Z
    .locals 1
    .param p0, "view"    # Lcom/oplus/screenshot/OplusLongshotViewBase;

    .line 231
    invoke-interface {p0}, Lcom/oplus/screenshot/OplusLongshotViewBase;->canLongScroll()Z

    move-result v0

    return v0
.end method

.method public static whitelist canScrollVerticallyWithPadding(Lcom/oplus/screenshot/OplusLongshotViewBase;I)Z
    .locals 4
    .param p0, "view"    # Lcom/oplus/screenshot/OplusLongshotViewBase;
    .param p1, "padding"    # I

    .line 235
    invoke-interface {p0}, Lcom/oplus/screenshot/OplusLongshotViewBase;->computeLongScrollOffset()I

    move-result v0

    .line 236
    .local v0, "offset":I
    invoke-interface {p0}, Lcom/oplus/screenshot/OplusLongshotViewBase;->computeLongScrollRange()I

    move-result v1

    invoke-interface {p0}, Lcom/oplus/screenshot/OplusLongshotViewBase;->computeLongScrollExtent()I

    move-result v2

    sub-int/2addr v1, v2

    .line 237
    .local v1, "range":I
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 238
    return v2

    .line 240
    :cond_0
    add-int/lit8 v3, v1, -0x1

    add-int/2addr v3, p1

    if-ge v0, v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public static whitelist getBaseClassNameOf(Landroid/view/View;)Ljava/lang/String;
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .line 172
    const/4 v0, 0x0

    .line 174
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 177
    goto :goto_0

    .line 175
    :catch_0
    move-exception v1

    .line 178
    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 179
    return-object v1

    .line 181
    :cond_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v2

    .line 183
    .local v2, "className":Ljava/lang/CharSequence;
    :try_start_1
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 186
    goto :goto_1

    .line 184
    :catch_1
    move-exception v3

    .line 187
    :goto_1
    if-nez v2, :cond_1

    .line 188
    return-object v1

    .line 190
    :cond_1
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist getScreenshotManager(Landroid/content/Context;)Lcom/oplus/screenshot/OplusScreenshotManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 63
    const-string v0, "color_screenshot"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/screenshot/OplusScreenshotManager;

    return-object v0
.end method

.method public static whitelist isAllSystemWindow(Ljava/lang/String;Ljava/lang/CharSequence;I)Z
    .locals 1
    .param p0, "owningPackage"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "type"    # I

    .line 161
    invoke-static {p0}, Lcom/oplus/screenshot/OplusLongshotUtils;->isScreenshotApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    const/4 v0, 0x1

    return v0

    .line 164
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/oplus/screenshot/OplusLongshotUtils;->isSystemWindow(Ljava/lang/String;Ljava/lang/CharSequence;I)Z

    move-result v0

    return v0
.end method

.method public static whitelist isDecorView(Ljava/lang/Object;)Z
    .locals 2
    .param p0, "view"    # Ljava/lang/Object;

    .line 120
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.internal.policy.impl.PhoneWindow$DecorView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static whitelist isDisabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/oplus/feature/OplusDisableFeatures$SystemCenter;->LONGSHOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static whitelist isExServiceUiApp(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/screenshot/OplusLongshotUtils;->isExServiceUiApp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static whitelist isExServiceUiApp(Ljava/lang/String;)Z
    .locals 1
    .param p0, "owningPackage"    # Ljava/lang/String;

    .line 96
    invoke-static {p0}, Lcom/oplus/view/OplusWindowUtils;->isExServiceUiApp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static whitelist isFloatAssistant(Ljava/lang/String;)Z
    .locals 1
    .param p0, "owningPackage"    # Ljava/lang/String;

    .line 244
    invoke-static {p0}, Lcom/oplus/view/OplusWindowUtils;->isFloatAssistant(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static whitelist isGallery(Ljava/lang/String;)Z
    .locals 1
    .param p0, "owningPackage"    # Ljava/lang/String;

    .line 248
    invoke-static {p0}, Lcom/oplus/view/OplusWindowUtils;->isGallery(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static whitelist isHomeApp(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lcom/oplus/screenshot/OplusLongshotUtils;->INTENT_HOME:Landroid/content/Intent;

    const/high16 v3, 0x10000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 87
    .local v1, "homeList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 88
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 89
    const/4 v2, 0x1

    return v2

    .line 91
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_0
    goto :goto_0

    .line 92
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public static whitelist isInputMethodWindow(ILjava/lang/CharSequence;)Z
    .locals 1
    .param p0, "windowType"    # I
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 168
    invoke-static {p0, p1}, Lcom/oplus/view/OplusWindowUtils;->isInputMethodWindow(ILjava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static whitelist isInstalled(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 71
    const-string v0, "isInstalled : "

    const-string v1, "LongshotDump"

    const/4 v2, 0x0

    .line 73
    .local v2, "result":Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 74
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const-string v4, "com.oplus.screenshot"

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    const/4 v2, 0x1

    .line 78
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/util/OplusLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    throw v3

    .line 76
    :catch_0
    move-exception v3

    .line 78
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/util/OplusLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    nop

    .line 80
    return v2
.end method

.method public static whitelist isNavigationBar(I)Z
    .locals 1
    .param p0, "type"    # I

    .line 136
    invoke-static {p0}, Lcom/oplus/view/OplusWindowUtils;->isNavigationBar(I)Z

    move-result v0

    return v0
.end method

.method public static whitelist isNavigationBarView(Ljava/lang/Object;)Z
    .locals 2
    .param p0, "view"    # Ljava/lang/Object;

    .line 128
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.systemui.statusbar.phone.NavigationBarView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static whitelist isScreenshotApp(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 108
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/screenshot/OplusLongshotUtils;->isScreenshotApp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static whitelist isScreenshotApp(Ljava/lang/String;)Z
    .locals 1
    .param p0, "owningPackage"    # Ljava/lang/String;

    .line 104
    invoke-static {p0}, Lcom/oplus/view/OplusWindowUtils;->isScreenshotApp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static whitelist isStatusBar(I)Z
    .locals 1
    .param p0, "type"    # I

    .line 132
    invoke-static {p0}, Lcom/oplus/view/OplusWindowUtils;->isStatusBar(I)Z

    move-result v0

    return v0
.end method

.method public static whitelist isStatusBarView(Ljava/lang/Object;)Z
    .locals 2
    .param p0, "view"    # Ljava/lang/Object;

    .line 124
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.systemui.statusbar.phone.StatusBarWindowView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static whitelist isSystemUiApp(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 116
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/screenshot/OplusLongshotUtils;->isSystemUiApp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static whitelist isSystemUiApp(Ljava/lang/String;)Z
    .locals 1
    .param p0, "owningPackage"    # Ljava/lang/String;

    .line 112
    invoke-static {p0}, Lcom/oplus/view/OplusWindowUtils;->isSystemUiApp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static whitelist isSystemUiBar(ILjava/lang/CharSequence;)Z
    .locals 1
    .param p0, "type"    # I
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 140
    invoke-static {p0, p1}, Lcom/oplus/view/OplusWindowUtils;->isSystemUiBar(ILjava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static whitelist isSystemWindow(Ljava/lang/String;Ljava/lang/CharSequence;I)Z
    .locals 1
    .param p0, "owningPackage"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "type"    # I

    .line 151
    invoke-static {p0}, Lcom/oplus/screenshot/OplusLongshotUtils;->isExServiceUiApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    const/4 v0, 0x1

    return v0

    .line 154
    :cond_0
    invoke-static {p0}, Lcom/oplus/screenshot/OplusLongshotUtils;->isSystemUiApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    invoke-static {p2, p1}, Lcom/oplus/screenshot/OplusLongshotUtils;->isSystemUiBar(ILjava/lang/CharSequence;)Z

    move-result v0

    return v0

    .line 157
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist isTickerPanel(Ljava/lang/String;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "owningPackage"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 144
    invoke-static {p0}, Lcom/oplus/screenshot/OplusLongshotUtils;->isSystemUiApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    const-string v0, "TickerPanel"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 147
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist isWebContent(Ljava/lang/String;)Z
    .locals 2
    .param p0, "className"    # Ljava/lang/String;

    .line 207
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 208
    return v0

    .line 210
    :cond_0
    const-string v1, "org.chromium.content.browser."

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 211
    return v0

    .line 213
    :cond_1
    const-string v1, "ContentView"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 214
    return v0

    .line 216
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static whitelist isWebFromBaseName(Ljava/lang/String;)Z
    .locals 3
    .param p0, "baseClassName"    # Ljava/lang/String;

    .line 194
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 195
    return v0

    .line 197
    :cond_0
    const-string v1, "WebView"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 198
    return v2

    .line 200
    :cond_1
    const-string v1, "webkit"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 201
    return v2

    .line 203
    :cond_2
    return v0
.end method

.method private static blacklist testScrollVertically(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 255
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    return v0

    .line 258
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 259
    return v0

    .line 261
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
