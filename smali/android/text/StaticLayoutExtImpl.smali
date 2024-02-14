.class public Landroid/text/StaticLayoutExtImpl;
.super Ljava/lang/Object;
.source "StaticLayoutExtImpl.java"

# interfaces
.implements Landroid/text/IStaticLayoutExt;


# instance fields
.field private blacklist mBase:Landroid/text/StaticLayout;

.field public blacklist mBuilderJustificationHooksImpl:Landroid/text/ITextJustificationHooks;

.field blacklist mTextJustificationHooksImpl:Landroid/text/ITextJustificationHooks;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 3
    .param p1, "base"    # Ljava/lang/Object;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Landroid/common/OplusFrameworkFactory;->getInstance()Landroid/common/OplusFrameworkFactory;

    move-result-object v0

    sget-object v1, Landroid/text/ITextJustificationHooks;->DEFAULT:Landroid/text/ITextJustificationHooks;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/common/OplusFrameworkFactory;->getFeature(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Landroid/text/ITextJustificationHooks;

    iput-object v0, p0, Landroid/text/StaticLayoutExtImpl;->mBuilderJustificationHooksImpl:Landroid/text/ITextJustificationHooks;

    .line 28
    move-object v0, p1

    check-cast v0, Landroid/text/StaticLayout;

    iput-object v0, p0, Landroid/text/StaticLayoutExtImpl;->mBase:Landroid/text/StaticLayout;

    .line 29
    return-void
.end method


# virtual methods
.method public blacklist getBuilderJustificationHooks()Landroid/text/ITextJustificationHooks;
    .locals 1

    .line 38
    iget-object v0, p0, Landroid/text/StaticLayoutExtImpl;->mBuilderJustificationHooksImpl:Landroid/text/ITextJustificationHooks;

    return-object v0
.end method

.method public blacklist getLayoutParaSpacingAdded(Landroid/text/StaticLayout;Ljava/lang/Object;ZLjava/lang/CharSequence;I)F
    .locals 6
    .param p1, "layout"    # Landroid/text/StaticLayout;
    .param p2, "builder"    # Ljava/lang/Object;
    .param p3, "moreChars"    # Z
    .param p4, "source"    # Ljava/lang/CharSequence;
    .param p5, "endPos"    # I

    .line 48
    iget-object v0, p0, Landroid/text/StaticLayoutExtImpl;->mTextJustificationHooksImpl:Landroid/text/ITextJustificationHooks;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/text/ITextJustificationHooks;->getLayoutParaSpacingAdded(Landroid/text/StaticLayout;Ljava/lang/Object;ZLjava/lang/CharSequence;I)F

    move-result v0

    return v0
.end method

.method public blacklist lineNeedMultiply(ZZZLandroid/text/StaticLayout;)Z
    .locals 1
    .param p1, "needMultiply"    # Z
    .param p2, "addLastLineLineSpacing"    # Z
    .param p3, "lastLine"    # Z
    .param p4, "layout"    # Landroid/text/StaticLayout;

    .line 56
    iget-object v0, p0, Landroid/text/StaticLayoutExtImpl;->mTextJustificationHooksImpl:Landroid/text/ITextJustificationHooks;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/ITextJustificationHooks;->lineNeedMultiply(ZZZLandroid/text/StaticLayout;)Z

    move-result v0

    return v0
.end method

.method public blacklist lineShouldIncludeFontPad(ZLandroid/text/StaticLayout;)Z
    .locals 1
    .param p1, "firstLine"    # Z
    .param p2, "layout"    # Landroid/text/StaticLayout;

    .line 52
    iget-object v0, p0, Landroid/text/StaticLayoutExtImpl;->mTextJustificationHooksImpl:Landroid/text/ITextJustificationHooks;

    invoke-interface {v0, p1, p2}, Landroid/text/ITextJustificationHooks;->lineShouldIncludeFontPad(ZLandroid/text/StaticLayout;)Z

    move-result v0

    return v0
.end method

.method public blacklist setBuilderToTextJustificationHooks()V
    .locals 1

    .line 34
    iget-object v0, p0, Landroid/text/StaticLayoutExtImpl;->mBuilderJustificationHooksImpl:Landroid/text/ITextJustificationHooks;

    iput-object v0, p0, Landroid/text/StaticLayoutExtImpl;->mTextJustificationHooksImpl:Landroid/text/ITextJustificationHooks;

    .line 35
    return-void
.end method

.method public blacklist setLayoutParaSpacingAdded(Ljava/lang/Object;F)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "paraSpacing"    # F

    .line 61
    iget-object v0, p0, Landroid/text/StaticLayoutExtImpl;->mBuilderJustificationHooksImpl:Landroid/text/ITextJustificationHooks;

    invoke-interface {v0, p1, p2}, Landroid/text/ITextJustificationHooks;->setLayoutParaSpacingAdded(Ljava/lang/Object;F)V

    .line 62
    return-void
.end method

.method public blacklist setTextJustificationHooks()V
    .locals 3

    .line 42
    iget-object v0, p0, Landroid/text/StaticLayoutExtImpl;->mTextJustificationHooksImpl:Landroid/text/ITextJustificationHooks;

    if-nez v0, :cond_0

    .line 43
    invoke-static {}, Landroid/common/OplusFrameworkFactory;->getInstance()Landroid/common/OplusFrameworkFactory;

    move-result-object v0

    sget-object v1, Landroid/text/ITextJustificationHooks;->DEFAULT:Landroid/text/ITextJustificationHooks;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/common/OplusFrameworkFactory;->getFeature(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Landroid/text/ITextJustificationHooks;

    iput-object v0, p0, Landroid/text/StaticLayoutExtImpl;->mTextJustificationHooksImpl:Landroid/text/ITextJustificationHooks;

    .line 45
    :cond_0
    return-void
.end method
