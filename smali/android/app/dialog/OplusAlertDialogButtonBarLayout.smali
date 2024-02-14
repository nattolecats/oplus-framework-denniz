.class public Landroid/app/dialog/OplusAlertDialogButtonBarLayout;
.super Landroid/widget/LinearLayout;
.source "OplusAlertDialogButtonBarLayout.java"


# instance fields
.field private blacklist mButDivider1:Landroid/view/View;

.field private blacklist mButDivider2:Landroid/view/View;

.field private blacklist mButDividerSize:I

.field private blacklist mContentPanel:Landroid/view/View;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mCustomPanel:Landroid/view/View;

.field private blacklist mForceVertical:Z

.field private blacklist mHorButDividerVerMargin:I

.field private blacklist mHorButHorPadding:I

.field private blacklist mHorButPanelMinHeight:I

.field private blacklist mNegButton:Landroid/widget/Button;

.field private blacklist mNeuButton:Landroid/widget/Button;

.field private blacklist mParentView:Landroid/view/View;

.field private blacklist mPosButton:Landroid/widget/Button;

.field private blacklist mTopPanel:Landroid/view/View;

.field private blacklist mVerButDividerHorMargin:I

.field private blacklist mVerButDividerVerMargin:I

.field private blacklist mVerButHorPadding:I

.field private blacklist mVerButMinHeight:I

.field private blacklist mVerButPaddingOffset:I

.field private blacklist mVerButVerPadding:I

.field private blacklist mVerNegButVerPaddingOffset:I

.field private blacklist mVerPaddingBottom:I


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 89
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    invoke-direct {p0, p1, p2}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    return-void
.end method

.method private blacklist getBtnTextMeasureLength(Landroid/widget/Button;)I
    .locals 2
    .param p1, "btn"    # Landroid/widget/Button;

    .line 178
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 179
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/widget/Button;->isAllCaps()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p1}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    return v0

    .line 182
    :cond_0
    invoke-virtual {p1}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    return v0

    .line 184
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist getButtonCount()I
    .locals 2

    .line 494
    const/4 v0, 0x0

    .line 495
    .local v0, "count":I
    iget-object v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mPosButton:Landroid/widget/Button;

    invoke-direct {p0, v1}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 496
    add-int/lit8 v0, v0, 0x1

    .line 498
    :cond_0
    iget-object v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mNegButton:Landroid/widget/Button;

    invoke-direct {p0, v1}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 499
    add-int/lit8 v0, v0, 0x1

    .line 501
    :cond_1
    iget-object v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mNeuButton:Landroid/widget/Button;

    invoke-direct {p0, v1}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 502
    add-int/lit8 v0, v0, 0x1

    .line 504
    :cond_2
    return v0
.end method

.method private blacklist hasContent(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 512
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 513
    return v0

    .line 515
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private blacklist init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 94
    iput-object p1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mContext:Landroid/content/Context;

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc0500d1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mHorButHorPadding:I

    .line 96
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc0500d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButHorPadding:I

    .line 97
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc050019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mButDividerSize:I

    .line 98
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc05001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButMinHeight:I

    .line 99
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc050024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButPaddingOffset:I

    .line 100
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc0500d3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButVerPadding:I

    .line 101
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc0500d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButDividerHorMargin:I

    .line 102
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc0500d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButDividerVerMargin:I

    .line 103
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc0500d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mHorButDividerVerMargin:I

    .line 104
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc0500d7    # 1.02462E-31f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mHorButPanelMinHeight:I

    .line 105
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/oplus/internal/R$styleable;->OplusAlertDialogButtonBarLayout:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 106
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mForceVertical:Z

    .line 107
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerNegButVerPaddingOffset:I

    .line 108
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 109
    return-void
.end method

.method private blacklist initView()V
    .locals 2

    .line 146
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mPosButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mNegButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mNeuButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mButDivider1:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mButDivider2:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mTopPanel:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mContentPanel:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mCustomPanel:Landroid/view/View;

    if-nez v0, :cond_1

    .line 149
    :cond_0
    const v0, 0x1020019

    invoke-virtual {p0, v0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mPosButton:Landroid/widget/Button;

    .line 150
    const v0, 0x102001a

    invoke-virtual {p0, v0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mNegButton:Landroid/widget/Button;

    .line 151
    const v0, 0x102001b

    invoke-virtual {p0, v0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mNeuButton:Landroid/widget/Button;

    .line 152
    const v0, 0xc0200a0

    invoke-virtual {p0, v0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mButDivider1:Landroid/view/View;

    .line 153
    const v0, 0xc0200a1

    invoke-virtual {p0, v0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mButDivider2:Landroid/view/View;

    .line 154
    invoke-virtual {p0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mParentView:Landroid/view/View;

    .line 155
    const v1, 0x1020544

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mTopPanel:Landroid/view/View;

    .line 156
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mParentView:Landroid/view/View;

    const v1, 0x1020263

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mContentPanel:Landroid/view/View;

    .line 157
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mParentView:Landroid/view/View;

    const v1, 0x1020287

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mCustomPanel:Landroid/view/View;

    .line 159
    :cond_1
    return-void
.end method

.method private blacklist isVertical()Z
    .locals 2

    .line 508
    invoke-virtual {p0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private blacklist needSetButVertical(I)Z
    .locals 6
    .param p1, "parentWidth"    # I

    .line 162
    invoke-direct {p0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->getButtonCount()I

    move-result v0

    .line 163
    .local v0, "buttonCount":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 164
    return v1

    .line 167
    :cond_0
    add-int/lit8 v2, v0, -0x1

    iget v3, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mButDividerSize:I

    mul-int/2addr v2, v3

    sub-int v2, p1, v2

    div-int/2addr v2, v0

    iget v3, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mHorButHorPadding:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    .line 168
    .local v2, "buttonWidth":I
    iget-object v3, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mPosButton:Landroid/widget/Button;

    invoke-direct {p0, v3}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->getBtnTextMeasureLength(Landroid/widget/Button;)I

    move-result v3

    .line 169
    .local v3, "posButWidth":I
    iget-object v4, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mNegButton:Landroid/widget/Button;

    invoke-direct {p0, v4}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->getBtnTextMeasureLength(Landroid/widget/Button;)I

    move-result v4

    .line 170
    .local v4, "negButWidth":I
    iget-object v5, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mNeuButton:Landroid/widget/Button;

    invoke-direct {p0, v5}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->getBtnTextMeasureLength(Landroid/widget/Button;)I

    move-result v5

    .line 172
    .local v5, "neuButWidth":I
    if-gt v3, v2, :cond_1

    if-gt v4, v2, :cond_1

    if-le v5, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private blacklist resetHorDividerVisibility()V
    .locals 4

    .line 468
    invoke-direct {p0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->getButtonCount()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 469
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mPosButton:Landroid/widget/Button;

    invoke-direct {p0, v0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mButDivider1:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 471
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mButDivider2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 473
    :cond_0
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mButDivider1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 474
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mButDivider2:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 476
    :cond_1
    invoke-direct {p0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->getButtonCount()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    .line 477
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mButDivider1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 478
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mButDivider2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 480
    :cond_2
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mButDivider1:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 481
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mButDivider2:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 483
    :goto_0
    return-void
.end method

.method private blacklist resetHorPaddingBottom()V
    .locals 4

    .line 490
    invoke-virtual {p0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->getPaddingRight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->setPadding(IIII)V

    .line 491
    return-void
.end method

.method private blacklist resetVerButsBackground()V
    .locals 3

    .line 421
    iget-boolean v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mForceVertical:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mTopPanel:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mContentPanel:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mCustomPanel:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 422
    invoke-direct {p0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->getButtonCount()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0xc08003c

    if-ne v0, v1, :cond_2

    .line 423
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mPosButton:Landroid/widget/Button;

    invoke-direct {p0, v0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mPosButton:Landroid/widget/Button;

    goto :goto_0

    .line 424
    :cond_0
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mNeuButton:Landroid/widget/Button;

    invoke-direct {p0, v0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mNeuButton:Landroid/widget/Button;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mNegButton:Landroid/widget/Button;

    :goto_0
    nop

    .line 425
    .local v0, "target":Landroid/widget/Button;
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 426
    .end local v0    # "target":Landroid/widget/Button;
    goto :goto_2

    :cond_2
    invoke-direct {p0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->getButtonCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 427
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mPosButton:Landroid/widget/Button;

    invoke-direct {p0, v0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mPosButton:Landroid/widget/Button;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mNeuButton:Landroid/widget/Button;

    .line 428
    .restart local v0    # "target":Landroid/widget/Button;
    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .end local v0    # "target":Landroid/widget/Button;
    goto :goto_2

    .line 429
    :cond_4
    invoke-direct {p0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->getButtonCount()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 430
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mPosButton:Landroid/widget/Button;

    .line 431
    .restart local v0    # "target":Landroid/widget/Button;
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    nop

    .line 434
    .end local v0    # "target":Landroid/widget/Button;
    :cond_5
    :goto_2
    return-void
.end method

.method private blacklist resetVerButsPadding()V
    .locals 5

    .line 319
    iget-boolean v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mForceVertical:Z

    if-eqz v0, :cond_11

    .line 320
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mNegButton:Landroid/widget/Button;

    invoke-direct {p0, v0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 321
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mPosButton:Landroid/widget/Button;

    invoke-direct {p0, v0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mNeuButton:Landroid/widget/Button;

    invoke-direct {p0, v0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mTopPanel:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mContentPanel:Landroid/view/View;

    .line 322
    invoke-direct {p0, v0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mCustomPanel:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 330
    :cond_0
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mNegButton:Landroid/widget/Button;

    iget v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButHorPadding:I

    iget v2, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButVerPadding:I

    iget v3, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButPaddingOffset:I

    add-int/2addr v3, v2

    invoke-virtual {v0, v1, v3, v1, v2}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    .line 331
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mNegButton:Landroid/widget/Button;

    iget v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButMinHeight:I

    iget v2, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButPaddingOffset:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    goto :goto_1

    .line 323
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mNegButton:Landroid/widget/Button;

    iget v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButHorPadding:I

    iget v2, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButVerPadding:I

    iget v3, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerNegButVerPaddingOffset:I

    add-int v4, v2, v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v4, v1, v2}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    .line 328
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mNegButton:Landroid/widget/Button;

    iget v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButMinHeight:I

    iget v2, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerNegButVerPaddingOffset:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    .line 335
    :cond_2
    :goto_1
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mNeuButton:Landroid/widget/Button;

    invoke-direct {p0, v0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 336
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mNegButton:Landroid/widget/Button;

    invoke-direct {p0, v0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 337
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mPosButton:Landroid/widget/Button;

    invoke-direct {p0, v0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mTopPanel:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mContentPanel:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mCustomPanel:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    .line 341
    :cond_3
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mNeuButton:Landroid/widget/Button;

    iget v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButHorPadding:I

    iget v2, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButVerPadding:I

    iget v3, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButPaddingOffset:I

    add-int v4, v2, v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v4, v1, v2}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    .line 342
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mNeuButton:Landroid/widget/Button;

    iget v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButMinHeight:I

    iget v2, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButPaddingOffset:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    goto :goto_4

    .line 338
    :cond_4
    :goto_2
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mNeuButton:Landroid/widget/Button;

    iget v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButHorPadding:I

    iget v2, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButVerPadding:I

    iget v3, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButPaddingOffset:I

    add-int/2addr v3, v2

    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    .line 339
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mNeuButton:Landroid/widget/Button;

    iget v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButMinHeight:I

    iget v2, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButPaddingOffset:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    goto :goto_4

    .line 344
    :cond_5
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mPosButton:Landroid/widget/Button;

    invoke-direct {p0, v0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mTopPanel:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mContentPanel:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mCustomPanel:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    .line 348
    :cond_6
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mNeuButton:Landroid/widget/Button;

    iget v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButHorPadding:I

    iget v2, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButVerPadding:I

    iget v3, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButPaddingOffset:I

    add-int/2addr v3, v2

    invoke-virtual {v0, v1, v3, v1, v2}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    .line 349
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mNeuButton:Landroid/widget/Button;

    iget v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButMinHeight:I

    iget v2, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButPaddingOffset:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    goto :goto_4

    .line 345
    :cond_7
    :goto_3
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mNeuButton:Landroid/widget/Button;

    iget v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButHorPadding:I

    iget v2, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButVerPadding:I

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    .line 346
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mNeuButton:Landroid/widget/Button;

    iget v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButMinHeight:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    .line 353
    :cond_8
    :goto_4
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mPosButton:Landroid/widget/Button;

    invoke-direct {p0, v0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 354
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mTopPanel:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mContentPanel:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mCustomPanel:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto/16 :goto_5

    .line 373
    :cond_9
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mNegButton:Landroid/widget/Button;

    invoke-direct {p0, v0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 374
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mNeuButton:Landroid/widget/Button;

    invoke-direct {p0, v0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 375
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mPosButton:Landroid/widget/Button;

    iget v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButHorPadding:I

    iget v2, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButVerPadding:I

    iget v3, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButPaddingOffset:I

    add-int/2addr v3, v2

    invoke-virtual {v0, v1, v3, v1, v2}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    .line 376
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mPosButton:Landroid/widget/Button;

    iget v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButMinHeight:I

    iget v2, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButPaddingOffset:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    goto/16 :goto_9

    .line 378
    :cond_a
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mPosButton:Landroid/widget/Button;

    iget v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButHorPadding:I

    iget v2, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButVerPadding:I

    iget v3, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButPaddingOffset:I

    add-int v4, v2, v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v4, v1, v2}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    .line 379
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mPosButton:Landroid/widget/Button;

    iget v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButMinHeight:I

    iget v2, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButPaddingOffset:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    goto/16 :goto_9

    .line 382
    :cond_b
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mNeuButton:Landroid/widget/Button;

    invoke-direct {p0, v0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 383
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mPosButton:Landroid/widget/Button;

    iget v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButHorPadding:I

    iget v2, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButVerPadding:I

    iget v3, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButPaddingOffset:I

    add-int v4, v2, v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v4, v1, v2}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    .line 384
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mPosButton:Landroid/widget/Button;

    iget v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButMinHeight:I

    iget v2, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButPaddingOffset:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    goto/16 :goto_9

    .line 386
    :cond_c
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mPosButton:Landroid/widget/Button;

    iget v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButHorPadding:I

    iget v2, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButVerPadding:I

    iget v3, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButPaddingOffset:I

    add-int/2addr v3, v2

    invoke-virtual {v0, v1, v3, v1, v2}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    .line 387
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mPosButton:Landroid/widget/Button;

    iget v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButMinHeight:I

    iget v2, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButPaddingOffset:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    goto/16 :goto_9

    .line 355
    :cond_d
    :goto_5
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mNegButton:Landroid/widget/Button;

    invoke-direct {p0, v0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 356
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mNeuButton:Landroid/widget/Button;

    invoke-direct {p0, v0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 357
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mPosButton:Landroid/widget/Button;

    iget v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButHorPadding:I

    iget v2, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButVerPadding:I

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    .line 358
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mPosButton:Landroid/widget/Button;

    iget v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButMinHeight:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    goto/16 :goto_9

    .line 360
    :cond_e
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mPosButton:Landroid/widget/Button;

    iget v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButHorPadding:I

    iget v2, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButVerPadding:I

    iget v3, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButPaddingOffset:I

    add-int/2addr v3, v2

    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    .line 361
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mPosButton:Landroid/widget/Button;

    iget v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButMinHeight:I

    iget v2, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButPaddingOffset:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    goto/16 :goto_9

    .line 364
    :cond_f
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mNeuButton:Landroid/widget/Button;

    invoke-direct {p0, v0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 365
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mPosButton:Landroid/widget/Button;

    iget v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButHorPadding:I

    iget v2, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButVerPadding:I

    iget v3, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButPaddingOffset:I

    add-int/2addr v3, v2

    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    .line 366
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mPosButton:Landroid/widget/Button;

    iget v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButMinHeight:I

    iget v2, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButPaddingOffset:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    goto/16 :goto_9

    .line 368
    :cond_10
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mPosButton:Landroid/widget/Button;

    iget v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButHorPadding:I

    iget v2, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButVerPadding:I

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    .line 369
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mPosButton:Landroid/widget/Button;

    iget v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButMinHeight:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    goto/16 :goto_9

    .line 393
    :cond_11
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mPosButton:Landroid/widget/Button;

    invoke-direct {p0, v0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 394
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mNeuButton:Landroid/widget/Button;

    invoke-direct {p0, v0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mNegButton:Landroid/widget/Button;

    invoke-direct {p0, v0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_6

    .line 398
    :cond_12
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mPosButton:Landroid/widget/Button;

    iget v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButHorPadding:I

    iget v2, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButVerPadding:I

    iget v3, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButPaddingOffset:I

    add-int/2addr v3, v2

    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    .line 399
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mPosButton:Landroid/widget/Button;

    iget v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButMinHeight:I

    iget v2, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButPaddingOffset:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    goto :goto_7

    .line 395
    :cond_13
    :goto_6
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mPosButton:Landroid/widget/Button;

    iget v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButHorPadding:I

    iget v2, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButVerPadding:I

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    .line 396
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mPosButton:Landroid/widget/Button;

    iget v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButMinHeight:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    .line 403
    :cond_14
    :goto_7
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mNeuButton:Landroid/widget/Button;

    invoke-direct {p0, v0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 404
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mNegButton:Landroid/widget/Button;

    invoke-direct {p0, v0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 405
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mNeuButton:Landroid/widget/Button;

    iget v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButHorPadding:I

    iget v2, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButVerPadding:I

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    .line 406
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mNeuButton:Landroid/widget/Button;

    iget v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButMinHeight:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    goto :goto_8

    .line 408
    :cond_15
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mNeuButton:Landroid/widget/Button;

    iget v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButHorPadding:I

    iget v2, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButVerPadding:I

    iget v3, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButPaddingOffset:I

    add-int/2addr v3, v2

    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    .line 409
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mNeuButton:Landroid/widget/Button;

    iget v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButMinHeight:I

    iget v2, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButPaddingOffset:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    .line 413
    :cond_16
    :goto_8
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mNegButton:Landroid/widget/Button;

    invoke-direct {p0, v0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 414
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mNegButton:Landroid/widget/Button;

    iget v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButHorPadding:I

    iget v2, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButVerPadding:I

    iget v3, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButPaddingOffset:I

    add-int/2addr v3, v2

    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    .line 415
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mNegButton:Landroid/widget/Button;

    iget v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButMinHeight:I

    iget v2, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButPaddingOffset:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    .line 418
    :cond_17
    :goto_9
    return-void
.end method

.method private blacklist resetVerDividerVisibility()V
    .locals 3

    .line 437
    iget-boolean v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mForceVertical:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_4

    .line 438
    invoke-direct {p0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->getButtonCount()I

    move-result v0

    if-eqz v0, :cond_3

    .line 439
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mNegButton:Landroid/widget/Button;

    invoke-direct {p0, v0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 440
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mNeuButton:Landroid/widget/Button;

    invoke-direct {p0, v0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mPosButton:Landroid/widget/Button;

    invoke-direct {p0, v0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mTopPanel:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mContentPanel:Landroid/view/View;

    .line 441
    invoke-direct {p0, v0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mCustomPanel:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->hasContent(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 445
    :cond_0
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mButDivider1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 446
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mButDivider2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 442
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mButDivider1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 443
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mButDivider2:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 449
    :cond_2
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mButDivider1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 450
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mButDivider2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 453
    :cond_3
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mButDivider1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 454
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mButDivider2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 457
    :cond_4
    invoke-direct {p0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->getButtonCount()I

    move-result v0

    if-eqz v0, :cond_5

    .line 458
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mButDivider1:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 459
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mButDivider2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 461
    :cond_5
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mButDivider1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 462
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mButDivider2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 465
    :goto_1
    return-void
.end method

.method private blacklist resetVerPaddingBottom()V
    .locals 4

    .line 486
    invoke-virtual {p0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->getPaddingRight()I

    move-result v2

    iget v3, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerPaddingBottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->setPadding(IIII)V

    .line 487
    return-void
.end method

.method private blacklist setButtonsHorizontal()V
    .locals 1

    .line 253
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->setOrientation(I)V

    .line 254
    iget v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mHorButPanelMinHeight:I

    invoke-virtual {p0, v0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->setMinimumHeight(I)V

    .line 255
    invoke-direct {p0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->setHorButDivider1()V

    .line 256
    invoke-direct {p0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->setNeuButHorizontal()V

    .line 257
    invoke-direct {p0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->setHorButDivider2()V

    .line 258
    invoke-direct {p0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->setPosButHorizontal()V

    .line 259
    invoke-direct {p0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->setNegButHorizontal()V

    .line 260
    return-void
.end method

.method private blacklist setButtonsVertical()V
    .locals 1

    .line 188
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->setOrientation(I)V

    .line 189
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->setMinimumHeight(I)V

    .line 190
    invoke-direct {p0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->setNeuButVertical()V

    .line 191
    invoke-direct {p0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->setVerButDivider2()V

    .line 192
    invoke-direct {p0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->setNegButVertical()V

    .line 193
    invoke-direct {p0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->setVerButDivider1()V

    .line 194
    invoke-direct {p0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->setPosButVertical()V

    .line 195
    return-void
.end method

.method private blacklist setHorButDivider1()V
    .locals 2

    .line 295
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mButDivider1:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 296
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mButDividerSize:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 297
    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 298
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 299
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 300
    iget v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mHorButDividerVerMargin:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 301
    iget v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mHorButDividerVerMargin:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 302
    iget-object v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mButDivider1:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 303
    iget-object v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mButDivider1:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->bringChildToFront(Landroid/view/View;)V

    .line 304
    return-void
.end method

.method private blacklist setHorButDivider2()V
    .locals 2

    .line 307
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mButDivider2:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 308
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mButDividerSize:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 309
    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 310
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 311
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 312
    iget v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mHorButDividerVerMargin:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 313
    iget v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mHorButDividerVerMargin:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 314
    iget-object v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mButDivider2:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    iget-object v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mButDivider2:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->bringChildToFront(Landroid/view/View;)V

    .line 316
    return-void
.end method

.method private blacklist setNegButHorizontal()V
    .locals 4

    .line 274
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mNegButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 275
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 276
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 277
    const/4 v2, -0x1

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 278
    iget-object v2, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mNegButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    iget-object v2, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mNegButton:Landroid/widget/Button;

    iget v3, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mHorButHorPadding:I

    invoke-virtual {v2, v3, v1, v3, v1}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    .line 280
    iget-object v2, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mNegButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setMinHeight(I)V

    .line 281
    return-void
.end method

.method private blacklist setNegButVertical()V
    .locals 5

    .line 208
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mNegButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 209
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 210
    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 211
    const/4 v1, -0x2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 212
    iget-object v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mNegButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    iget-object v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mNegButton:Landroid/widget/Button;

    iget v2, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButHorPadding:I

    iget v3, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButVerPadding:I

    iget v4, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButPaddingOffset:I

    add-int/2addr v4, v3

    invoke-virtual {v1, v2, v3, v2, v4}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    .line 214
    iget-object v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mNegButton:Landroid/widget/Button;

    iget v2, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButMinHeight:I

    iget v3, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButPaddingOffset:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setMinHeight(I)V

    .line 215
    iget-object v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mNegButton:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->bringChildToFront(Landroid/view/View;)V

    .line 216
    return-void
.end method

.method private blacklist setNeuButHorizontal()V
    .locals 4

    .line 284
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mNeuButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 285
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 286
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 287
    const/4 v2, -0x1

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 288
    iget-object v2, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mNeuButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 289
    iget-object v2, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mNeuButton:Landroid/widget/Button;

    iget v3, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mHorButHorPadding:I

    invoke-virtual {v2, v3, v1, v3, v1}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    .line 290
    iget-object v2, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mNeuButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setMinHeight(I)V

    .line 291
    iget-object v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mNeuButton:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->bringChildToFront(Landroid/view/View;)V

    .line 292
    return-void
.end method

.method private blacklist setNeuButVertical()V
    .locals 4

    .line 219
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mNeuButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 220
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 221
    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 222
    const/4 v1, -0x2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 223
    iget-object v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mNeuButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    iget-object v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mNeuButton:Landroid/widget/Button;

    iget v2, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButHorPadding:I

    iget v3, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButVerPadding:I

    invoke-virtual {v1, v2, v3, v2, v3}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    .line 225
    iget-object v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mNeuButton:Landroid/widget/Button;

    iget v2, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButMinHeight:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setMinHeight(I)V

    .line 226
    iget-object v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mNeuButton:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->bringChildToFront(Landroid/view/View;)V

    .line 227
    return-void
.end method

.method private blacklist setPosButHorizontal()V
    .locals 4

    .line 263
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mPosButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 264
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 265
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 266
    const/4 v2, -0x1

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 267
    iget-object v2, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mPosButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 268
    iget-object v2, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mPosButton:Landroid/widget/Button;

    iget v3, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mHorButHorPadding:I

    invoke-virtual {v2, v3, v1, v3, v1}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    .line 269
    iget-object v2, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mPosButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setMinHeight(I)V

    .line 270
    iget-object v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mPosButton:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->bringChildToFront(Landroid/view/View;)V

    .line 271
    return-void
.end method

.method private blacklist setPosButVertical()V
    .locals 5

    .line 198
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mPosButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 199
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 200
    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 201
    const/4 v1, -0x2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 202
    iget-object v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mPosButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    iget-object v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mPosButton:Landroid/widget/Button;

    iget v2, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButHorPadding:I

    iget v3, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButVerPadding:I

    iget v4, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButPaddingOffset:I

    add-int/2addr v4, v3

    invoke-virtual {v1, v2, v4, v2, v3}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    .line 204
    iget-object v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mPosButton:Landroid/widget/Button;

    iget v2, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButMinHeight:I

    iget v3, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButPaddingOffset:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setMinHeight(I)V

    .line 205
    return-void
.end method

.method private blacklist setVerButDivider1()V
    .locals 2

    .line 230
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mButDivider1:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 231
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 232
    iget v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mButDividerSize:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 233
    iget v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButDividerHorMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 234
    iget v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButDividerHorMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 235
    iget v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButDividerVerMargin:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 236
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 237
    iget-object v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mButDivider1:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    return-void
.end method

.method private blacklist setVerButDivider2()V
    .locals 2

    .line 241
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mButDivider2:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 242
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 243
    iget v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mButDividerSize:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 244
    iget v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButDividerHorMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 245
    iget v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButDividerHorMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 246
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 247
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 248
    iget-object v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mButDivider2:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    iget-object v1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mButDivider2:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->bringChildToFront(Landroid/view/View;)V

    .line 250
    return-void
.end method


# virtual methods
.method protected whitelist onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 122
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 124
    invoke-direct {p0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->initView()V

    .line 126
    iget-boolean v0, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mForceVertical:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->getMeasuredWidth()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->needSetButVertical(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    invoke-direct {p0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    invoke-direct {p0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->setButtonsHorizontal()V

    .line 139
    :cond_1
    invoke-direct {p0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->resetHorDividerVisibility()V

    .line 140
    invoke-direct {p0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->resetHorPaddingBottom()V

    .line 141
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_1

    .line 127
    :cond_2
    :goto_0
    invoke-direct {p0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->isVertical()Z

    move-result v0

    if-nez v0, :cond_3

    .line 128
    invoke-direct {p0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->setButtonsVertical()V

    .line 130
    :cond_3
    invoke-direct {p0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->resetVerButsPadding()V

    .line 131
    invoke-direct {p0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->resetVerButsBackground()V

    .line 132
    invoke-direct {p0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->resetVerDividerVisibility()V

    .line 133
    invoke-direct {p0}, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->resetVerPaddingBottom()V

    .line 134
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 143
    :goto_1
    return-void
.end method

.method public blacklist setForceVertical(Z)V
    .locals 0
    .param p1, "forceVertical"    # Z

    .line 117
    iput-boolean p1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mForceVertical:Z

    .line 118
    return-void
.end method

.method public blacklist setVerButDividerVerMargin(I)V
    .locals 0
    .param p1, "verButDividerVerMargin"    # I

    .line 519
    iput p1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButDividerVerMargin:I

    .line 520
    return-void
.end method

.method public blacklist setVerButPaddingOffset(I)V
    .locals 0
    .param p1, "verButPaddingOffset"    # I

    .line 535
    iput p1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButPaddingOffset:I

    .line 536
    return-void
.end method

.method public blacklist setVerButVerPadding(I)V
    .locals 0
    .param p1, "verButVerPadding"    # I

    .line 523
    iput p1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerButVerPadding:I

    .line 524
    return-void
.end method

.method public blacklist setVerNegButVerPaddingOffset(I)V
    .locals 0
    .param p1, "verNegButVerPaddingOffset"    # I

    .line 527
    iput p1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerNegButVerPaddingOffset:I

    .line 528
    return-void
.end method

.method public blacklist setVerPaddingBottom(I)V
    .locals 0
    .param p1, "verPaddingBottom"    # I

    .line 531
    iput p1, p0, Landroid/app/dialog/OplusAlertDialogButtonBarLayout;->mVerPaddingBottom:I

    .line 532
    return-void
.end method
