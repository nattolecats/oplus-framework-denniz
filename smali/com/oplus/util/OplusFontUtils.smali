.class public Lcom/oplus/util/OplusFontUtils;
.super Lcom/oplus/util/OplusBaseFontUtils;
.source "OplusFontUtils.java"


# static fields
.field public static final blacklist CUSTOM_FONT_FAMILY_NAME:Ljava/lang/String; = "individual-font"

.field public static final blacklist CUSTOM_FONT_POSTSCRIPTNAME:Ljava/lang/String; = "Customized-Regular"

.field static blacklist sIndividualTypeface:Landroid/graphics/Typeface;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 686
    const/4 v0, 0x0

    sput-object v0, Lcom/oplus/util/OplusFontUtils;->sIndividualTypeface:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/oplus/util/OplusBaseFontUtils;-><init>()V

    return-void
.end method

.method public static blacklist apendIndividualFontFamily(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/text/FontConfig$FontFamily;",
            ">;)V"
        }
    .end annotation

    .line 629
    .local p0, "xmlFamilies":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$FontFamily;>;"
    sget-boolean v0, Lcom/oplus/util/OplusFontUtils;->isFlipFontUsed:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 630
    invoke-static {}, Lcom/oplus/util/OplusFontUtils;->createCustomizeFontFamily()Landroid/text/FontConfig$FontFamily;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 632
    :cond_0
    return-void
.end method

.method private static blacklist checkAndCorrectFlipFontLink(Z)V
    .locals 3
    .param p0, "userChange"    # Z

    .line 261
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/oplus/util/OplusFontUtils;->getCustomizedFontFile(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 264
    .local v0, "flipedFontFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 265
    const/4 v1, 0x2

    invoke-static {v1, v0}, Lcom/oplus/util/OplusFontUtils;->relinkDataFontToTarget(ILjava/io/File;)Z

    move-result v1

    sput-boolean v1, Lcom/oplus/util/OplusFontUtils;->isFlipFontUsed:Z

    .line 266
    sget-boolean v1, Lcom/oplus/util/OplusFontUtils;->isFlipFontUsed:Z

    sput-boolean v1, Loplus/content/res/OplusFontUtils;->isFlipFontUsed:Z

    goto :goto_0

    .line 269
    :cond_0
    const-string v2, "checkAndCorreectFlipFontLink flipedFontFile NOT exists"

    invoke-static {v2}, Lcom/oplus/util/OplusFontUtils;->logd(Ljava/lang/String;)V

    .line 270
    sput-boolean v1, Lcom/oplus/util/OplusFontUtils;->isFlipFontUsed:Z

    .line 271
    sget-boolean v1, Lcom/oplus/util/OplusFontUtils;->isFlipFontUsed:Z

    sput-boolean v1, Loplus/content/res/OplusFontUtils;->isFlipFontUsed:Z

    .line 275
    :goto_0
    sget-boolean v1, Lcom/oplus/util/OplusFontUtils;->isFlipFontUsed:Z

    if-nez v1, :cond_1

    .line 276
    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/oplus/util/OplusFontUtils;->relinkDataFontToTarget(ILjava/io/File;)Z

    .line 279
    :cond_1
    return-void
.end method

.method public static blacklist convertIntToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # I

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'wght\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist convertStringToInt(Ljava/lang/String;)I
    .locals 4
    .param p0, "fontVariationSettings"    # Ljava/lang/String;

    .line 496
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 497
    return v1

    .line 499
    :cond_0
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 500
    .local v0, "radius":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 501
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 503
    :cond_1
    return v1
.end method

.method public static blacklist create(Landroid/graphics/Typeface;Ljava/lang/String;I)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "typeface"    # Landroid/graphics/Typeface;
    .param p1, "familyName"    # Ljava/lang/String;
    .param p2, "style"    # I

    .line 249
    invoke-static {p0, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist createCustomizeFontFamily()Landroid/text/FontConfig$FontFamily;
    .locals 12

    .line 635
    new-instance v0, Landroid/text/FontConfig$FontFamily;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/FontConfig$Font;

    new-instance v10, Landroid/text/FontConfig$Font;

    new-instance v3, Ljava/io/File;

    .line 637
    const/4 v11, 0x0

    invoke-static {v11}, Lcom/oplus/util/OplusFontUtils;->getCustomizedFontFile(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Landroid/graphics/fonts/FontStyle;

    const/16 v2, 0x190

    invoke-direct {v6, v2, v11}, Landroid/graphics/fonts/FontStyle;-><init>(II)V

    const/4 v4, 0x0

    const-string v5, "Customized-Regular"

    const/4 v7, 0x0

    const-string v8, ""

    const/4 v9, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Landroid/text/FontConfig$Font;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Landroid/graphics/fonts/FontStyle;ILjava/lang/String;Ljava/lang/String;)V

    aput-object v10, v1, v11

    .line 636
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 640
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v2

    const-string v3, "individual-font"

    invoke-direct {v0, v1, v3, v2, v11}, Landroid/text/FontConfig$FontFamily;-><init>(Ljava/util/List;Ljava/lang/String;Landroid/os/LocaleList;I)V

    .line 635
    return-object v0
.end method

.method public static blacklist createIndividualTypefae()V
    .locals 5

    .line 689
    invoke-static {}, Landroid/graphics/Typeface;->getSystemFontMap()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "individual-font"

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/graphics/Typeface;->getSystemFontMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 690
    sput-boolean v1, Lcom/oplus/util/OplusFontUtils;->isFlipFontUsed:Z

    .line 692
    :cond_0
    sget-boolean v0, Lcom/oplus/util/OplusFontUtils;->isFlipFontUsed:Z

    if-eqz v0, :cond_2

    .line 693
    sget-object v0, Lcom/oplus/util/OplusFontUtils;->sCurrentTypefaces:[Landroid/graphics/Typeface;

    if-nez v0, :cond_1

    .line 694
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Typeface;

    sput-object v0, Lcom/oplus/util/OplusFontUtils;->sCurrentTypefaces:[Landroid/graphics/Typeface;

    .line 696
    :cond_1
    const/4 v0, 0x0

    invoke-static {v2, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    sput-object v3, Lcom/oplus/util/OplusFontUtils;->sIndividualTypeface:Landroid/graphics/Typeface;

    .line 697
    if-eqz v3, :cond_3

    .line 698
    sget-object v3, Lcom/oplus/util/OplusFontUtils;->sCurrentTypefaces:[Landroid/graphics/Typeface;

    sget-object v4, Lcom/oplus/util/OplusFontUtils;->sIndividualTypeface:Landroid/graphics/Typeface;

    aput-object v4, v3, v0

    .line 699
    sget-object v0, Lcom/oplus/util/OplusFontUtils;->sCurrentTypefaces:[Landroid/graphics/Typeface;

    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    aput-object v3, v0, v1

    .line 700
    sget-object v0, Lcom/oplus/util/OplusFontUtils;->sCurrentTypefaces:[Landroid/graphics/Typeface;

    const/4 v1, 0x2

    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    aput-object v3, v0, v1

    .line 701
    sget-object v0, Lcom/oplus/util/OplusFontUtils;->sCurrentTypefaces:[Landroid/graphics/Typeface;

    const/4 v1, 0x3

    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    aput-object v2, v0, v1

    .line 702
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/oplus/util/OplusFontUtils;->sCurrentTypefaces:[Landroid/graphics/Typeface;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/oplus/util/OplusFontUtils;->sCurrentTypefacesArray:Ljava/util/List;

    goto :goto_0

    .line 705
    :cond_2
    const/4 v0, 0x0

    sput-object v0, Lcom/oplus/util/OplusFontUtils;->sIndividualTypeface:Landroid/graphics/Typeface;

    .line 706
    sput-object v0, Lcom/oplus/util/OplusFontUtils;->sCurrentTypefacesArray:Ljava/util/List;

    .line 707
    sput-object v0, Lcom/oplus/util/OplusFontUtils;->sCurrentTypefaces:[Landroid/graphics/Typeface;

    .line 709
    :cond_3
    :goto_0
    return-void
.end method

.method public static blacklist createTypefaceForCustom(Ljava/util/Map;Ljava/util/Map$Entry;)Z
    .locals 6
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

    .line 723
    .local p0, "outSystemFontMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Landroid/graphics/fonts/FontFamily;>;"
    sget-boolean v0, Lcom/oplus/util/OplusFontUtils;->isFlipFontUsed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    const-string v2, "individual-font"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 724
    new-instance v0, Ljava/io/File;

    invoke-static {v1}, Lcom/oplus/util/OplusFontUtils;->getCustomizedFontFile(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 725
    .local v0, "flipedFontFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 726
    const/4 v3, 0x0

    .line 728
    .local v3, "tf":Landroid/graphics/Typeface;
    :try_start_0
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    .line 731
    goto :goto_0

    .line 729
    :catch_0
    move-exception v4

    .line 730
    .local v4, "e":Ljava/lang/RuntimeException;
    const-string v5, "RuntimeException createTypefaceForCustom fail"

    invoke-static {v5, v4}, Lcom/oplus/util/OplusFontUtils;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 732
    .end local v4    # "e":Ljava/lang/RuntimeException;
    :goto_0
    if-eqz v3, :cond_0

    .line 733
    invoke-interface {p0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    const/4 v1, 0x1

    return v1

    .line 738
    .end local v0    # "flipedFontFile":Ljava/io/File;
    .end local v3    # "tf":Landroid/graphics/Typeface;
    :cond_0
    return v1
.end method

.method public static blacklist createTypefaceKey(Ljava/lang/String;III)Ljava/lang/String;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "fv"    # I
    .param p2, "style"    # I
    .param p3, "weight"    # I

    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 564
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist createTypefaceWithVariation(Landroid/graphics/Typeface;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 7
    .param p0, "typeface"    # Landroid/graphics/Typeface;
    .param p1, "fontVariationSettings"    # Ljava/lang/String;

    .line 389
    sget-object v0, Landroid/graphics/OplusTypefaceInjector;->OPLUSUI_VF:Landroid/graphics/Typeface;

    invoke-virtual {p0}, Landroid/graphics/Typeface;->getWeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Typeface;->isItalic()Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p0

    .line 390
    invoke-static {p1}, Landroid/graphics/fonts/FontVariationAxis;->fromFontVariationSettings(Ljava/lang/String;)[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v0

    .line 391
    .local v0, "axesf":[Landroid/graphics/fonts/FontVariationAxis;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 392
    .local v1, "filteredAxes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/fonts/FontVariationAxis;>;"
    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    new-array v3, v2, [Landroid/graphics/fonts/FontVariationAxis;

    :goto_0
    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    .line 393
    .local v5, "axis":Landroid/graphics/fonts/FontVariationAxis;
    invoke-virtual {v5}, Landroid/graphics/fonts/FontVariationAxis;->getOpenTypeTagValue()I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/graphics/Typeface;->isSupportedAxes(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 394
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    .end local v5    # "axis":Landroid/graphics/fonts/FontVariationAxis;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 397
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 398
    invoke-static {p0, v1}, Landroid/graphics/Typeface;->createFromTypefaceWithVariation(Landroid/graphics/Typeface;Ljava/util/List;)Landroid/graphics/Typeface;

    move-result-object p0

    .line 399
    sget-object v2, Landroid/graphics/OplusMirrorTypeface;->mTypefaceExt:Lcom/oplus/reflect/RefObject;

    if-eqz v2, :cond_3

    .line 400
    sget-object v2, Landroid/graphics/OplusMirrorTypeface;->mTypefaceExt:Lcom/oplus/reflect/RefObject;

    invoke-virtual {v2, p0}, Lcom/oplus/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/ITypefaceExt;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/graphics/ITypefaceExt;->setSystemTypeface(Z)V

    .line 402
    :cond_3
    return-object p0

    .line 404
    :cond_4
    return-object p0
.end method

.method public static blacklist defaultFromStyle(I)Landroid/graphics/Typeface;
    .locals 2
    .param p0, "style"    # I

    .line 253
    invoke-static {}, Landroid/graphics/OplusTypefaceInjector;->getSystemDefaultTypefaces()[Landroid/graphics/Typeface;

    move-result-object v0

    .line 254
    .local v0, "systemDefaults":[Landroid/graphics/Typeface;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-ge p0, v1, :cond_0

    const/4 v1, -0x1

    if-le p0, v1, :cond_0

    .line 255
    aget-object v1, v0, p0

    return-object v1

    .line 257
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist doUpdateTypeface(Landroid/content/res/OplusBaseConfiguration;)V
    .locals 6
    .param p0, "configuration"    # Landroid/content/res/OplusBaseConfiguration;

    .line 648
    const/4 v0, 0x0

    .line 651
    .local v0, "tf":Landroid/graphics/Typeface;
    new-instance v1, Ljava/io/File;

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/oplus/util/OplusFontUtils;->getCustomizedFontFile(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 652
    .local v1, "flipedFontFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 653
    sput-boolean v4, Lcom/oplus/util/OplusFontUtils;->isFlipFontUsed:Z

    goto :goto_0

    .line 655
    :cond_0
    sput-boolean v2, Lcom/oplus/util/OplusFontUtils;->isFlipFontUsed:Z

    .line 657
    :goto_0
    sget-boolean v3, Lcom/oplus/util/OplusFontUtils;->isFlipFontUsed:Z

    sput-boolean v3, Loplus/content/res/OplusFontUtils;->isFlipFontUsed:Z

    .line 659
    :try_start_0
    sget-object v3, Lcom/oplus/util/OplusFontUtils;->FONTINFOARRAY_ROM6D0:[Lcom/oplus/util/OplusBaseFontUtils$FontLinkInfo;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/oplus/util/OplusBaseFontUtils$FontLinkInfo;->mDataFontName:Ljava/lang/String;

    invoke-static {v3}, Landroid/system/Os;->readlink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 660
    .local v3, "path":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 661
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v5

    .line 667
    .end local v3    # "path":Ljava/lang/String;
    :cond_1
    :goto_1
    goto :goto_2

    .line 665
    :catch_0
    move-exception v3

    .line 666
    .local v3, "e":Landroid/system/ErrnoException;
    const-string v5, "Could not update selinux policy initFont createFromFile "

    invoke-static {v5, v3}, Lcom/oplus/util/OplusFontUtils;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 663
    .end local v3    # "e":Landroid/system/ErrnoException;
    :catch_1
    move-exception v3

    .line 664
    .local v3, "e":Ljava/lang/RuntimeException;
    const-string v5, "RuntimeException initFont() createFromFile fail"

    invoke-static {v5, v3}, Lcom/oplus/util/OplusFontUtils;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v3    # "e":Ljava/lang/RuntimeException;
    goto :goto_1

    .line 670
    :goto_2
    sget-object v3, Lcom/oplus/util/OplusFontUtils;->sCurrentTypefaces:[Landroid/graphics/Typeface;

    if-nez v3, :cond_2

    .line 671
    const/4 v3, 0x4

    new-array v3, v3, [Landroid/graphics/Typeface;

    sput-object v3, Lcom/oplus/util/OplusFontUtils;->sCurrentTypefaces:[Landroid/graphics/Typeface;

    .line 673
    :cond_2
    sget-boolean v3, Lcom/oplus/util/OplusFontUtils;->isFlipFontUsed:Z

    if-eqz v3, :cond_3

    .line 674
    if-eqz v0, :cond_4

    .line 675
    sget-object v3, Lcom/oplus/util/OplusFontUtils;->sCurrentTypefaces:[Landroid/graphics/Typeface;

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v5

    aput-object v5, v3, v2

    .line 676
    sget-object v2, Lcom/oplus/util/OplusFontUtils;->sCurrentTypefaces:[Landroid/graphics/Typeface;

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v3

    aput-object v3, v2, v4

    .line 677
    sget-object v2, Lcom/oplus/util/OplusFontUtils;->sCurrentTypefaces:[Landroid/graphics/Typeface;

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v4

    aput-object v4, v2, v3

    .line 678
    sget-object v2, Lcom/oplus/util/OplusFontUtils;->sCurrentTypefaces:[Landroid/graphics/Typeface;

    const/4 v3, 0x3

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v4

    aput-object v4, v2, v3

    .line 679
    new-instance v2, Ljava/util/ArrayList;

    sget-object v3, Lcom/oplus/util/OplusFontUtils;->sCurrentTypefaces:[Landroid/graphics/Typeface;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v2, Lcom/oplus/util/OplusFontUtils;->sCurrentTypefacesArray:Ljava/util/List;

    goto :goto_3

    .line 682
    :cond_3
    const-string v2, "Not using flip font"

    invoke-static {v2}, Lcom/oplus/util/OplusFontUtils;->logd(Ljava/lang/String;)V

    .line 684
    :cond_4
    :goto_3
    return-void
.end method

.method public static blacklist flipTypeface(Landroid/graphics/ITypefaceExt;)Landroid/graphics/Typeface;
    .locals 3
    .param p0, "typefaceExt"    # Landroid/graphics/ITypefaceExt;

    .line 204
    const/4 v0, 0x0

    .line 205
    .local v0, "typeface":Landroid/graphics/Typeface;
    if-eqz p0, :cond_0

    .line 206
    invoke-interface {p0}, Landroid/graphics/ITypefaceExt;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    .line 208
    :cond_0
    sget-boolean v1, Lcom/oplus/util/OplusFontUtils;->isFlipFontUsed:Z

    if-eqz v1, :cond_4

    sget-boolean v1, Lcom/oplus/util/OplusFontUtils;->sReplaceFont:Z

    if-eqz v1, :cond_4

    sget-object v1, Lcom/oplus/util/OplusFontUtils;->sCurrentTypefaces:[Landroid/graphics/Typeface;

    if-eqz v1, :cond_4

    if-eqz v0, :cond_2

    if-eqz p0, :cond_1

    .line 212
    invoke-interface {p0}, Landroid/graphics/ITypefaceExt;->isSystemTypeface()Z

    move-result v1

    if-nez v1, :cond_2

    .line 213
    :cond_1
    invoke-static {v0}, Landroid/graphics/OplusTypefaceInjector;->isSystemTypeface(Landroid/graphics/Typeface;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 214
    :cond_2
    if-nez v0, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    .line 215
    .local v1, "style":I
    :goto_0
    sget-object v2, Lcom/oplus/util/OplusFontUtils;->sCurrentTypefaces:[Landroid/graphics/Typeface;

    aget-object v2, v2, v1

    return-object v2

    .line 216
    .end local v1    # "style":I
    :cond_4
    sget-boolean v1, Lcom/oplus/util/OplusFontUtils;->isFlipFontUsed:Z

    if-nez v1, :cond_5

    if-eqz v0, :cond_5

    sget-object v1, Lcom/oplus/util/OplusFontUtils;->sCurrentTypefacesArray:Ljava/util/List;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/oplus/util/OplusFontUtils;->sCurrentTypefacesArray:Ljava/util/List;

    .line 219
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 220
    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    invoke-static {v1}, Lcom/oplus/util/OplusFontUtils;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    return-object v1

    .line 221
    :cond_5
    sget-boolean v1, Lcom/oplus/util/OplusFontUtils;->isFlipFontUsed:Z

    if-nez v1, :cond_6

    if-eqz v0, :cond_6

    sget-object v1, Landroid/graphics/OplusTypefaceInjector;->OPLUSUI_MEDIUM:Landroid/graphics/Typeface;

    if-eqz v1, :cond_6

    sget-object v1, Landroid/graphics/OplusTypefaceInjector;->OPLUSUI_MEDIUM:Landroid/graphics/Typeface;

    .line 223
    invoke-virtual {v0, v1}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-boolean v1, Lcom/oplus/util/OplusFontUtils;->isCurrentLanguageSupportMediumFont:Z

    if-nez v1, :cond_6

    .line 225
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    return-object v1

    .line 227
    :cond_6
    return-object v0
.end method

.method public static blacklist flipTypeface(Landroid/graphics/ITypefaceExt;Landroid/graphics/Paint;)Landroid/graphics/Typeface;
    .locals 2
    .param p0, "typefaceExt"    # Landroid/graphics/ITypefaceExt;
    .param p1, "paint"    # Landroid/graphics/Paint;

    .line 191
    invoke-static {p0}, Lcom/oplus/util/OplusFontUtils;->flipTypeface(Landroid/graphics/ITypefaceExt;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 193
    .local v0, "tf":Landroid/graphics/Typeface;
    invoke-static {p0}, Lcom/oplus/util/OplusFontUtils;->shouldReplaceToOSans(Landroid/graphics/ITypefaceExt;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 194
    invoke-interface {p0}, Landroid/graphics/ITypefaceExt;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroid/graphics/ITypefaceExt;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    :goto_0
    invoke-static {v1, p1}, Lcom/oplus/util/OplusFontUtils;->replaceTypefaceWithVariation(Landroid/graphics/Typeface;Landroid/graphics/Paint;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 197
    :cond_1
    sget-boolean v1, Lcom/oplus/util/OplusFontUtils;->isFlipFontUsed:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/oplus/util/OplusFontUtils;->sIsCheckCTS:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/oplus/util/OplusFontUtils;->sReplaceFont:Z

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/oplus/util/OpSansCustomization;->shouldReplaceToOpSans(Landroid/graphics/ITypefaceExt;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 198
    invoke-static {p0}, Lcom/oplus/util/OpSansCustomization;->matchOpSans(Landroid/graphics/ITypefaceExt;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 200
    :cond_2
    return-object v0
.end method

.method private static blacklist freeCaches()V
    .locals 0

    .line 357
    invoke-static {}, Landroid/graphics/Canvas;->freeCaches()V

    .line 358
    invoke-static {}, Landroid/graphics/Canvas;->freeTextLayoutCaches()V

    .line 359
    return-void
.end method

.method public static blacklist getAdaptionValue(Ljava/lang/String;)I
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .line 713
    :try_start_0
    new-instance v0, Landroid/app/OplusActivityManager;

    invoke-direct {v0}, Landroid/app/OplusActivityManager;-><init>()V

    .line 714
    .local v0, "mOppoActivityManager":Landroid/app/OplusActivityManager;
    invoke-virtual {v0, p0}, Landroid/app/OplusActivityManager;->getFontVariationAdaption(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 715
    .local v1, "data":I
    return v1

    .line 716
    .end local v0    # "mOppoActivityManager":Landroid/app/OplusActivityManager;
    .end local v1    # "data":I
    :catch_0
    move-exception v0

    .line 717
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init data Exception , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FontUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    const/4 v1, 0x0

    return v1
.end method

.method private static blacklist getCustomizedFontFile(Z)Ljava/lang/String;
    .locals 4
    .param p0, "oldFile"    # Z

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/oplus/util/OplusFontUtils;->sUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 363
    .local v0, "userIdStr":Ljava/lang/String;
    sget v1, Lcom/oplus/util/OplusFontUtils;->sUserId:I

    if-nez v1, :cond_0

    .line 364
    const-string v0, ""

    .line 367
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/oplus/util/OplusFontUtils;->DATA_FONT_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p0, :cond_1

    const-string v2, "ColorOS-Regular.ttf"

    goto :goto_0

    :cond_1
    const-string v2, "Customized-Regular.ttf"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 368
    .local v1, "result":Ljava/lang/String;
    if-eqz p0, :cond_2

    .line 369
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCustomizedFontFile with name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FontUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_2
    return-object v1
.end method

.method public static blacklist getNeedReplaceAllTypefaceApp()Z
    .locals 1

    .line 186
    sget-boolean v0, Lcom/oplus/util/OplusFontUtils;->sNeedReplaceAllTypefaceApp:Z

    return v0
.end method

.method private static blacklist getVariationFontFromCache(Landroid/graphics/Typeface;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 6
    .param p0, "typeface"    # Landroid/graphics/Typeface;
    .param p1, "FontVariationSettings"    # Ljava/lang/String;

    .line 533
    invoke-static {p1}, Lcom/oplus/util/OplusFontUtils;->convertStringToInt(Ljava/lang/String;)I

    move-result v0

    .line 535
    .local v0, "fv":I
    div-int/lit8 v1, v0, 0xa

    mul-int/lit8 v1, v1, 0xa

    .line 537
    .end local v0    # "fv":I
    .local v1, "fv":I
    invoke-virtual {p0}, Landroid/graphics/Typeface;->getWeight()I

    move-result v0

    .line 539
    .local v0, "weight":I
    sget-object v2, Lcom/oplus/util/OplusFontUtils;->FONT_WEIGHT_CAST_WGHT:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 541
    .local v2, "wght":Ljava/lang/Integer;
    if-nez v2, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit16 v3, v3, -0x226

    :goto_0
    add-int/2addr v1, v3

    .line 543
    const/16 v3, 0x3e8

    if-lt v1, v3, :cond_1

    .line 544
    const/16 v1, 0x3e8

    .line 547
    :cond_1
    const/16 v3, 0x64

    if-gt v1, v3, :cond_2

    .line 548
    const/16 v1, 0x64

    .line 551
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Typeface;->getWeight()I

    move-result v4

    const-string v5, "sys-sans-en"

    invoke-static {v5, v1, v3, v4}, Lcom/oplus/util/OplusFontUtils;->createTypefaceKey(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v3

    .line 553
    .local v3, "key":Ljava/lang/String;
    sget-object v4, Lcom/oplus/util/OplusFontUtils;->sOplusVariationCacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Typeface;

    .line 554
    .local v4, "newTypeface":Landroid/graphics/Typeface;
    if-nez v4, :cond_3

    .line 555
    invoke-static {v1}, Lcom/oplus/util/OplusFontUtils;->convertIntToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/oplus/util/OplusFontUtils;->createTypefaceWithVariation(Landroid/graphics/Typeface;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    .line 556
    sget-object v5, Lcom/oplus/util/OplusFontUtils;->sOplusVariationCacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    :cond_3
    return-object v4
.end method

.method public static blacklist handleFactoryReset()V
    .locals 2

    .line 328
    sget-boolean v0, Lcom/oplus/util/OplusFontUtils;->sIsROM6d0FlipFont:Z

    if-eqz v0, :cond_1

    .line 330
    :try_start_0
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/oplus/util/OplusFontUtils;->getCustomizedFontFile(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 331
    .local v0, "flipFontFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    .end local v0    # "flipFontFile":Ljava/io/File;
    :cond_0
    goto :goto_0

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Failed handleFactoryReset"

    invoke-static {v1, v0}, Lcom/oplus/util/OplusFontUtils;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 338
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method public static blacklist initFontUtil()V
    .locals 7

    .line 602
    invoke-static {}, Lcom/oplus/util/OplusFontUtils;->renameFontFileName()V

    .line 603
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/oplus/util/OplusFontUtils;->getCustomizedFontFile(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 604
    .local v0, "fontFile":Ljava/io/File;
    const/4 v2, -0x1

    sput v2, Lcom/oplus/util/OplusFontUtils;->sFlipFont:I

    .line 605
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 606
    new-instance v2, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Random;-><init>(J)V

    .line 607
    .local v2, "randomizer":Ljava/util/Random;
    const/4 v3, 0x0

    .line 608
    .local v3, "min":I
    const/16 v4, 0x2710

    .line 609
    .local v4, "max":I
    sub-int v5, v4, v3

    const/4 v6, 0x1

    add-int/2addr v5, v6

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/2addr v5, v3

    sput v5, Lcom/oplus/util/OplusFontUtils;->sFlipFont:I

    .line 610
    sput-boolean v6, Lcom/oplus/util/OplusFontUtils;->isFlipFontUsed:Z

    .line 611
    sget-boolean v5, Lcom/oplus/util/OplusFontUtils;->isFlipFontUsed:Z

    sput-boolean v5, Loplus/content/res/OplusFontUtils;->isFlipFontUsed:Z

    .line 614
    .end local v2    # "randomizer":Ljava/util/Random;
    .end local v3    # "min":I
    .end local v4    # "max":I
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->hashCode()I

    move-result v2

    sput v2, Lcom/oplus/util/OplusFontUtils;->sUserId:I

    .line 615
    invoke-static {v1}, Lcom/oplus/util/OplusFontUtils;->checkAndCorrectFlipFontLink(Z)V

    .line 616
    return-void
.end method

.method public static blacklist initVariationFontVariable(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 442
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/util/OplusFontUtils;->mPackageName:Ljava/lang/String;

    .line 443
    invoke-static {}, Lcom/oplus/util/OplusFontUtils;->updateFontVariationRes()V

    .line 444
    return-void
.end method

.method public static blacklist isCurrentLanguageSupportMediumFont()Z
    .locals 3

    .line 341
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 342
    .local v0, "currentLcale":Ljava/util/Locale;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/oplus/util/OplusFontUtils;->SUPPORT_MEDIUM_FONT_LANGUAGE_LIST:Ljava/util/List;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    const/4 v1, 0x1

    return v1

    .line 345
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static blacklist isCurrentLanguageSupportVariationFont()Z
    .locals 3

    .line 349
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 350
    .local v0, "currentLcale":Ljava/util/Locale;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/oplus/util/OplusFontUtils;->SUPPORT_FONT_VARIATION_LIST:Ljava/util/List;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 351
    const/4 v1, 0x1

    return v1

    .line 353
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private static blacklist isOSansChanged(Loplus/content/res/OplusExtraConfiguration;I)Z
    .locals 7
    .param p0, "extraCfg"    # Loplus/content/res/OplusExtraConfiguration;
    .param p1, "changes"    # I

    .line 408
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 409
    return v0

    .line 411
    :cond_0
    const/high16 v1, 0x1000000

    and-int/2addr v1, p1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v0

    .line 412
    .local v1, "checkType":Z
    :goto_0
    sget-wide v3, Lcom/oplus/util/OplusFontUtils;->sPreOSansSettings:J

    iget v5, p0, Loplus/content/res/OplusExtraConfiguration;->mFontVariationSettings:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v0

    .line 413
    .local v3, "settingsChanged":Z
    :goto_1
    if-eqz v1, :cond_3

    if-eqz v3, :cond_3

    move v0, v2

    :cond_3
    return v0
.end method

.method private static blacklist relinkDataFontToTarget(ILjava/io/File;)Z
    .locals 10
    .param p0, "target"    # I
    .param p1, "customFontFile"    # Ljava/io/File;

    .line 282
    const-string v0, " , "

    const-string v1, "FontUtils"

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v3, Lcom/oplus/util/OplusFontUtils;->sFontLinkInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_4

    .line 283
    sget-object v3, Lcom/oplus/util/OplusFontUtils;->sFontLinkInfos:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/util/OplusBaseFontUtils$FontLinkInfo;

    .line 284
    .local v3, "fontLinkInfo":Lcom/oplus/util/OplusBaseFontUtils$FontLinkInfo;
    new-instance v5, Ljava/io/File;

    iget-object v6, v3, Lcom/oplus/util/OplusBaseFontUtils$FontLinkInfo;->mDataFontName:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 286
    .local v5, "dataFontLinkFile":Ljava/io/File;
    const/4 v6, 0x0

    :try_start_0
    const-string v7, ""

    .line 287
    .local v7, "targetFont":Ljava/lang/String;
    if-ne p0, v4, :cond_0

    .line 288
    iget-object v4, v3, Lcom/oplus/util/OplusBaseFontUtils$FontLinkInfo;->mSystemFontName:Ljava/lang/String;

    move-object v7, v4

    goto/16 :goto_1

    .line 289
    :cond_0
    const/4 v4, 0x2

    if-ne p0, v4, :cond_1

    .line 290
    invoke-static {v6}, Lcom/oplus/util/OplusFontUtils;->getCustomizedFontFile(Z)Ljava/lang/String;

    move-result-object v4

    move-object v7, v4

    .line 291
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v4, :cond_1

    .line 293
    :try_start_1
    new-instance v4, Landroid/graphics/fonts/Font$Builder;

    invoke-direct {v4, p1}, Landroid/graphics/fonts/Font$Builder;-><init>(Ljava/io/File;)V

    invoke-virtual {v4}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object v4

    .line 294
    .local v4, "customFont":Landroid/graphics/fonts/Font;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "invalidate font file check  pass ! "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_2

    .line 301
    .end local v4    # "customFont":Landroid/graphics/fonts/Font;
    goto :goto_1

    .line 298
    :catch_0
    move-exception v4

    .line 299
    .local v4, "illegalArgumentException":Ljava/lang/IllegalArgumentException;
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "invalidate font file check  failed illegalArgumentException "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 295
    .end local v4    # "illegalArgumentException":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v4

    .line 296
    .local v4, "ioException":Ljava/io/IOException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "invalidate font file check  failed ioException "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 301
    nop

    .line 305
    .end local v4    # "ioException":Ljava/io/IOException;
    :cond_1
    :goto_1
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 306
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 307
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "relink font targetFont = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ", "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, v3, Lcom/oplus/util/OplusBaseFontUtils$FontLinkInfo;->mDataFontName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/oplus/util/OplusFontUtils;->logd(Ljava/lang/String;)V

    .line 309
    iget-object v4, v3, Lcom/oplus/util/OplusBaseFontUtils$FontLinkInfo;->mDataFontName:Ljava/lang/String;

    invoke-static {v7, v4}, Landroid/system/Os;->symlink(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 310
    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v3, Lcom/oplus/util/OplusBaseFontUtils$FontLinkInfo;->mDataFontName:Ljava/lang/String;

    .line 311
    invoke-static {v4}, Landroid/system/Os;->readlink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 312
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 313
    iget-object v4, v3, Lcom/oplus/util/OplusBaseFontUtils$FontLinkInfo;->mDataFontName:Ljava/lang/String;

    invoke-static {v7, v4}, Landroid/system/Os;->symlink(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_2

    .line 321
    .end local v7    # "targetFont":Ljava/lang/String;
    :cond_3
    :goto_2
    nop

    .line 282
    .end local v3    # "fontLinkInfo":Lcom/oplus/util/OplusBaseFontUtils$FontLinkInfo;
    .end local v5    # "dataFontLinkFile":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 318
    .restart local v3    # "fontLinkInfo":Lcom/oplus/util/OplusBaseFontUtils$FontLinkInfo;
    .restart local v5    # "dataFontLinkFile":Ljava/io/File;
    :catch_2
    move-exception v0

    .line 319
    .local v0, "e":Landroid/system/ErrnoException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not update selinux policy check and correct flipfont: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v3, Lcom/oplus/util/OplusBaseFontUtils$FontLinkInfo;->mDataFontName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/oplus/util/OplusFontUtils;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 320
    return v6

    .line 315
    .end local v0    # "e":Landroid/system/ErrnoException;
    :catch_3
    move-exception v0

    .line 316
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "SELinux policy update check and correct flipfont"

    invoke-static {v1, v0}, Lcom/oplus/util/OplusFontUtils;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 317
    return v6

    .line 324
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v2    # "i":I
    .end local v3    # "fontLinkInfo":Lcom/oplus/util/OplusBaseFontUtils$FontLinkInfo;
    .end local v5    # "dataFontLinkFile":Ljava/io/File;
    :cond_4
    return v4
.end method

.method private static blacklist renameFontFileName()V
    .locals 4

    .line 89
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/oplus/util/OplusFontUtils;->getCustomizedFontFile(Z)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "fontFilePath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    .local v1, "oldFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    new-instance v2, Ljava/io/File;

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/oplus/util/OplusFontUtils;->getCustomizedFontFile(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 93
    const-string v2, "FontUtils"

    const-string v3, "Failed to rename to new font file!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_0
    return-void
.end method

.method public static blacklist replaceFakeBoldToColorMedium(Landroid/widget/TextView;Landroid/graphics/ITypefaceExt;I)V
    .locals 3
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "typefaceExt"    # Landroid/graphics/ITypefaceExt;
    .param p2, "style"    # I

    .line 231
    if-nez p0, :cond_0

    .line 232
    return-void

    .line 234
    :cond_0
    const/4 v0, 0x0

    .line 235
    .local v0, "typeface":Landroid/graphics/Typeface;
    if-eqz p1, :cond_1

    .line 236
    invoke-interface {p1}, Landroid/graphics/ITypefaceExt;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    .line 238
    :cond_1
    sget-boolean v1, Lcom/oplus/util/OplusFontUtils;->sIsCheckCTS:Z

    if-nez v1, :cond_6

    sget v1, Lcom/oplus/util/OplusFontUtils;->mFontVariationStatus:I

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq p2, v1, :cond_2

    if-ne p2, v2, :cond_6

    :cond_2
    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    .line 240
    invoke-interface {p1}, Landroid/graphics/ITypefaceExt;->isSystemTypeface()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v1, v0}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Landroid/graphics/OplusTypefaceInjector;->OPLUSUI_MEDIUM:Landroid/graphics/Typeface;

    if-eqz v1, :cond_6

    sget-object v1, Landroid/graphics/OplusTypefaceInjector;->OPLUSUI_MEDIUM:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_4
    sget-boolean v1, Lcom/oplus/util/OplusFontUtils;->isCurrentLanguageSupportMediumFont:Z

    if-eqz v1, :cond_6

    .line 242
    sget-object v1, Landroid/graphics/OplusTypefaceInjector;->OPLUSUI_MEDIUM:Landroid/graphics/Typeface;

    if-ne p2, v2, :cond_5

    const/4 v2, 0x2

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_1

    .line 244
    :cond_6
    invoke-virtual {p0, v0, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 246
    :goto_1
    return-void
.end method

.method public static blacklist replaceSysSans(Landroid/graphics/Typeface;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "typeface"    # Landroid/graphics/Typeface;
    .param p1, "familyName"    # Ljava/lang/String;

    .line 742
    const-string v0, "sys-sans-en"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "op-sans-en"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 743
    :cond_0
    invoke-static {}, Lcom/oplus/util/OplusFontUtils;->isCurrentLanguageSupportVariationFont()Z

    move-result v0

    if-nez v0, :cond_1

    .line 744
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    return-object v0

    .line 746
    :cond_1
    return-object p0
.end method

.method public static blacklist replaceTypefaceWithVariation(Landroid/graphics/Typeface;Landroid/graphics/Paint;)Landroid/graphics/Typeface;
    .locals 3
    .param p0, "typeface"    # Landroid/graphics/Typeface;
    .param p1, "paint"    # Landroid/graphics/Paint;

    .line 375
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontVariationSettings()Ljava/lang/String;

    move-result-object v0

    .line 377
    .local v0, "fv":Ljava/lang/String;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/oplus/util/OplusFontUtils;->sLastFontVariationSettings:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 378
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getWrapper()Landroid/graphics/IPaintWrapper;

    move-result-object v1

    .line 379
    .local v1, "wrapper":Landroid/graphics/IPaintWrapper;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/graphics/IPaintWrapper;->getFontVariationSettings()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 380
    sget-object v2, Lcom/oplus/util/OplusFontUtils;->mFontVariationSettings:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/graphics/IPaintWrapper;->setFontVariationSettings(Ljava/lang/String;)V

    .line 382
    :cond_1
    sget-object v0, Lcom/oplus/util/OplusFontUtils;->mFontVariationSettings:Ljava/lang/String;

    .line 385
    .end local v1    # "wrapper":Landroid/graphics/IPaintWrapper;
    :cond_2
    invoke-static {p0, v0}, Lcom/oplus/util/OplusFontUtils;->getVariationFontFromCache(Landroid/graphics/Typeface;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist setAppTypeFace(Ljava/lang/String;)V
    .locals 1
    .param p0, "sAppName"    # Ljava/lang/String;

    .line 167
    sget-object v0, Lcom/oplus/util/OplusFontUtils;->FLITER_CTS_APP_PKG_LIST:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    const/4 v0, 0x1

    sput-boolean v0, Lcom/oplus/util/OplusFontUtils;->sIsCheckCTS:Z

    .line 170
    :cond_0
    sget-object v0, Lcom/oplus/util/OplusFontUtils;->FLITER_NOT_REPLACEFONT_APP_PKG_LIST:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    const/4 v0, 0x0

    sput-boolean v0, Lcom/oplus/util/OplusFontUtils;->sReplaceFont:Z

    .line 173
    :cond_1
    return-void
.end method

.method public static blacklist setFlipFont(Landroid/content/res/OplusBaseConfiguration;)V
    .locals 3
    .param p0, "configuration"    # Landroid/content/res/OplusBaseConfiguration;

    .line 76
    const-class v0, Landroid/content/res/OplusBaseConfiguration;

    invoke-static {v0, p0}, Lcom/oplus/util/OplusTypeCastingHelper;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/OplusBaseConfiguration;

    .line 77
    .local v0, "baseConfiguration":Landroid/content/res/OplusBaseConfiguration;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/res/OplusBaseConfiguration;->mOplusExtraConfiguration:Loplus/content/res/OplusExtraConfiguration;

    if-eqz v1, :cond_0

    sget v1, Lcom/oplus/util/OplusFontUtils;->sFlipFont:I

    iget-object v2, v0, Landroid/content/res/OplusBaseConfiguration;->mOplusExtraConfiguration:Loplus/content/res/OplusExtraConfiguration;

    iget v2, v2, Loplus/content/res/OplusExtraConfiguration;->mFlipFont:I

    if-eq v1, v2, :cond_0

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetFlipFont -- sFlipFont="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/oplus/util/OplusFontUtils;->sFlipFont:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sIsROM6d0FlipFont= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/oplus/util/OplusFontUtils;->sIsROM6d0FlipFont:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " --> mFlipFont="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/content/res/OplusBaseConfiguration;->mOplusExtraConfiguration:Loplus/content/res/OplusExtraConfiguration;

    iget v2, v2, Loplus/content/res/OplusExtraConfiguration;->mFlipFont:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/util/OplusFontUtils;->logd(Ljava/lang/String;)V

    .line 79
    iget-object v1, v0, Landroid/content/res/OplusBaseConfiguration;->mOplusExtraConfiguration:Loplus/content/res/OplusExtraConfiguration;

    iget v1, v1, Loplus/content/res/OplusExtraConfiguration;->mFlipFont:I

    sput v1, Lcom/oplus/util/OplusFontUtils;->sFlipFont:I

    .line 80
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/oplus/util/OplusFontUtils;->checkAndCorrectFlipFontLink(Z)V

    .line 84
    invoke-static {p0}, Lcom/oplus/util/OplusFontUtils;->doUpdateTypeface(Landroid/content/res/OplusBaseConfiguration;)V

    .line 86
    :cond_0
    return-void
.end method

.method public static blacklist setFlipFontWhenUserChange(Landroid/content/res/OplusBaseConfiguration;)V
    .locals 4
    .param p0, "configuration"    # Landroid/content/res/OplusBaseConfiguration;

    .line 102
    const-class v0, Landroid/content/res/OplusBaseConfiguration;

    invoke-static {v0, p0}, Lcom/oplus/util/OplusTypeCastingHelper;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/OplusBaseConfiguration;

    .line 103
    .local v0, "baseConfiguration":Landroid/content/res/OplusBaseConfiguration;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/res/OplusBaseConfiguration;->mOplusExtraConfiguration:Loplus/content/res/OplusExtraConfiguration;

    iget v1, v1, Loplus/content/res/OplusExtraConfiguration;->mFontUserId:I

    if-ltz v1, :cond_0

    .line 104
    iget-object v1, v0, Landroid/content/res/OplusBaseConfiguration;->mOplusExtraConfiguration:Loplus/content/res/OplusExtraConfiguration;

    iget v1, v1, Loplus/content/res/OplusExtraConfiguration;->mFontUserId:I

    .line 105
    .local v1, "currentUserId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFlipFontWhenUserChange -- mUserId in mExtraConfiguration = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sUserId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/oplus/util/OplusFontUtils;->sUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oplus/util/OplusFontUtils;->logd(Ljava/lang/String;)V

    .line 107
    iget-object v2, v0, Landroid/content/res/OplusBaseConfiguration;->mOplusExtraConfiguration:Loplus/content/res/OplusExtraConfiguration;

    iget v2, v2, Loplus/content/res/OplusExtraConfiguration;->mFlipFont:I

    sput v2, Lcom/oplus/util/OplusFontUtils;->sFlipFont:I

    .line 108
    sput v1, Lcom/oplus/util/OplusFontUtils;->sUserId:I

    .line 109
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/oplus/util/OplusFontUtils;->checkAndCorrectFlipFontLink(Z)V

    .line 113
    invoke-static {p0}, Lcom/oplus/util/OplusFontUtils;->doUpdateTypeface(Landroid/content/res/OplusBaseConfiguration;)V

    .line 115
    .end local v1    # "currentUserId":I
    :cond_0
    return-void
.end method

.method public static blacklist setIMEFlag(Z)V
    .locals 2
    .param p0, "isIme"    # Z

    .line 591
    sget-object v0, Lcom/oplus/util/OplusFontUtils;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oplus/util/OplusFontUtils;->mPackageName:Ljava/lang/String;

    const-string v1, "com.google.android.marvin.talkback"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    const/4 v0, 0x0

    sput-boolean v0, Lcom/oplus/util/OplusFontUtils;->sIsIme:Z

    goto :goto_0

    .line 594
    :cond_0
    sput-boolean p0, Lcom/oplus/util/OplusFontUtils;->sIsIme:Z

    .line 596
    :goto_0
    return-void
.end method

.method public static blacklist setNeedReplaceAllTypefaceApp(Z)V
    .locals 0
    .param p0, "flag"    # Z

    .line 179
    sput-boolean p0, Lcom/oplus/util/OplusFontUtils;->sNeedReplaceAllTypefaceApp:Z

    .line 180
    return-void
.end method

.method public static blacklist shouldReplaceToOSans(Landroid/graphics/ITypefaceExt;)Z
    .locals 2
    .param p0, "typefaceExt"    # Landroid/graphics/ITypefaceExt;

    .line 508
    sget-object v0, Landroid/graphics/OplusTypefaceInjector;->OPLUSUI_VF:Landroid/graphics/Typeface;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 509
    return v1

    .line 512
    :cond_0
    sget v0, Lcom/oplus/util/OplusFontUtils;->mFontVariationStatus:I

    if-nez v0, :cond_1

    .line 513
    return v1

    .line 516
    :cond_1
    sget-boolean v0, Lcom/oplus/util/OplusFontUtils;->isCurrentLanguageSupportVariationFont:Z

    if-nez v0, :cond_2

    .line 517
    return v1

    .line 520
    :cond_2
    sget-boolean v0, Lcom/oplus/util/OplusFontUtils;->isFlipFontUsed:Z

    if-eqz v0, :cond_3

    .line 521
    return v1

    .line 524
    :cond_3
    invoke-interface {p0}, Landroid/graphics/ITypefaceExt;->isSystemTypeface()Z

    move-result v0

    if-nez v0, :cond_4

    .line 525
    return v1

    .line 528
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist updateConfigurationInUIMode(Landroid/content/Context;Landroid/content/res/OplusBaseConfiguration;I)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Landroid/content/res/OplusBaseConfiguration;
    .param p2, "userId"    # I

    .line 575
    iget v0, p1, Landroid/content/res/OplusBaseConfiguration;->uiMode:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 576
    .local v0, "isNightMode":Z
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "font_variation_settings"

    const/16 v3, 0x226

    invoke-static {v1, v2, v3, p2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 577
    .local v1, "fontVariationSettings":I
    const/high16 v2, -0x10000

    and-int/2addr v2, v1

    .line 578
    .local v2, "vectorDrawableConfig":I
    and-int/lit16 v4, v1, 0xfff

    .line 579
    .local v4, "variation":I
    const v5, 0xf000

    and-int v6, v1, v5

    shr-int/lit8 v6, v6, 0xc

    .line 580
    .local v6, "status":I
    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 581
    if-eqz v0, :cond_1

    const/16 v3, 0x1f4

    :cond_1
    move v4, v3

    .line 583
    :cond_2
    shl-int/lit8 v3, v6, 0xc

    and-int/2addr v3, v5

    .line 584
    .end local v6    # "status":I
    .local v3, "status":I
    const-class v5, Landroid/content/res/OplusBaseConfiguration;

    invoke-static {v5, p1}, Lcom/oplus/util/OplusTypeCastingHelper;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/OplusBaseConfiguration;

    .line 585
    .local v5, "baseConfiguration":Landroid/content/res/OplusBaseConfiguration;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateConfigurationInUIMode:  isNightMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " status="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " variation="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/oplus/util/OplusFontUtils;->logd(Ljava/lang/String;)V

    .line 586
    or-int v6, v4, v3

    .line 587
    .local v6, "fontConfig":I
    iget-object v7, v5, Landroid/content/res/OplusBaseConfiguration;->mOplusExtraConfiguration:Loplus/content/res/OplusExtraConfiguration;

    or-int v8, v2, v6

    iput v8, v7, Loplus/content/res/OplusExtraConfiguration;->mFontVariationSettings:I

    .line 588
    return-void
.end method

.method private static blacklist updateFontVariationRes()V
    .locals 3

    .line 450
    sget v0, Lcom/oplus/util/OplusFontUtils;->mFontVariationStatus:I

    packed-switch v0, :pswitch_data_0

    .line 469
    sget-object v0, Lcom/oplus/util/OplusFontUtils;->mFontVariationSettings:Ljava/lang/String;

    .local v0, "newFv":Ljava/lang/String;
    goto :goto_0

    .line 458
    .end local v0    # "newFv":Ljava/lang/String;
    :pswitch_0
    sget v0, Lcom/oplus/util/OplusFontUtils;->mFontVariationAdaption:I

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/oplus/util/OplusFontUtils;->isSearched:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/oplus/util/OplusFontUtils;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 459
    sget-object v0, Lcom/oplus/util/OplusFontUtils;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/oplus/util/OplusFontUtils;->getAdaptionValue(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/oplus/util/OplusFontUtils;->mFontVariationAdaption:I

    .line 460
    const/4 v0, 0x1

    sput-boolean v0, Lcom/oplus/util/OplusFontUtils;->isSearched:Z

    .line 462
    :cond_0
    sget v0, Lcom/oplus/util/OplusFontUtils;->mFontVariationAdaption:I

    if-eqz v0, :cond_1

    .line 463
    sget v0, Lcom/oplus/util/OplusFontUtils;->mFontVariationAdaption:I

    invoke-static {v0}, Lcom/oplus/util/OplusFontUtils;->convertIntToString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "newFv":Ljava/lang/String;
    goto :goto_0

    .line 465
    .end local v0    # "newFv":Ljava/lang/String;
    :cond_1
    sget v0, Lcom/oplus/util/OplusFontUtils;->mFontVariation:I

    invoke-static {v0}, Lcom/oplus/util/OplusFontUtils;->convertIntToString(I)Ljava/lang/String;

    move-result-object v0

    .line 467
    .restart local v0    # "newFv":Ljava/lang/String;
    goto :goto_0

    .line 455
    .end local v0    # "newFv":Ljava/lang/String;
    :pswitch_1
    sget v0, Lcom/oplus/util/OplusFontUtils;->mFontVariation:I

    invoke-static {v0}, Lcom/oplus/util/OplusFontUtils;->convertIntToString(I)Ljava/lang/String;

    move-result-object v0

    .line 456
    .restart local v0    # "newFv":Ljava/lang/String;
    goto :goto_0

    .line 452
    .end local v0    # "newFv":Ljava/lang/String;
    :pswitch_2
    const/16 v0, 0x226

    invoke-static {v0}, Lcom/oplus/util/OplusFontUtils;->convertIntToString(I)Ljava/lang/String;

    move-result-object v0

    .line 453
    .restart local v0    # "newFv":Ljava/lang/String;
    nop

    .line 473
    :goto_0
    sget-object v1, Lcom/oplus/util/OplusFontUtils;->mFontVariationSettings:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 474
    sget-object v1, Lcom/oplus/util/OplusFontUtils;->mFontVariationSettings:Ljava/lang/String;

    sput-object v1, Lcom/oplus/util/OplusFontUtils;->sLastFontVariationSettings:Ljava/lang/String;

    .line 475
    sput-object v0, Lcom/oplus/util/OplusFontUtils;->mFontVariationSettings:Ljava/lang/String;

    .line 479
    :cond_2
    sget-object v1, Landroid/graphics/OplusTypefaceInjector;->OPLUSUI_VF:Landroid/graphics/Typeface;

    if-eqz v1, :cond_3

    sget-object v1, Landroid/graphics/OplusTypefaceInjector;->OPLUSUI_MEDIUM:Landroid/graphics/Typeface;

    if-nez v1, :cond_4

    .line 480
    :cond_3
    invoke-static {}, Landroid/graphics/OplusTypefaceInjector;->getSystemFontMap()Ljava/util/Map;

    move-result-object v1

    const-string v2, "sys-sans-en"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    sput-object v1, Landroid/graphics/OplusTypefaceInjector;->OPLUSUI_VF:Landroid/graphics/Typeface;

    .line 481
    invoke-static {}, Landroid/graphics/OplusTypefaceInjector;->getSystemFontMap()Ljava/util/Map;

    move-result-object v1

    const-string v2, "sans-serif-medium"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    sput-object v1, Landroid/graphics/OplusTypefaceInjector;->OPLUSUI_MEDIUM:Landroid/graphics/Typeface;

    .line 484
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateFontVariationConfiguration: mFontVariation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/oplus/util/OplusFontUtils;->mFontVariation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mFontVariationStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/oplus/util/OplusFontUtils;->mFontVariationStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPackageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/oplus/util/OplusFontUtils;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mFontVariationAdaption = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/oplus/util/OplusFontUtils;->mFontVariationAdaption:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/util/OplusFontUtils;->logd(Ljava/lang/String;)V

    .line 489
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist updateLanguageLocale(Landroid/content/res/OplusBaseConfiguration;)V
    .locals 1
    .param p0, "config"    # Landroid/content/res/OplusBaseConfiguration;

    .line 437
    invoke-static {}, Lcom/oplus/util/OplusFontUtils;->isCurrentLanguageSupportVariationFont()Z

    move-result v0

    sput-boolean v0, Lcom/oplus/util/OplusFontUtils;->isCurrentLanguageSupportVariationFont:Z

    .line 438
    invoke-static {}, Lcom/oplus/util/OplusFontUtils;->isCurrentLanguageSupportMediumFont()Z

    move-result v0

    sput-boolean v0, Lcom/oplus/util/OplusFontUtils;->isCurrentLanguageSupportMediumFont:Z

    .line 439
    return-void
.end method

.method public static blacklist updateOSansConfig(Landroid/content/res/OplusBaseConfiguration;I)Z
    .locals 7
    .param p0, "config"    # Landroid/content/res/OplusBaseConfiguration;
    .param p1, "changes"    # I

    .line 417
    and-int/lit8 v0, p1, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 418
    .local v0, "localeChanged":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 419
    invoke-static {p0}, Lcom/oplus/util/OplusFontUtils;->updateLanguageLocale(Landroid/content/res/OplusBaseConfiguration;)V

    .line 421
    :cond_1
    const-class v3, Landroid/content/res/OplusBaseConfiguration;

    invoke-static {v3, p0}, Lcom/oplus/util/OplusTypeCastingHelper;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/OplusBaseConfiguration;

    .line 422
    .local v3, "baseCfg":Landroid/content/res/OplusBaseConfiguration;
    if-nez v3, :cond_2

    .line 423
    return v2

    .line 425
    :cond_2
    iget-object v4, v3, Landroid/content/res/OplusBaseConfiguration;->mOplusExtraConfiguration:Loplus/content/res/OplusExtraConfiguration;

    .line 426
    .local v4, "extraCfg":Loplus/content/res/OplusExtraConfiguration;
    invoke-static {v4, p1}, Lcom/oplus/util/OplusFontUtils;->isOSansChanged(Loplus/content/res/OplusExtraConfiguration;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 427
    iget v2, v4, Loplus/content/res/OplusExtraConfiguration;->mFontVariationSettings:I

    and-int/lit16 v2, v2, 0xfff

    sput v2, Lcom/oplus/util/OplusFontUtils;->mFontVariation:I

    .line 428
    iget v2, v4, Loplus/content/res/OplusExtraConfiguration;->mFontVariationSettings:I

    const v5, 0xf000

    and-int/2addr v2, v5

    shr-int/lit8 v2, v2, 0xc

    sput v2, Lcom/oplus/util/OplusFontUtils;->mFontVariationStatus:I

    .line 429
    invoke-static {}, Lcom/oplus/util/OplusFontUtils;->updateFontVariationRes()V

    .line 430
    iget v2, v4, Loplus/content/res/OplusExtraConfiguration;->mFontVariationSettings:I

    int-to-long v5, v2

    sput-wide v5, Lcom/oplus/util/OplusFontUtils;->sPreOSansSettings:J

    .line 431
    return v1

    .line 433
    :cond_3
    return v2
.end method

.method public static blacklist updateOpSansConfig(Landroid/content/Context;Landroid/content/res/OplusBaseConfiguration;I)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Landroid/content/res/OplusBaseConfiguration;
    .param p2, "userId"    # I

    .line 621
    invoke-static {p0, p1, p2}, Lcom/oplus/util/OpSansCustomization;->updateOpSansConfig(Landroid/content/Context;Landroid/content/res/OplusBaseConfiguration;I)V

    .line 622
    return-void
.end method

.method private static blacklist updateThemeStoreFontConfig(Landroid/content/res/OplusBaseConfiguration;I)Z
    .locals 4
    .param p0, "configuration"    # Landroid/content/res/OplusBaseConfiguration;
    .param p1, "changes"    # I

    .line 141
    const-class v0, Landroid/content/res/OplusBaseConfiguration;

    invoke-static {v0, p0}, Lcom/oplus/util/OplusTypeCastingHelper;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/OplusBaseConfiguration;

    .line 142
    .local v0, "baseConfiguration":Landroid/content/res/OplusBaseConfiguration;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 143
    return v1

    .line 145
    :cond_0
    iget-object v2, v0, Landroid/content/res/OplusBaseConfiguration;->mOplusExtraConfiguration:Loplus/content/res/OplusExtraConfiguration;

    iget v2, v2, Loplus/content/res/OplusExtraConfiguration;->mFontUserId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 146
    const-string v2, "invalid mFontUserId in extraConfiguration -1, abandon"

    invoke-static {v2}, Lcom/oplus/util/OplusFontUtils;->logd(Ljava/lang/String;)V

    .line 147
    return v1

    .line 151
    :cond_1
    sget v2, Lcom/oplus/util/OplusFontUtils;->sFlipFont:I

    iget-object v3, v0, Landroid/content/res/OplusBaseConfiguration;->mOplusExtraConfiguration:Loplus/content/res/OplusExtraConfiguration;

    iget v3, v3, Loplus/content/res/OplusExtraConfiguration;->mFlipFont:I

    if-ne v2, v3, :cond_2

    sget v2, Lcom/oplus/util/OplusFontUtils;->sUserId:I

    iget-object v3, v0, Landroid/content/res/OplusBaseConfiguration;->mOplusExtraConfiguration:Loplus/content/res/OplusExtraConfiguration;

    iget v3, v3, Loplus/content/res/OplusExtraConfiguration;->mFontUserId:I

    if-ne v2, v3, :cond_2

    .line 153
    return v1

    .line 156
    :cond_2
    iget-object v1, v0, Landroid/content/res/OplusBaseConfiguration;->mOplusExtraConfiguration:Loplus/content/res/OplusExtraConfiguration;

    iget v1, v1, Loplus/content/res/OplusExtraConfiguration;->mFlipFont:I

    sput v1, Lcom/oplus/util/OplusFontUtils;->sFlipFont:I

    .line 157
    iget-object v1, v0, Landroid/content/res/OplusBaseConfiguration;->mOplusExtraConfiguration:Loplus/content/res/OplusExtraConfiguration;

    iget v1, v1, Loplus/content/res/OplusExtraConfiguration;->mFontUserId:I

    sput v1, Lcom/oplus/util/OplusFontUtils;->sUserId:I

    .line 158
    invoke-static {p0}, Lcom/oplus/util/OplusFontUtils;->doUpdateTypeface(Landroid/content/res/OplusBaseConfiguration;)V

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<updateTypefaceInCurrProcess> myTid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , fliped = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/oplus/util/OplusFontUtils;->isFlipFontUsed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", myUid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 160
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", myPid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mFontUserId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/content/res/OplusBaseConfiguration;->mOplusExtraConfiguration:Loplus/content/res/OplusExtraConfiguration;

    iget v2, v2, Loplus/content/res/OplusExtraConfiguration;->mFontUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 159
    invoke-static {v1}, Lcom/oplus/util/OplusFontUtils;->logd(Ljava/lang/String;)V

    .line 162
    const/4 v1, 0x1

    return v1
.end method

.method public static blacklist updateTypefaceInCurrProcess(Landroid/content/res/OplusBaseConfiguration;I)V
    .locals 3
    .param p0, "configuration"    # Landroid/content/res/OplusBaseConfiguration;
    .param p1, "changes"    # I

    .line 122
    const/4 v0, 0x0

    .line 124
    .local v0, "changed":Z
    invoke-static {p0, p1}, Lcom/oplus/util/OplusFontUtils;->updateThemeStoreFontConfig(Landroid/content/res/OplusBaseConfiguration;I)Z

    move-result v0

    .line 126
    invoke-static {p0, p1}, Lcom/oplus/util/OplusFontUtils;->updateOSansConfig(Landroid/content/res/OplusBaseConfiguration;I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 128
    invoke-static {p0, p1}, Lcom/oplus/util/OpSansCustomization;->applyNewOpSansConfig(Landroid/content/res/OplusBaseConfiguration;I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 130
    if-eqz v0, :cond_0

    .line 131
    invoke-static {}, Lcom/oplus/util/OplusFontUtils;->freeCaches()V

    .line 132
    sget-boolean v1, Lcom/oplus/util/OplusFontUtils;->sIsIme:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/oplus/util/OplusFontUtils;->mFontVariationStatus:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "kill:IME "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/oplus/util/OplusFontUtils;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FontUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 137
    :cond_0
    return-void
.end method
