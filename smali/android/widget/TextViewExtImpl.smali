.class public Landroid/widget/TextViewExtImpl;
.super Ljava/lang/Object;
.source "TextViewExtImpl.java"

# interfaces
.implements Landroid/widget/ITextViewExt;


# instance fields
.field private blacklist mFontManager:Lcom/oplus/font/IOplusFontManager;

.field private blacklist mOplusCustomizeTextViewFeature:Landroid/widget/IOplusCustomizeTextViewFeature;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 3
    .param p1, "base"    # Ljava/lang/Object;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-object v0, Lcom/oplus/font/IOplusFontManager;->DEFAULT:Lcom/oplus/font/IOplusFontManager;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/oplus/font/IOplusFontManager;

    iput-object v0, p0, Landroid/widget/TextViewExtImpl;->mFontManager:Lcom/oplus/font/IOplusFontManager;

    .line 33
    sget-object v0, Landroid/widget/IOplusCustomizeTextViewFeature;->DEFAULT:Landroid/widget/IOplusCustomizeTextViewFeature;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Landroid/widget/IOplusCustomizeTextViewFeature;

    iput-object v0, p0, Landroid/widget/TextViewExtImpl;->mOplusCustomizeTextViewFeature:Landroid/widget/IOplusCustomizeTextViewFeature;

    .line 29
    return-void
.end method


# virtual methods
.method public whitelist flipTypeface(Landroid/graphics/Typeface;Landroid/graphics/Paint;)Landroid/graphics/Typeface;
    .locals 2
    .param p1, "typeface"    # Landroid/graphics/Typeface;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 57
    iget-object v0, p0, Landroid/widget/TextViewExtImpl;->mFontManager:Lcom/oplus/font/IOplusFontManager;

    if-nez p1, :cond_0

    sget-object v1, Landroid/graphics/ITypefaceExt;->DEFAULT:Landroid/graphics/ITypefaceExt;

    goto :goto_0

    :cond_0
    iget-object v1, p1, Landroid/graphics/Typeface;->mTypefaceExt:Landroid/graphics/ITypefaceExt;

    :goto_0
    invoke-interface {v0, v1, p2}, Lcom/oplus/font/IOplusFontManager;->flipTypeface(Landroid/graphics/ITypefaceExt;Landroid/graphics/Paint;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getClipboardStatus()Z
    .locals 1

    .line 42
    iget-object v0, p0, Landroid/widget/TextViewExtImpl;->mOplusCustomizeTextViewFeature:Landroid/widget/IOplusCustomizeTextViewFeature;

    invoke-interface {v0}, Landroid/widget/IOplusCustomizeTextViewFeature;->getClipboardStatus()Z

    move-result v0

    return v0
.end method

.method public whitelist getTypefaceIndex(II)I
    .locals 1
    .param p1, "originIndex"    # I
    .param p2, "oplusIndex"    # I

    .line 47
    iget-object v0, p0, Landroid/widget/TextViewExtImpl;->mFontManager:Lcom/oplus/font/IOplusFontManager;

    invoke-interface {v0, p1, p2}, Lcom/oplus/font/IOplusFontManager;->getTypefaceIndex(II)I

    move-result v0

    return v0
.end method

.method public whitelist init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    iget-object v0, p0, Landroid/widget/TextViewExtImpl;->mOplusCustomizeTextViewFeature:Landroid/widget/IOplusCustomizeTextViewFeature;

    invoke-interface {v0, p1}, Landroid/widget/IOplusCustomizeTextViewFeature;->init(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public whitelist replaceFakeBoldToMedium(Landroid/widget/TextView;Landroid/graphics/Typeface;I)V
    .locals 2
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "typeface"    # Landroid/graphics/Typeface;
    .param p3, "style"    # I

    .line 52
    iget-object v0, p0, Landroid/widget/TextViewExtImpl;->mFontManager:Lcom/oplus/font/IOplusFontManager;

    if-nez p2, :cond_0

    sget-object v1, Landroid/graphics/ITypefaceExt;->DEFAULT:Landroid/graphics/ITypefaceExt;

    goto :goto_0

    :cond_0
    iget-object v1, p2, Landroid/graphics/Typeface;->mTypefaceExt:Landroid/graphics/ITypefaceExt;

    :goto_0
    invoke-interface {v0, p1, v1, p3}, Lcom/oplus/font/IOplusFontManager;->replaceFakeBoldToMedium(Landroid/widget/TextView;Landroid/graphics/ITypefaceExt;I)V

    .line 53
    return-void
.end method
