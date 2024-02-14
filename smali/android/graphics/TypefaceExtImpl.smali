.class public Landroid/graphics/TypefaceExtImpl;
.super Ljava/lang/Object;
.source "TypefaceExtImpl.java"

# interfaces
.implements Landroid/graphics/ITypefaceExt;


# instance fields
.field public blacklist mIsSystemFont:Z

.field private blacklist mTypeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor blacklist <init>(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/TypefaceExtImpl;->mIsSystemFont:Z

    .line 34
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v0, p0, Landroid/graphics/TypefaceExtImpl;->mTypeface:Landroid/graphics/Typeface;

    .line 37
    iput-object p1, p0, Landroid/graphics/TypefaceExtImpl;->mTypeface:Landroid/graphics/Typeface;

    .line 38
    return-void
.end method


# virtual methods
.method public whitelist createIndividualTypefae()V
    .locals 0

    .line 62
    invoke-static {}, Lcom/oplus/util/OplusFontUtils;->createIndividualTypefae()V

    .line 63
    return-void
.end method

.method public whitelist createTypefaceForCustom(Ljava/util/Map;Ljava/util/Map$Entry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "[",
            "Landroid/graphics/fonts/FontFamily;",
            ">;)Z"
        }
    .end annotation

    .line 67
    .local p1, "outSystemFontMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    .local p2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Landroid/graphics/fonts/FontFamily;>;"
    invoke-static {p1, p2}, Lcom/oplus/util/OplusFontUtils;->createTypefaceForCustom(Ljava/util/Map;Ljava/util/Map$Entry;)Z

    move-result v0

    return v0
.end method

.method public whitelist getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 42
    iget-object v0, p0, Landroid/graphics/TypefaceExtImpl;->mTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public whitelist initFontsForserializeFontMap()V
    .locals 2

    .line 57
    sget-object v0, Lcom/oplus/font/IOplusFontManager;->DEFAULT:Lcom/oplus/font/IOplusFontManager;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/oplus/font/IOplusFontManager;

    invoke-interface {v0}, Lcom/oplus/font/IOplusFontManager;->initFontsForserializeFontMap()V

    .line 58
    return-void
.end method

.method public whitelist isSystemTypeface()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Landroid/graphics/TypefaceExtImpl;->mIsSystemFont:Z

    return v0
.end method

.method public whitelist replaceSysSans(Landroid/graphics/Typeface;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 1
    .param p1, "typeface"    # Landroid/graphics/Typeface;
    .param p2, "familyName"    # Ljava/lang/String;

    .line 71
    invoke-static {p1, p2}, Lcom/oplus/util/OplusFontUtils;->replaceSysSans(Landroid/graphics/Typeface;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setSystemTypeface(Z)V
    .locals 0
    .param p1, "isSystemFont"    # Z

    .line 47
    iput-boolean p1, p0, Landroid/graphics/TypefaceExtImpl;->mIsSystemFont:Z

    .line 48
    return-void
.end method
