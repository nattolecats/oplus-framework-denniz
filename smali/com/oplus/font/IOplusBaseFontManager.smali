.class public interface abstract Lcom/oplus/font/IOplusBaseFontManager;
.super Ljava/lang/Object;
.source "IOplusBaseFontManager.java"

# interfaces
.implements Landroid/common/IOplusCommonFeature;


# virtual methods
.method public whitelist createFontLink(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 31
    return-void
.end method

.method public whitelist deleteFontLink(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 34
    return-void
.end method

.method public blacklist flipTypeface(Landroid/graphics/ITypefaceExt;Landroid/graphics/Paint;)Landroid/graphics/Typeface;
    .locals 1
    .param p1, "typeface"    # Landroid/graphics/ITypefaceExt;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 41
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/graphics/ITypefaceExt;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_0
    return-object v0
.end method

.method public whitelist getSystemFontConfig()Ljava/lang/String;
    .locals 1

    .line 45
    const-string v0, "/system_ext/etc/fonts_base.xml"

    return-object v0
.end method

.method public whitelist getTypefaceIndex(II)I
    .locals 0
    .param p1, "originIndex"    # I
    .param p2, "oplusIndex"    # I

    .line 89
    return p1
.end method

.method public whitelist handleFactoryReset()V
    .locals 0

    .line 37
    return-void
.end method

.method public whitelist initFontsForserializeFontMap()V
    .locals 0

    .line 96
    return-void
.end method

.method public whitelist initVariationFontVariable(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 78
    return-void
.end method

.method public whitelist isFlipFontUsed()Z
    .locals 1

    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onCleanupUserForFont(I)V
    .locals 0
    .param p1, "userId"    # I

    .line 74
    return-void
.end method

.method public blacklist replaceFakeBoldToMedium(Landroid/widget/TextView;Landroid/graphics/ITypefaceExt;I)V
    .locals 0
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "typeface"    # Landroid/graphics/ITypefaceExt;
    .param p3, "style"    # I

    .line 68
    return-void
.end method

.method public whitelist setCurrentAppName(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 53
    return-void
.end method

.method public blacklist setFlipFont(Landroid/content/res/Configuration;I)V
    .locals 0
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "changes"    # I

    .line 61
    return-void
.end method

.method public whitelist setFlipFontWhenUserChange(Landroid/content/res/Configuration;I)V
    .locals 0
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "changes"    # I

    .line 64
    return-void
.end method

.method public whitelist setIMEFlag(Z)V
    .locals 0
    .param p1, "isIme"    # Z

    .line 93
    return-void
.end method

.method public whitelist updateConfigurationInUIMode(Landroid/content/Context;Landroid/content/res/Configuration;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Landroid/content/res/Configuration;
    .param p3, "userId"    # I

    .line 86
    return-void
.end method

.method public whitelist updateLanguageLocale(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 82
    return-void
.end method

.method public whitelist updateOpSansConfig(Landroid/content/Context;Landroid/content/res/Configuration;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Landroid/content/res/Configuration;
    .param p3, "userId"    # I

    .line 100
    return-void
.end method

.method public whitelist updateTypefaceInCurrProcess(Landroid/content/res/Configuration;I)V
    .locals 0
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "changes"    # I

    .line 71
    return-void
.end method
