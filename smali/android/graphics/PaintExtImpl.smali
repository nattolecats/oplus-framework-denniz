.class public Landroid/graphics/PaintExtImpl;
.super Ljava/lang/Object;
.source "PaintExtImpl.java"

# interfaces
.implements Landroid/graphics/IPaintExt;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "PaintExtImpl"

.field private static blacklist sPreStatus:Z


# instance fields
.field private blacklist mBurmeseZgHooks:Landroid/view/IOplusBurmeseZgHooks;

.field private blacklist mFontManager:Lcom/oplus/font/IOplusFontManager;

.field private blacklist mPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 25
    const/4 v0, 0x0

    sput-boolean v0, Landroid/graphics/PaintExtImpl;->sPreStatus:Z

    .line 37
    const-string v0, "oplusextzawgyi"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 4
    .param p1, "base"    # Ljava/lang/Object;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Landroid/common/OplusFrameworkFactory;->getInstance()Landroid/common/OplusFrameworkFactory;

    move-result-object v0

    sget-object v1, Landroid/view/IOplusBurmeseZgHooks;->DEFAULT:Landroid/view/IOplusBurmeseZgHooks;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Landroid/common/OplusFrameworkFactory;->getFeature(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Landroid/view/IOplusBurmeseZgHooks;

    iput-object v0, p0, Landroid/graphics/PaintExtImpl;->mBurmeseZgHooks:Landroid/view/IOplusBurmeseZgHooks;

    .line 30
    sget-object v0, Lcom/oplus/font/IOplusFontManager;->DEFAULT:Lcom/oplus/font/IOplusFontManager;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/oplus/font/IOplusFontManager;

    iput-object v0, p0, Landroid/graphics/PaintExtImpl;->mFontManager:Lcom/oplus/font/IOplusFontManager;

    .line 33
    move-object v0, p1

    check-cast v0, Landroid/graphics/Paint;

    iput-object v0, p0, Landroid/graphics/PaintExtImpl;->mPaint:Landroid/graphics/Paint;

    .line 34
    return-void
.end method

.method private static native blacklist nSetForceZgFont(JZ)V
.end method

.method private blacklist replaceTypeface(Landroid/graphics/Typeface;Landroid/graphics/Paint;J)V
    .locals 4
    .param p1, "typeface"    # Landroid/graphics/Typeface;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "paintPtr"    # J

    .line 69
    invoke-virtual {p0, p1}, Landroid/graphics/PaintExtImpl;->flipTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 70
    .local v0, "tf":Landroid/graphics/Typeface;
    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p2}, Landroid/graphics/Paint;->getWrapper()Landroid/graphics/IPaintWrapper;

    move-result-object v1

    .line 73
    .local v1, "wrapper":Landroid/graphics/IPaintWrapper;
    if-eqz v1, :cond_0

    .line 74
    iget-wide v2, v0, Landroid/graphics/Typeface;->native_instance:J

    invoke-interface {v1, p3, p4, v2, v3}, Landroid/graphics/IPaintWrapper;->getSetTypeface(JJ)V

    .line 76
    invoke-interface {v1, v0}, Landroid/graphics/IPaintWrapper;->setTypeface(Landroid/graphics/Typeface;)V

    .line 79
    .end local v1    # "wrapper":Landroid/graphics/IPaintWrapper;
    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist flipTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 3
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .line 47
    iget-object v0, p0, Landroid/graphics/PaintExtImpl;->mFontManager:Lcom/oplus/font/IOplusFontManager;

    if-nez p1, :cond_0

    sget-object v1, Landroid/graphics/ITypefaceExt;->DEFAULT:Landroid/graphics/ITypefaceExt;

    goto :goto_0

    :cond_0
    iget-object v1, p1, Landroid/graphics/Typeface;->mTypefaceExt:Landroid/graphics/ITypefaceExt;

    :goto_0
    iget-object v2, p0, Landroid/graphics/PaintExtImpl;->mPaint:Landroid/graphics/Paint;

    invoke-interface {v0, v1, v2}, Lcom/oplus/font/IOplusFontManager;->flipTypeface(Landroid/graphics/ITypefaceExt;Landroid/graphics/Paint;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getZgFlag()Z
    .locals 1

    .line 42
    iget-object v0, p0, Landroid/graphics/PaintExtImpl;->mBurmeseZgHooks:Landroid/view/IOplusBurmeseZgHooks;

    invoke-interface {v0}, Landroid/view/IOplusBurmeseZgHooks;->getZgFlag()Z

    move-result v0

    return v0
.end method

.method public blacklist injectedByOemOS(Landroid/graphics/Typeface;JLandroid/graphics/Paint;)V
    .locals 0
    .param p1, "typeface"    # Landroid/graphics/Typeface;
    .param p2, "paintPtr"    # J
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 52
    invoke-direct {p0, p1, p4, p2, p3}, Landroid/graphics/PaintExtImpl;->replaceTypeface(Landroid/graphics/Typeface;Landroid/graphics/Paint;J)V

    .line 53
    invoke-virtual {p0, p2, p3}, Landroid/graphics/PaintExtImpl;->setForceZgFont(J)V

    .line 54
    return-void
.end method

.method public blacklist setForceZgFont(J)V
    .locals 2
    .param p1, "paintPtr"    # J

    .line 58
    invoke-virtual {p0}, Landroid/graphics/PaintExtImpl;->getZgFlag()Z

    move-result v0

    .line 59
    .local v0, "flag":Z
    sget-boolean v1, Landroid/graphics/PaintExtImpl;->sPreStatus:Z

    if-eq v1, v0, :cond_0

    .line 60
    sput-boolean v0, Landroid/graphics/PaintExtImpl;->sPreStatus:Z

    .line 61
    invoke-static {p1, p2, v0}, Landroid/graphics/PaintExtImpl;->nSetForceZgFont(JZ)V

    .line 63
    :cond_0
    return-void
.end method
