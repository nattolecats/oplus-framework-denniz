.class public Lcom/oplus/util/OplusBaseFontUtils;
.super Ljava/lang/Object;
.source "OplusBaseFontUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/util/OplusBaseFontUtils$FontLinkInfo;
    }
.end annotation


# static fields
.field public static blacklist DATA_FONT_DIRECTORY:Ljava/lang/String; = null

.field protected static final blacklist DATA_FONT_DIRECTORY_5D0:Ljava/lang/String; = "/data/system/font/"

.field public static final blacklist DATA_FONT_DIRECTORY_6D0:Ljava/lang/String; = "/data/format_unclear/font/"

.field protected static final blacklist DEBUG:Z

.field protected static final blacklist DEFAULT_OPLUS_FONT_SYSTEM_LINKS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final blacklist FLIPED_CUSTOMIZED_FONT_NAME:Ljava/lang/String; = "Customized-Regular.ttf"

.field protected static final blacklist FLIPED_OPLUSOS_FONT_NAME:Ljava/lang/String; = "ColorOS-Regular.ttf"

.field public static blacklist FLIP_APP_ALL_FONTS:Z = false

.field protected static final blacklist FLIP_FONT_FLAG_MAX:I = 0x2711

.field public static final blacklist FLITER_CTS_APP_PKG_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist FLITER_NOT_REPLACEFONT_APP_PKG_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final blacklist FONTINFOARRAY_ROM6D0:[Lcom/oplus/util/OplusBaseFontUtils$FontLinkInfo;

.field public static final blacklist FONT_VARIATION_DEFAULT:I = 0x226

.field public static final blacklist FONT_VARIATION_END:I = 0x3e8

.field public static final blacklist FONT_VARIATION_NIGHT:I = -0x32

.field public static final blacklist FONT_VARIATION_SETTINGS:Ljava/lang/String; = "font_variation_settings"

.field public static final blacklist FONT_VARIATION_START:I = 0x64

.field public static final blacklist FONT_VARIATION_STEP:I = 0xa

.field public static final blacklist FONT_VARIATION_WEIGHT:Ljava/lang/String; = "\'wght\' "

.field public static final blacklist FONT_WEIGHT_BOLD:I = 0x2bc

.field public static final blacklist FONT_WEIGHT_CAST_WGHT:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist FONT_WEIGHT_MEDIUM:I = 0x1f4

.field public static final blacklist FONT_WEIGHT_NORMAL:I = 0x190

.field protected static final blacklist INVALID_FLIP_FONT:I = -0x1

.field protected static final blacklist LINK_TARGET_FLIPFONT:I = 0x2

.field protected static final blacklist LINK_TARGET_SYSTEM:I = 0x1

.field public static final blacklist ONEPLUS_SANS_EN:Ljava/lang/String; = "op-sans-en"

.field public static final blacklist OPLUS_SANS_VARIATION_FONT:Ljava/lang/String; = "sys-sans-en"

.field public static final blacklist SECOND_FONT_CONFIG_FILE:Ljava/lang/String; = "/system_ext/etc/fonts_base.xml"

.field public static final blacklist STATUS_AUTO:I = 0x2

.field public static final blacklist STATUS_DISABLE:I = 0x0

.field public static final blacklist STATUS_ENABLE:I = 0x1

.field protected static final blacklist SUPPORT_FONT_VARIATION_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final blacklist SUPPORT_MEDIUM_FONT_LANGUAGE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final blacklist SYSTEM_FONT_DIRECTORY:Ljava/lang/String; = "/system/fonts/"

.field protected static final blacklist TAG:Ljava/lang/String; = "FontUtils"

.field public static blacklist isCurrentLanguageSupportMediumFont:Z

.field public static blacklist isCurrentLanguageSupportVariationFont:Z

.field public static blacklist isFlipFontUsed:Z

.field public static blacklist isSearched:Z

.field public static blacklist mFontVariation:I

.field public static blacklist mFontVariationAdaption:I

.field public static blacklist mFontVariationSettings:Ljava/lang/String;

.field public static blacklist mFontVariationStatus:I

.field public static blacklist mPackageName:Ljava/lang/String;

.field protected static blacklist sCurrentTypefaces:[Landroid/graphics/Typeface;

.field protected static blacklist sCurrentTypefacesArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field public static blacklist sFlipFont:I

.field protected static blacklist sFontLinkInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/util/OplusBaseFontUtils$FontLinkInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static blacklist sIsCheckCTS:Z

.field public static blacklist sIsIme:Z

.field public static final blacklist sIsROM6d0FlipFont:Z

.field public static blacklist sLastFontVariationSettings:Ljava/lang/String;

.field protected static blacklist sNeedReplaceAllTypefaceApp:Z

.field public static blacklist sOplusVariationCacheMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field static blacklist sPreOSansSettings:J

.field public static blacklist sReplaceFont:Z

.field public static blacklist sUserId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 22

    .line 45
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oplus/util/OplusBaseFontUtils;->DEBUG:Z

    .line 47
    sget-boolean v0, Landroid/graphics/OplusTypefaceInjector;->sIsFBESupport:Z

    sput-boolean v0, Lcom/oplus/util/OplusBaseFontUtils;->sIsROM6d0FlipFont:Z

    .line 49
    new-instance v2, Ljava/util/ArrayList;

    const-string v3, "android.theme.app"

    const-string v4, "android.graphics.cts"

    const-string v5, "android.widget.cts"

    const-string v6, "android.uirendering.cts"

    const-string v7, "android.text.cts"

    filled-new-array {v3, v4, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v2, Lcom/oplus/util/OplusBaseFontUtils;->FLITER_CTS_APP_PKG_LIST:Ljava/util/List;

    .line 56
    new-instance v2, Ljava/util/ArrayList;

    const-string v3, "com.eterno"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v2, Lcom/oplus/util/OplusBaseFontUtils;->FLITER_NOT_REPLACEFONT_APP_PKG_LIST:Ljava/util/List;

    .line 63
    if-eqz v0, :cond_0

    const-string v0, "/data/format_unclear/font/"

    goto :goto_0

    :cond_0
    const-string v0, "/data/system/font/"

    :goto_0
    sput-object v0, Lcom/oplus/util/OplusBaseFontUtils;->DATA_FONT_DIRECTORY:Ljava/lang/String;

    .line 69
    const/4 v0, 0x0

    sput-object v0, Lcom/oplus/util/OplusBaseFontUtils;->sCurrentTypefaces:[Landroid/graphics/Typeface;

    .line 70
    sput-object v0, Lcom/oplus/util/OplusBaseFontUtils;->sCurrentTypefacesArray:Ljava/util/List;

    .line 71
    sput-boolean v1, Lcom/oplus/util/OplusBaseFontUtils;->isFlipFontUsed:Z

    .line 72
    sput-boolean v1, Lcom/oplus/util/OplusBaseFontUtils;->FLIP_APP_ALL_FONTS:Z

    .line 74
    sput-boolean v1, Lcom/oplus/util/OplusBaseFontUtils;->sIsCheckCTS:Z

    .line 75
    const/4 v0, 0x1

    sput-boolean v0, Lcom/oplus/util/OplusBaseFontUtils;->sReplaceFont:Z

    .line 76
    sput-boolean v1, Lcom/oplus/util/OplusBaseFontUtils;->sNeedReplaceAllTypefaceApp:Z

    .line 77
    new-instance v2, Ljava/util/ArrayList;

    const-string v3, "/system/fonts/SysFont-Regular.ttf"

    const-string v4, "/system/fonts/SysFont-Myanmar.ttf"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v2, Lcom/oplus/util/OplusBaseFontUtils;->DEFAULT_OPLUS_FONT_SYSTEM_LINKS:Ljava/util/List;

    .line 81
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/oplus/util/OplusBaseFontUtils$FontLinkInfo;

    new-instance v3, Lcom/oplus/util/OplusBaseFontUtils$FontLinkInfo;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/oplus/util/OplusBaseFontUtils;->DATA_FONT_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "OplusOSUI-Regular.ttf"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/system/fonts/Roboto-Regular.ttf"

    invoke-direct {v3, v4, v5}, Lcom/oplus/util/OplusBaseFontUtils$FontLinkInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v1

    new-instance v3, Lcom/oplus/util/OplusBaseFontUtils$FontLinkInfo;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/oplus/util/OplusBaseFontUtils;->DATA_FONT_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "OplusOSUI-Static-Regualr.ttf"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/system/fonts/RobotoStatic-Regular.ttf"

    invoke-direct {v3, v4, v5}, Lcom/oplus/util/OplusBaseFontUtils$FontLinkInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v0

    sput-object v2, Lcom/oplus/util/OplusBaseFontUtils;->FONTINFOARRAY_ROM6D0:[Lcom/oplus/util/OplusBaseFontUtils$FontLinkInfo;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/oplus/util/OplusBaseFontUtils;->sFontLinkInfos:Ljava/util/List;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    const-string v2, "en"

    const-string v3, "zh"

    const-string v4, "ja"

    const-string v5, "ko"

    const-string v6, "fr"

    const-string v7, "it"

    const-string v8, "de"

    const-string v9, "sv"

    const-string v10, "nl"

    const-string v11, "es"

    const-string v12, "ru"

    const-string v13, "kk"

    filled-new-array/range {v2 .. v13}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/oplus/util/OplusBaseFontUtils;->SUPPORT_MEDIUM_FONT_LANGUAGE_LIST:Ljava/util/List;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    const-string v2, "en"

    const-string v3, "zh"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/oplus/util/OplusBaseFontUtils;->SUPPORT_FONT_VARIATION_LIST:Ljava/util/List;

    .line 107
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/oplus/util/OplusBaseFontUtils;->sOplusVariationCacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 112
    const-string v0, "\'wght\' 550"

    sput-object v0, Lcom/oplus/util/OplusBaseFontUtils;->mFontVariationSettings:Ljava/lang/String;

    .line 113
    sput-object v0, Lcom/oplus/util/OplusBaseFontUtils;->sLastFontVariationSettings:Ljava/lang/String;

    .line 120
    const/16 v0, 0x64

    .line 121
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v0, 0xc8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 122
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v0, 0xfa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v0, 0x12c

    .line 123
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v0, 0x15e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v0, 0x190

    .line 124
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v0, 0x226

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v0, 0x1f4

    .line 125
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v0, 0x2bc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v12, 0x258

    .line 126
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 127
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v0, 0x320

    .line 128
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v0, 0x352

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v0, 0x384

    .line 129
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    .line 130
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    .line 120
    invoke-static/range {v2 .. v21}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/oplus/util/OplusBaseFontUtils;->FONT_WEIGHT_CAST_WGHT:Ljava/util/Map;

    .line 139
    sput v1, Lcom/oplus/util/OplusBaseFontUtils;->mFontVariationAdaption:I

    .line 140
    sput v1, Lcom/oplus/util/OplusBaseFontUtils;->mFontVariation:I

    .line 141
    sput v1, Lcom/oplus/util/OplusBaseFontUtils;->mFontVariationStatus:I

    .line 143
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/oplus/util/OplusBaseFontUtils;->sPreOSansSettings:J

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist createFontLink(Ljava/lang/String;)V
    .locals 0
    .param p0, "pkgName"    # Ljava/lang/String;

    .line 175
    return-void
.end method

.method public static blacklist deleteFontLink(Ljava/lang/String;)V
    .locals 0
    .param p0, "pkgName"    # Ljava/lang/String;

    .line 171
    return-void
.end method

.method protected static blacklist logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "content"    # Ljava/lang/String;

    .line 179
    sget-boolean v0, Lcom/oplus/util/OplusBaseFontUtils;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 180
    const-string v0, "FontUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_0
    return-void
.end method

.method protected static blacklist loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 185
    sget-boolean v0, Lcom/oplus/util/OplusBaseFontUtils;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 186
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

    const-string v1, "FontUtils"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    :cond_0
    return-void
.end method
