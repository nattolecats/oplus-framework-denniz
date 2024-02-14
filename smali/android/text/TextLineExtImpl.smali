.class public Landroid/text/TextLineExtImpl;
.super Ljava/lang/Object;
.source "TextLineExtImpl.java"

# interfaces
.implements Landroid/text/ITextLineExt;


# instance fields
.field private blacklist mTextLine:Landroid/text/TextLine;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "base"    # Ljava/lang/Object;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    move-object v0, p1

    check-cast v0, Landroid/text/TextLine;

    iput-object v0, p0, Landroid/text/TextLineExtImpl;->mTextLine:Landroid/text/TextLine;

    .line 11
    return-void
.end method


# virtual methods
.method public whitelist hookjustify(FIIIZ[CLjava/lang/CharSequence;I)Z
    .locals 15
    .param p1, "justifyWidth"    # F
    .param p2, "spaces"    # I
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "charsValid"    # Z
    .param p6, "chars"    # [C
    .param p7, "text"    # Ljava/lang/CharSequence;
    .param p8, "mstart"    # I

    .line 17
    move-object v0, p0

    iget-object v1, v0, Landroid/text/TextLineExtImpl;->mTextLine:Landroid/text/TextLine;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v14, p4

    invoke-virtual {v1, v14, v2, v3}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 18
    .local v1, "width":F
    sget-object v3, Landroid/text/ITextJustificationHooks;->DEFAULT:Landroid/text/ITextJustificationHooks;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v2}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/text/ITextJustificationHooks;

    const/4 v8, 0x0

    move/from16 v5, p1

    move v6, v1

    move/from16 v7, p2

    move/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move/from16 v13, p8

    invoke-interface/range {v4 .. v13}, Landroid/text/ITextJustificationHooks;->calculateAddedWidth(FFIIIZ[CLjava/lang/CharSequence;I)F

    move-result v2

    .line 19
    .local v2, "addedWidth":F
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    const/4 v4, 0x1

    if-lez v3, :cond_0

    .line 20
    iget-object v3, v0, Landroid/text/TextLineExtImpl;->mTextLine:Landroid/text/TextLine;

    invoke-virtual {v3}, Landroid/text/TextLine;->getWrapper()Landroid/text/ITextLineWrapper;

    move-result-object v3

    .line 21
    .local v3, "wrapper":Landroid/text/ITextLineWrapper;
    invoke-interface {v3, v2}, Landroid/text/ITextLineWrapper;->setAddedWidthForJustify(F)V

    .line 22
    invoke-interface {v3, v4}, Landroid/text/ITextLineWrapper;->setIsJustifying(Z)V

    .line 25
    .end local v3    # "wrapper":Landroid/text/ITextLineWrapper;
    :cond_0
    return v4
.end method
