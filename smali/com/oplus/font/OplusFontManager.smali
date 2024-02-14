.class public Lcom/oplus/font/OplusFontManager;
.super Ljava/lang/Object;
.source "OplusFontManager.java"

# interfaces
.implements Lcom/oplus/font/IOplusFontManager;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "OplusFontManager"

.field public static whitelist sDebugfDetail:Z

.field private static volatile blacklist sInstance:Lcom/oplus/font/OplusFontManager;


# instance fields
.field private blacklist DEBUG_SWITCH:Z

.field private blacklist mDynamicDebug:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 44
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oplus/font/OplusFontManager;->sDebugfDetail:Z

    .line 55
    const/4 v0, 0x0

    sput-object v0, Lcom/oplus/font/OplusFontManager;->sInstance:Lcom/oplus/font/OplusFontManager;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/font/OplusFontManager;->mDynamicDebug:Z

    .line 50
    sget-boolean v1, Lcom/oplus/font/OplusFontManager;->sDebugfDetail:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/oplus/font/OplusFontManager;->DEBUG_SWITCH:Z

    .line 69
    return-void
.end method

.method public static whitelist getInstance()Lcom/oplus/font/OplusFontManager;
    .locals 2

    .line 58
    sget-object v0, Lcom/oplus/font/OplusFontManager;->sInstance:Lcom/oplus/font/OplusFontManager;

    if-nez v0, :cond_1

    .line 59
    const-class v0, Lcom/oplus/font/OplusFontManager;

    monitor-enter v0

    .line 60
    :try_start_0
    sget-object v1, Lcom/oplus/font/OplusFontManager;->sInstance:Lcom/oplus/font/OplusFontManager;

    if-nez v1, :cond_0

    .line 61
    new-instance v1, Lcom/oplus/font/OplusFontManager;

    invoke-direct {v1}, Lcom/oplus/font/OplusFontManager;-><init>()V

    sput-object v1, Lcom/oplus/font/OplusFontManager;->sInstance:Lcom/oplus/font/OplusFontManager;

    .line 63
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 65
    :cond_1
    :goto_0
    sget-object v0, Lcom/oplus/font/OplusFontManager;->sInstance:Lcom/oplus/font/OplusFontManager;

    return-object v0
.end method

.method private blacklist printLog(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 143
    iget-boolean v0, p0, Lcom/oplus/font/OplusFontManager;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_0

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[impl] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusFontManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist createFontLink(Ljava/lang/String;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 76
    const-string v0, "createFontLink"

    invoke-direct {p0, v0}, Lcom/oplus/font/OplusFontManager;->printLog(Ljava/lang/String;)V

    .line 79
    invoke-static {p1}, Lcom/oplus/util/OplusFontUtils;->createFontLink(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public whitelist deleteFontLink(Ljava/lang/String;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 84
    const-string v0, "deleteFontLink"

    invoke-direct {p0, v0}, Lcom/oplus/font/OplusFontManager;->printLog(Ljava/lang/String;)V

    .line 87
    invoke-static {p1}, Lcom/oplus/util/OplusFontUtils;->deleteFontLink(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public whitelist flipTypeface(Landroid/graphics/ITypefaceExt;Landroid/graphics/Paint;)Landroid/graphics/Typeface;
    .locals 1
    .param p1, "typeface"    # Landroid/graphics/ITypefaceExt;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 99
    invoke-static {p1, p2}, Lcom/oplus/util/OplusFontUtils;->flipTypeface(Landroid/graphics/ITypefaceExt;Landroid/graphics/Paint;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTypefaceIndex(II)I
    .locals 0
    .param p1, "originIndex"    # I
    .param p2, "oplusIndex"    # I

    .line 178
    return p2
.end method

.method public whitelist handleFactoryReset()V
    .locals 1

    .line 92
    const-string v0, "handleFactoryReset"

    invoke-direct {p0, v0}, Lcom/oplus/font/OplusFontManager;->printLog(Ljava/lang/String;)V

    .line 94
    invoke-static {}, Lcom/oplus/util/OplusFontUtils;->handleFactoryReset()V

    .line 95
    return-void
.end method

.method public whitelist initFontsForserializeFontMap()V
    .locals 0

    .line 188
    invoke-static {}, Lcom/oplus/util/OplusFontUtils;->initFontUtil()V

    .line 189
    return-void
.end method

.method public whitelist initVariationFontVariable(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 163
    invoke-static {p1}, Lcom/oplus/util/OplusFontUtils;->initVariationFontVariable(Landroid/content/Context;)V

    .line 164
    return-void
.end method

.method public whitelist isFlipFontUsed()Z
    .locals 1

    .line 104
    sget-boolean v0, Lcom/oplus/util/OplusFontUtils;->isFlipFontUsed:Z

    return v0
.end method

.method public whitelist onCleanupUserForFont(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 150
    if-eqz p1, :cond_0

    .line 151
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/oplus/util/OplusFontUtils;->DATA_FONT_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    .local v0, "fontFileForUser":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    invoke-static {v0}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    move-result v1

    .line 154
    .local v1, "cleanUserFontResult":Z
    iget-boolean v2, p0, Lcom/oplus/font/OplusFontManager;->DEBUG_SWITCH:Z

    if-eqz v2, :cond_0

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCleanupUserForFont result :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OplusFontManager"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .end local v0    # "fontFileForUser":Ljava/io/File;
    .end local v1    # "cleanUserFontResult":Z
    :cond_0
    return-void
.end method

.method public whitelist replaceFakeBoldToMedium(Landroid/widget/TextView;Landroid/graphics/ITypefaceExt;I)V
    .locals 0
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "typeface"    # Landroid/graphics/ITypefaceExt;
    .param p3, "style"    # I

    .line 131
    invoke-static {p1, p2, p3}, Lcom/oplus/util/OplusFontUtils;->replaceFakeBoldToColorMedium(Landroid/widget/TextView;Landroid/graphics/ITypefaceExt;I)V

    .line 132
    return-void
.end method

.method public whitelist setCurrentAppName(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 109
    invoke-static {p1}, Lcom/oplus/util/OplusFontUtils;->setAppTypeFace(Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public blacklist setFlipFont(Landroid/content/res/Configuration;I)V
    .locals 1
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "changes"    # I

    .line 119
    const/high16 v0, 0x2000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    .line 120
    invoke-static {p1}, Lcom/oplus/util/OplusFontUtils;->setFlipFont(Landroid/content/res/Configuration;)V

    .line 122
    :cond_0
    return-void
.end method

.method public whitelist setFlipFontWhenUserChange(Landroid/content/res/Configuration;I)V
    .locals 0
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "changes"    # I

    .line 126
    invoke-static {p1}, Lcom/oplus/util/OplusFontUtils;->setFlipFontWhenUserChange(Landroid/content/res/Configuration;)V

    .line 127
    return-void
.end method

.method public whitelist setIMEFlag(Z)V
    .locals 0
    .param p1, "isIme"    # Z

    .line 183
    invoke-static {p1}, Lcom/oplus/util/OplusFontUtils;->setIMEFlag(Z)V

    .line 184
    return-void
.end method

.method public whitelist updateConfigurationInUIMode(Landroid/content/Context;Landroid/content/res/Configuration;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Landroid/content/res/Configuration;
    .param p3, "userId"    # I

    .line 173
    invoke-static {p1, p2, p3}, Lcom/oplus/util/OplusFontUtils;->updateConfigurationInUIMode(Landroid/content/Context;Landroid/content/res/Configuration;I)V

    .line 174
    return-void
.end method

.method public whitelist updateLanguageLocale(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 168
    invoke-static {p1}, Lcom/oplus/util/OplusFontUtils;->updateLanguageLocale(Landroid/content/res/Configuration;)V

    .line 169
    return-void
.end method

.method public whitelist updateOpSansConfig(Landroid/content/Context;Landroid/content/res/Configuration;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Landroid/content/res/Configuration;
    .param p3, "userId"    # I

    .line 195
    invoke-static {p1, p2, p3}, Lcom/oplus/util/OplusFontUtils;->updateOpSansConfig(Landroid/content/Context;Landroid/content/res/Configuration;I)V

    .line 196
    return-void
.end method

.method public whitelist updateTypefaceInCurrProcess(Landroid/content/res/Configuration;I)V
    .locals 0
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "changes"    # I

    .line 136
    invoke-static {p1, p2}, Lcom/oplus/util/OplusFontUtils;->updateTypefaceInCurrProcess(Landroid/content/res/Configuration;I)V

    .line 137
    return-void
.end method
