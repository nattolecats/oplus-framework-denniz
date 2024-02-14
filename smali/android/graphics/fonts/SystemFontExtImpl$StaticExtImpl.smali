.class public Landroid/graphics/fonts/SystemFontExtImpl$StaticExtImpl;
.super Ljava/lang/Object;
.source "SystemFontExtImpl.java"

# interfaces
.implements Landroid/graphics/fonts/ISystemFontExt$IStaticExt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/fonts/SystemFontExtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StaticExtImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/fonts/SystemFontExtImpl$StaticExtImpl$LazyHolder;
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/fonts/SystemFontExtImpl$StaticExtImpl-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/fonts/SystemFontExtImpl$StaticExtImpl;-><init>()V

    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Landroid/graphics/fonts/SystemFontExtImpl$StaticExtImpl;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .line 18
    invoke-static {}, Landroid/graphics/fonts/SystemFontExtImpl$StaticExtImpl$LazyHolder;->-$$Nest$sfgetINSTANCE()Landroid/graphics/fonts/SystemFontExtImpl$StaticExtImpl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist apendIndividualFontFamily(Landroid/text/FontConfig;)Landroid/text/FontConfig;
    .locals 1
    .param p1, "fontconfig"    # Landroid/text/FontConfig;

    .line 40
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/text/FontConfig;->getFontFamilies()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p1}, Landroid/text/FontConfig;->getFontFamilies()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/util/OplusFontUtils;->apendIndividualFontFamily(Ljava/util/List;)V

    .line 43
    :cond_0
    return-object p1
.end method

.method public blacklist getIndividualFontFamily()Landroid/text/FontConfig$FontFamily;
    .locals 1

    .line 31
    invoke-static {}, Lcom/oplus/util/OplusFontUtils;->createCustomizeFontFamily()Landroid/text/FontConfig$FontFamily;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getOemCustomizationConfigXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "oemXml"    # Ljava/lang/String;

    .line 54
    const-string v0, "/system_ext/etc/fonts_customization.xml"

    return-object v0
.end method

.method public blacklist getOemCustomizationFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "oemPath"    # Ljava/lang/String;

    .line 59
    const-string v0, "/system_ext/fonts/"

    return-object v0
.end method

.method public blacklist getSystemFontConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "fonConfig"    # Ljava/lang/String;

    .line 49
    const-string v0, "/system_ext/etc/fonts_base.xml"

    return-object v0
.end method

.method public blacklist isFlipfontUsed()Z
    .locals 1

    .line 64
    sget-boolean v0, Lcom/oplus/util/OplusFontUtils;->isFlipFontUsed:Z

    return v0
.end method
