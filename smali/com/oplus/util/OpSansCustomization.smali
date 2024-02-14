.class Lcom/oplus/util/OpSansCustomization;
.super Lcom/oplus/util/OplusBaseFontUtils;
.source "OpSansCustomization.java"


# static fields
.field private static final blacklist DEBUG:Z

.field private static final blacklist DEBUG_VERBOSE:Z

.field private static final blacklist OLD_OP_SANS:I = 0x2

.field private static final blacklist OP_DEFAULT:I = -0x1

.field private static final blacklist OP_FONT_SETTINGS:Ljava/lang/String; = "font_op_sans_settings"

.field private static final blacklist OP_SANS_EN:Ljava/lang/String; = "op-sans-en"

.field static final blacklist STATUS_AUTO:I = 0x2

.field static final blacklist STATUS_DISABLE:I = 0x0

.field static final blacklist STATUS_ENABLE:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "OpSansCustomization"

.field private static blacklist mOpSansTypeface:Landroid/graphics/Typeface;

.field private static blacklist sCheckFeature:I

.field private static blacklist sPreOpSansSettings:J

.field private static blacklist sUsingOpSans:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 51
    nop

    .line 52
    const-string v0, "persist.opsans.debug"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oplus/util/OpSansCustomization;->DEBUG:Z

    .line 53
    if-eqz v0, :cond_0

    .line 54
    const-string v0, "persist.opsans.debug.verbose"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/oplus/util/OpSansCustomization;->DEBUG_VERBOSE:Z

    .line 63
    const/4 v0, 0x0

    sput-object v0, Lcom/oplus/util/OpSansCustomization;->mOpSansTypeface:Landroid/graphics/Typeface;

    .line 64
    sput-boolean v1, Lcom/oplus/util/OpSansCustomization;->sUsingOpSans:Z

    .line 65
    const/4 v0, -0x1

    sput v0, Lcom/oplus/util/OpSansCustomization;->sCheckFeature:I

    .line 66
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/oplus/util/OpSansCustomization;->sPreOpSansSettings:J

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/oplus/util/OplusBaseFontUtils;-><init>()V

    return-void
.end method

.method static blacklist applyNewOpSansConfig(Landroid/content/res/Configuration;I)Z
    .locals 8
    .param p0, "config"    # Landroid/content/res/Configuration;
    .param p1, "changes"    # I

    .line 101
    and-int/lit8 v0, p1, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 102
    .local v0, "localeChanged":Z
    :goto_0
    const-class v3, Landroid/content/res/OplusBaseConfiguration;

    invoke-static {v3, p0}, Lcom/oplus/util/OplusTypeCastingHelper;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/OplusBaseConfiguration;

    .line 103
    .local v3, "baseConfiguration":Landroid/content/res/OplusBaseConfiguration;
    if-nez v0, :cond_2

    if-eqz v3, :cond_1

    iget-object v4, v3, Landroid/content/res/OplusBaseConfiguration;->mOplusExtraConfiguration:Loplus/content/res/OplusExtraConfiguration;

    .line 105
    invoke-static {v4, p1}, Lcom/oplus/util/OpSansCustomization;->isOpSansChanged(Loplus/content/res/OplusExtraConfiguration;I)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 116
    :cond_1
    return v2

    .line 106
    :cond_2
    :goto_1
    iget-object v4, v3, Landroid/content/res/OplusBaseConfiguration;->mOplusExtraConfiguration:Loplus/content/res/OplusExtraConfiguration;

    iget v4, v4, Loplus/content/res/OplusExtraConfiguration;->mFontOpSansSettings:I

    .line 107
    .local v4, "configValue":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    move v5, v2

    goto :goto_2

    :cond_3
    const v5, 0xf000

    and-int/2addr v5, v4

    shr-int/lit8 v5, v5, 0xc

    .line 108
    .local v5, "status":I
    :goto_2
    if-ne v5, v1, :cond_4

    move v6, v1

    goto :goto_3

    :cond_4
    move v6, v2

    :goto_3
    sput-boolean v6, Lcom/oplus/util/OpSansCustomization;->sUsingOpSans:Z

    .line 109
    invoke-static {v6}, Lcom/oplus/util/OpSansCustomization;->prepareOpSansIfNeeded(Z)V

    .line 110
    int-to-long v6, v4

    sput-wide v6, Lcom/oplus/util/OpSansCustomization;->sPreOpSansSettings:J

    .line 111
    sget-boolean v6, Lcom/oplus/util/OpSansCustomization;->DEBUG_VERBOSE:Z

    if-eqz v6, :cond_5

    .line 112
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Changed to Enable = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/oplus/util/OpSansCustomization;->sUsingOpSans:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/oplus/util/OpSansCustomization;->logd(Ljava/lang/String;)V

    .line 114
    :cond_5
    if-eqz v0, :cond_6

    sget-boolean v6, Lcom/oplus/util/OpSansCustomization;->sUsingOpSans:Z

    if-eqz v6, :cond_6

    goto :goto_4

    :cond_6
    move v1, v2

    :goto_4
    return v1
.end method

.method private static blacklist checkCompatAfterOTA(Landroid/content/Context;II)I
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .param p2, "def"    # I

    .line 168
    const-string v0, "persist.sys.font"

    :try_start_0
    const-string v1, "ro.build.version.ota"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    return p2

    .line 171
    :cond_0
    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 172
    .local v3, "old":I
    if-ne v3, v1, :cond_1

    .line 173
    return p2

    .line 175
    :cond_1
    const-string v1, "OpSansCustomization"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OS 11 OpSans "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const/4 v0, 0x2

    if-ne v3, v0, :cond_2

    .line 178
    const/16 v0, 0x1000

    .line 179
    .local v0, "turnOn":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "font_op_sans_settings"

    invoke-static {v1, v2, v0, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    return v0

    .line 182
    .end local v0    # "turnOn":I
    :cond_2
    return p2

    .line 183
    .end local v3    # "old":I
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkCompatAfterOTA Ex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/util/OpSansCustomization;->logd(Ljava/lang/String;)V

    .line 186
    .end local v0    # "e":Ljava/lang/RuntimeException;
    return p2
.end method

.method private static blacklist dumpOpSansInfo(Landroid/content/Context;Landroid/content/res/OplusBaseConfiguration;I)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "baseConfiguration"    # Landroid/content/res/OplusBaseConfiguration;
    .param p2, "userId"    # I

    .line 218
    const-string v0, "dumpOpSansInfo Start ####################"

    invoke-static {v0}, Lcom/oplus/util/OpSansCustomization;->logd(Ljava/lang/String;)V

    .line 220
    :try_start_0
    const-string v0, "persist.sys.locale"

    const-string v1, "en-US"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "locale":Ljava/lang/String;
    invoke-static {v0}, Landroid/icu/util/ULocale;->forLanguageTag(Ljava/lang/String;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, "script":Ljava/lang/String;
    invoke-static {}, Landroid/graphics/fonts/SystemFonts;->getSystemPreinstalledFontConfig()Landroid/text/FontConfig;

    move-result-object v2

    .line 223
    .local v2, "config":Landroid/text/FontConfig;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/text/FontConfig;->getFontFamilies()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 224
    invoke-virtual {v2}, Landroid/text/FontConfig;->getFontFamilies()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/text/FontConfig$FontFamily;

    .line 225
    .local v4, "family":Landroid/text/FontConfig$FontFamily;
    const/4 v5, 0x0

    .line 226
    .local v5, "loadFamily":Z
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    invoke-virtual {v4}, Landroid/text/FontConfig$FontFamily;->getLocaleList()Landroid/os/LocaleList;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/LocaleList;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 227
    nop

    .line 228
    invoke-virtual {v4}, Landroid/text/FontConfig$FontFamily;->getLocaleList()Landroid/os/LocaleList;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v7

    invoke-static {v7}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v7

    .line 227
    invoke-static {v7}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v7

    .line 228
    invoke-virtual {v7}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v7

    .line 229
    .local v7, "fontScript":Ljava/lang/String;
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    move v5, v8

    .line 230
    if-eqz v5, :cond_0

    .line 231
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " | Family = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/text/FontConfig$FontFamily;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/oplus/util/OpSansCustomization;->logd(Ljava/lang/String;)V

    .line 232
    goto :goto_2

    .line 226
    .end local v7    # "fontScript":Ljava/lang/String;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 223
    .end local v4    # "family":Landroid/text/FontConfig$FontFamily;
    .end local v5    # "loadFamily":Z
    .end local v6    # "j":I
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 237
    .end local v3    # "i":I
    :cond_2
    invoke-static {}, Landroid/graphics/Typeface;->getSystemFontMap()Ljava/util/Map;

    move-result-object v3

    .line 238
    .local v3, "systemFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    const-string v4, "op-sans-en"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Typeface;

    .line 239
    .local v4, "en":Landroid/graphics/Typeface;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "en = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/oplus/util/OpSansCustomization;->logd(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "font_op_sans_settings"

    const/4 v7, -0x1

    invoke-static {v5, v6, v7, p2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    .line 242
    .local v5, "opStatus":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Persisted Status = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ( Disable "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " | Enable "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x1000

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " | Auto "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x2000

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " )"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/oplus/util/OpSansCustomization;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    .end local v0    # "locale":Ljava/lang/String;
    .end local v1    # "script":Ljava/lang/String;
    .end local v2    # "config":Landroid/text/FontConfig;
    .end local v3    # "systemFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    .end local v4    # "en":Landroid/graphics/Typeface;
    .end local v5    # "opStatus":I
    goto :goto_3

    .line 246
    :catch_0
    move-exception v0

    .line 249
    :goto_3
    const-string v0, "dumpOpSansInfo End ####################"

    invoke-static {v0}, Lcom/oplus/util/OpSansCustomization;->logd(Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method private static blacklist freeCaches()V
    .locals 0

    .line 199
    invoke-static {}, Landroid/graphics/Canvas;->freeCaches()V

    .line 200
    invoke-static {}, Landroid/graphics/Canvas;->freeTextLayoutCaches()V

    .line 201
    return-void
.end method

.method private static blacklist genOpSansTypeface()Landroid/graphics/Typeface;
    .locals 2

    .line 159
    :try_start_0
    invoke-static {}, Landroid/graphics/Typeface;->getSystemFontMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "op-sans-en"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/util/OpSansCustomization;->logd(Ljava/lang/String;)V

    .line 163
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method static blacklist getMediumOpSans()Landroid/graphics/Typeface;
    .locals 1

    .line 135
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/oplus/util/OpSansCustomization;->prepareOpSansIfNeeded(Z)V

    .line 136
    sget-object v0, Lcom/oplus/util/OpSansCustomization;->mOpSansTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method private static blacklist isOpSansChanged(Loplus/content/res/OplusExtraConfiguration;I)Z
    .locals 7
    .param p0, "extraCfg"    # Loplus/content/res/OplusExtraConfiguration;
    .param p1, "changes"    # I

    .line 190
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 191
    return v0

    .line 193
    :cond_0
    const/high16 v1, 0x1000000

    and-int/2addr v1, p1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v0

    .line 194
    .local v1, "checkType":Z
    :goto_0
    sget-wide v3, Lcom/oplus/util/OpSansCustomization;->sPreOpSansSettings:J

    iget v5, p0, Loplus/content/res/OplusExtraConfiguration;->mFontOpSansSettings:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v0

    .line 195
    .local v3, "settingsChanged":Z
    :goto_1
    if-eqz v1, :cond_3

    if-eqz v3, :cond_3

    move v0, v2

    :cond_3
    return v0
.end method

.method protected static blacklist logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "content"    # Ljava/lang/String;

    .line 206
    sget-boolean v0, Lcom/oplus/util/OpSansCustomization;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 207
    const-string v0, "OpSansCustomization"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_0
    return-void
.end method

.method protected static blacklist loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 212
    sget-boolean v0, Lcom/oplus/util/OpSansCustomization;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpSansCustomization"

    invoke-static {v1, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 215
    :cond_0
    return-void
.end method

.method static blacklist matchOpSans(Landroid/graphics/ITypefaceExt;)Landroid/graphics/Typeface;
    .locals 3
    .param p0, "typeface"    # Landroid/graphics/ITypefaceExt;

    .line 140
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/oplus/util/OpSansCustomization;->prepareOpSansIfNeeded(Z)V

    .line 141
    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroid/graphics/ITypefaceExt;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    sget-object v0, Lcom/oplus/util/OpSansCustomization;->mOpSansTypeface:Landroid/graphics/Typeface;

    invoke-interface {p0}, Landroid/graphics/ITypefaceExt;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Typeface;->getWeight()I

    move-result v1

    invoke-interface {p0}, Landroid/graphics/ITypefaceExt;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Typeface;->isItalic()Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v0

    .line 145
    .local v0, "opSans":Landroid/graphics/Typeface;
    sget-object v1, Landroid/graphics/OplusMirrorTypeface;->mTypefaceExt:Lcom/oplus/reflect/RefObject;

    if-eqz v1, :cond_1

    .line 146
    sget-object v1, Landroid/graphics/OplusMirrorTypeface;->mTypefaceExt:Lcom/oplus/reflect/RefObject;

    invoke-virtual {v1, v0}, Lcom/oplus/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/ITypefaceExt;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/graphics/ITypefaceExt;->setSystemTypeface(Z)V

    .line 148
    :cond_1
    return-object v0

    .line 142
    .end local v0    # "opSans":Landroid/graphics/Typeface;
    :cond_2
    :goto_0
    sget-object v0, Lcom/oplus/util/OpSansCustomization;->mOpSansTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method private static blacklist prepareOpSansIfNeeded(Z)V
    .locals 1
    .param p0, "regenerate"    # Z

    .line 152
    sget-object v0, Lcom/oplus/util/OpSansCustomization;->mOpSansTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_1

    .line 153
    :cond_0
    invoke-static {}, Lcom/oplus/util/OpSansCustomization;->genOpSansTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/oplus/util/OpSansCustomization;->mOpSansTypeface:Landroid/graphics/Typeface;

    .line 155
    :cond_1
    return-void
.end method

.method static blacklist shouldReplaceToOpSans(Landroid/graphics/ITypefaceExt;)Z
    .locals 3
    .param p0, "original"    # Landroid/graphics/ITypefaceExt;

    .line 120
    sget-boolean v0, Lcom/oplus/util/OpSansCustomization;->sUsingOpSans:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 121
    return v1

    .line 124
    :cond_0
    const/4 v0, 0x0

    .line 125
    .local v0, "isLikeDefault":Z
    if-eqz p0, :cond_1

    sget-object v2, Landroid/graphics/OplusMirrorTypeface;->mTypefaceExt:Lcom/oplus/reflect/RefObject;

    if-eqz v2, :cond_1

    .line 126
    invoke-interface {p0}, Landroid/graphics/ITypefaceExt;->isSystemTypeface()Z

    move-result v0

    .line 128
    :cond_1
    sget-boolean v2, Lcom/oplus/util/OpSansCustomization;->sUsingOpSans:Z

    if-eqz v2, :cond_3

    if-eqz p0, :cond_2

    if-nez v0, :cond_2

    .line 131
    invoke-interface {p0}, Landroid/graphics/ITypefaceExt;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/OplusTypefaceInjector;->isSystemTypeface(Landroid/graphics/Typeface;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    nop

    .line 128
    :goto_0
    return v1
.end method

.method static blacklist updateOpSansConfig(Landroid/content/Context;Landroid/content/res/Configuration;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "userId"    # I

    .line 76
    const-class v0, Landroid/content/res/OplusBaseConfiguration;

    invoke-static {v0, p1}, Lcom/oplus/util/OplusTypeCastingHelper;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/OplusBaseConfiguration;

    .line 77
    .local v0, "baseConfiguration":Landroid/content/res/OplusBaseConfiguration;
    if-nez v0, :cond_0

    .line 78
    return-void

    .line 80
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "font_op_sans_settings"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3, p2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 81
    .local v1, "opStatus":I
    invoke-static {p0, p2, v1}, Lcom/oplus/util/OpSansCustomization;->checkCompatAfterOTA(Landroid/content/Context;II)I

    move-result v1

    .line 82
    if-ne v1, v3, :cond_1

    .line 84
    const/4 v1, 0x0

    .line 86
    :cond_1
    iget-object v2, v0, Landroid/content/res/OplusBaseConfiguration;->mOplusExtraConfiguration:Loplus/content/res/OplusExtraConfiguration;

    iput v1, v2, Loplus/content/res/OplusExtraConfiguration;->mFontOpSansSettings:I

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update OpSans Config in System. Status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oplus/util/OpSansCustomization;->logd(Ljava/lang/String;)V

    .line 88
    sget-boolean v2, Lcom/oplus/util/OpSansCustomization;->DEBUG_VERBOSE:Z

    if-eqz v2, :cond_2

    .line 89
    invoke-static {p0, v0, p2}, Lcom/oplus/util/OpSansCustomization;->dumpOpSansInfo(Landroid/content/Context;Landroid/content/res/OplusBaseConfiguration;I)V

    .line 91
    :cond_2
    return-void
.end method
