.class public final Landroid/graphics/OplusTypefaceInjector;
.super Ljava/lang/Object;
.source "OplusTypefaceInjector.java"


# static fields
.field public static final whitelist DEFAULT_FONT_CONFIG_FILE:Ljava/lang/String; = "/system/etc/fonts.xml"

.field public static final whitelist FBE_FONT_CONFIG_FILE:Ljava/lang/String; = "/system_ext/etc/fonts_base.xml"

.field public static whitelist OPLUSUI_MEDIUM:Landroid/graphics/Typeface; = null

.field public static whitelist OPLUSUI_VF:Landroid/graphics/Typeface; = null

.field public static final whitelist OPLUS_CUSTOMIZATION_FONTS_PATH:Ljava/lang/String; = "/system_ext/fonts/"

.field public static final whitelist OPLUS_CUSTOMIZATION_FONTS_XML:Ljava/lang/String; = "/system_ext/etc/fonts_customization.xml"

.field public static final whitelist SECOND_FONT_CONFIG_FILE:Ljava/lang/String; = "/system_ext/etc/fonts_base.xml"

.field public static final whitelist sIsFBESupport:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 47
    const-string v0, "ro.crypto.type"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/graphics/OplusTypefaceInjector;->sIsFBESupport:Z

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist dumpSysTypeface()V
    .locals 5

    .line 78
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    .line 79
    .local v0, "sSystemFontMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    if-eqz v0, :cond_0

    .line 80
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 81
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Typeface;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 83
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "System typeface  family = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FontUtilsCTI"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    goto :goto_0

    .line 86
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Typeface;>;>;"
    :cond_0
    return-void
.end method

.method public static whitelist getSystemDefaultTypefaces()[Landroid/graphics/Typeface;
    .locals 1

    .line 70
    sget-object v0, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    return-object v0
.end method

.method public static whitelist getSystemFontMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation

    .line 74
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    return-object v0
.end method

.method public static whitelist isSystemTypeface(Landroid/graphics/Typeface;)Z
    .locals 1
    .param p0, "typeface"    # Landroid/graphics/Typeface;

    .line 53
    if-nez p0, :cond_0

    .line 54
    sget-object p0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 56
    :cond_0
    if-eqz p0, :cond_1

    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    const/4 v0, 0x1

    return v0

    .line 59
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist isSystemTypeface(Ljava/lang/String;)Z
    .locals 1
    .param p0, "fontFamily"    # Ljava/lang/String;

    .line 63
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const/4 v0, 0x1

    return v0

    .line 66
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
