.class public Landroid/text/TextJustificationHooksImpl;
.super Ljava/lang/Object;
.source "TextJustificationHooksImpl.java"

# interfaces
.implements Landroid/text/ITextJustificationHooks;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "TextJustificationHooksImpl"


# instance fields
.field public whitelist mBuilderParaSpacingAdded:F

.field public whitelist mLayoutSpecifiedParaSpacing:Z

.field public whitelist mTextViewParaSpacing:F


# direct methods
.method public constructor whitelist <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/TextJustificationHooksImpl;->mTextViewParaSpacing:F

    .line 135
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/text/TextJustificationHooksImpl;->mLayoutSpecifiedParaSpacing:Z

    .line 136
    iput v0, p0, Landroid/text/TextJustificationHooksImpl;->mBuilderParaSpacingAdded:F

    return-void
.end method

.method private blacklist countStretchableHan(IIZ[CLjava/lang/CharSequence;I)I
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "charsValid"    # Z
    .param p4, "chars"    # [C
    .param p5, "text"    # Ljava/lang/CharSequence;
    .param p6, "mstart"    # I

    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, "count":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_2

    .line 120
    if-eqz p3, :cond_0

    aget-char v2, p4, v1

    goto :goto_1

    :cond_0
    add-int v2, v1, p6

    invoke-interface {p5, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 121
    .local v2, "c":C
    :goto_1
    invoke-direct {p0, v2}, Landroid/text/TextJustificationHooksImpl;->isStretchableHan(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 122
    add-int/lit8 v0, v0, 0x1

    .line 119
    .end local v2    # "c":C
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method private blacklist isStretchableHan(I)Z
    .locals 1
    .param p1, "ch"    # I

    .line 129
    const/16 v0, 0x4e00

    if-lt p1, v0, :cond_0

    const v0, 0x9fa5

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 130
    .local v0, "result":Z
    :goto_0
    return v0
.end method

.method private blacklist px2sp(Landroid/content/Context;F)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pxValue"    # F

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 101
    .local v0, "fontScale":F
    div-float v1, p2, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method


# virtual methods
.method public whitelist calculateAddedWidth(FFIIIZ[CLjava/lang/CharSequence;I)F
    .locals 7
    .param p1, "justifyWidth"    # F
    .param p2, "width"    # F
    .param p3, "spaces"    # I
    .param p4, "start"    # I
    .param p5, "end"    # I
    .param p6, "charsValid"    # Z
    .param p7, "chars"    # [C
    .param p8, "text"    # Ljava/lang/CharSequence;
    .param p9, "mstart"    # I

    .line 108
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p5

    move v3, p6

    move-object v4, p7

    move-object v5, p8

    move/from16 v6, p9

    invoke-direct/range {v0 .. v6}, Landroid/text/TextJustificationHooksImpl;->countStretchableHan(IIZ[CLjava/lang/CharSequence;I)I

    move-result v0

    .line 109
    .local v0, "hans":I
    if-eqz v0, :cond_0

    .line 110
    sub-float v1, p1, p2

    add-int v2, v0, p3

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 111
    .local v1, "addedWidth":F
    return v1

    .line 113
    .end local v1    # "addedWidth":F
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getLayoutParaSpacingAdded(Landroid/text/StaticLayout;Ljava/lang/Object;ZLjava/lang/CharSequence;I)F
    .locals 4
    .param p1, "layout"    # Landroid/text/StaticLayout;
    .param p2, "builder"    # Ljava/lang/Object;
    .param p3, "moreChars"    # Z
    .param p4, "source"    # Ljava/lang/CharSequence;
    .param p5, "endPos"    # I

    .line 141
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 142
    .local v0, "hashCode":I
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/text/TextJustificationHooksImpl;->mLayoutSpecifiedParaSpacing:Z

    .line 143
    const/4 v1, 0x0

    .line 144
    .local v1, "builderParaSpacingAdded":F
    if-eqz p3, :cond_0

    add-int/lit8 v2, p5, -0x1

    invoke-interface {p4, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 145
    iget v1, p0, Landroid/text/TextJustificationHooksImpl;->mBuilderParaSpacingAdded:F

    .line 146
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 147
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/text/TextJustificationHooksImpl;->mLayoutSpecifiedParaSpacing:Z

    .line 150
    :cond_0
    return v1
.end method

.method public whitelist getTextViewDefaultLineMulti(Ljava/lang/Object;FF)F
    .locals 4
    .param p1, "view"    # Ljava/lang/Object;
    .param p2, "pxSize"    # F
    .param p3, "oriValue"    # F

    .line 58
    if-eqz p1, :cond_2

    instance-of v0, p1, Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_1

    .line 61
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    .line 63
    .local v0, "textview":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 64
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Lcom/oplus/util/OplusContextUtil;->isOplusOSStyle(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 65
    return p3

    .line 67
    :cond_1
    invoke-direct {p0, v1, p2}, Landroid/text/TextJustificationHooksImpl;->px2sp(Landroid/content/Context;F)I

    move-result v2

    .line 68
    .local v2, "spSize":I
    move v3, p3

    .line 69
    .local v3, "lineMulti":F
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 92
    :pswitch_1
    const v3, 0x3f8ccccd    # 1.1f

    goto :goto_0

    .line 89
    :pswitch_2
    const v3, 0x3f8ccccd    # 1.1f

    .line 90
    goto :goto_0

    .line 86
    :pswitch_3
    const v3, 0x3f8ccccd    # 1.1f

    .line 87
    goto :goto_0

    .line 83
    :pswitch_4
    const v3, 0x3f8ccccd    # 1.1f

    .line 84
    goto :goto_0

    .line 80
    :pswitch_5
    const v3, 0x3f8ccccd    # 1.1f

    .line 81
    goto :goto_0

    .line 77
    :pswitch_6
    const v3, 0x3f99999a    # 1.2f

    .line 78
    goto :goto_0

    .line 74
    :pswitch_7
    const v3, 0x3f933333    # 1.15f

    .line 75
    goto :goto_0

    .line 71
    :pswitch_8
    const v3, 0x3fa66666    # 1.3f

    .line 72
    nop

    .line 96
    :goto_0
    return v3

    .line 59
    .end local v0    # "textview":Landroid/widget/TextView;
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "spSize":I
    .end local v3    # "lineMulti":F
    :cond_2
    :goto_1
    return p3

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public whitelist getTextViewParaSpacing(Ljava/lang/Object;)F
    .locals 1
    .param p1, "view"    # Ljava/lang/Object;

    .line 53
    iget v0, p0, Landroid/text/TextJustificationHooksImpl;->mTextViewParaSpacing:F

    return v0
.end method

.method public whitelist lineNeedMultiply(ZZZLandroid/text/StaticLayout;)Z
    .locals 1
    .param p1, "needMultiply"    # Z
    .param p2, "addLastLineLineSpacing"    # Z
    .param p3, "lastLine"    # Z
    .param p4, "layout"    # Landroid/text/StaticLayout;

    .line 165
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    iget-boolean v0, p0, Landroid/text/TextJustificationHooksImpl;->mLayoutSpecifiedParaSpacing:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist lineShouldIncludeFontPad(ZLandroid/text/StaticLayout;)Z
    .locals 1
    .param p1, "firstLine"    # Z
    .param p2, "layout"    # Landroid/text/StaticLayout;

    .line 160
    if-nez p1, :cond_1

    iget-boolean v0, p0, Landroid/text/TextJustificationHooksImpl;->mLayoutSpecifiedParaSpacing:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public whitelist setLayoutParaSpacingAdded(Ljava/lang/Object;F)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "paraSpacing"    # F

    .line 155
    iput p2, p0, Landroid/text/TextJustificationHooksImpl;->mBuilderParaSpacingAdded:F

    .line 156
    return-void
.end method

.method public whitelist setTextViewParaSpacing(Ljava/lang/Object;FLandroid/text/Layout;)V
    .locals 4
    .param p1, "view"    # Ljava/lang/Object;
    .param p2, "paraSpacing"    # F
    .param p3, "layout"    # Landroid/text/Layout;

    .line 34
    if-eqz p1, :cond_2

    instance-of v0, p1, Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    .line 38
    .local v0, "textview":Landroid/widget/TextView;
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 39
    .local v1, "hashCode":I
    iget v2, p0, Landroid/text/TextJustificationHooksImpl;->mTextViewParaSpacing:F

    .line 41
    .local v2, "oldParaSpacing":F
    cmpl-float v3, p2, v2

    if-eqz v3, :cond_1

    .line 42
    iput p2, p0, Landroid/text/TextJustificationHooksImpl;->mTextViewParaSpacing:F

    .line 43
    if-eqz p3, :cond_1

    .line 44
    invoke-virtual {v0}, Landroid/widget/TextView;->nullLayouts()V

    .line 45
    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    .line 46
    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 49
    :cond_1
    return-void

    .line 35
    .end local v0    # "textview":Landroid/widget/TextView;
    .end local v1    # "hashCode":I
    .end local v2    # "oldParaSpacing":F
    :cond_2
    :goto_0
    return-void
.end method
