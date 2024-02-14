.class public Lcom/android/internal/app/OpResolverManager;
.super Ljava/lang/Object;
.source "OpResolverManager.java"

# interfaces
.implements Lcom/android/internal/app/IOplusResolverManager;


# static fields
.field private static final blacklist CHOOSER_TITLE_TEXT_SIZE:I = 0x12

.field private static final blacklist RESOLVER_TITLE_TEXT_SIZE:I = 0xc

.field private static final blacklist TAG:Ljava/lang/String; = "OpResolverManager"


# instance fields
.field private blacklist mResolverActivity:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist initChooserDrag(Landroid/widget/ImageView;)V
    .locals 4
    .param p1, "ivDrag"    # Landroid/widget/ImageView;

    .line 135
    invoke-virtual {p1}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 136
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 137
    .local v0, "dragParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/internal/app/OpResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc0500a4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 138
    iget-object v1, p0, Lcom/android/internal/app/OpResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc0500a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/app/OpResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    .line 139
    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0xc0500a6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 138
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 140
    invoke-direct {p0, p1}, Lcom/android/internal/app/OpResolverManager;->setDragColor(Landroid/widget/ImageView;)V

    .line 141
    return-void
.end method

.method private blacklist initChooserTitle(Landroid/widget/TextView;)V
    .locals 6
    .param p1, "tvTitle"    # Landroid/widget/TextView;

    .line 118
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 119
    .local v0, "tvParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 120
    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 121
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 122
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 123
    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 124
    iget-object v1, p0, Lcom/android/internal/app/OpResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0xc0500a7

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v3, p0, Lcom/android/internal/app/OpResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    .line 125
    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0xc0500a8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/app/OpResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    .line 127
    invoke-virtual {v4}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0xc0500a9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 124
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 128
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 129
    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 130
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    invoke-direct {p0, p1}, Lcom/android/internal/app/OpResolverManager;->setTitleColor(Landroid/widget/TextView;)V

    .line 132
    return-void
.end method

.method private blacklist initResolverTitle(Landroid/widget/TextView;)V
    .locals 5
    .param p1, "tvTitle"    # Landroid/widget/TextView;

    .line 102
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 103
    .local v0, "tvParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, -0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 104
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 105
    const v1, 0x1030044

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 106
    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 107
    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 108
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 109
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 110
    iget-object v1, p0, Lcom/android/internal/app/OpResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0xc0500a0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v3, p0, Lcom/android/internal/app/OpResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    .line 111
    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0xc0500a1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 110
    invoke-virtual {p1, v2, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 112
    iget-object v1, p0, Lcom/android/internal/app/OpResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0xc0500a2

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v3, p0, Lcom/android/internal/app/OpResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    .line 113
    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0xc0500a3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 112
    invoke-virtual {v0, v1, v2, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 114
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    return-void
.end method

.method private blacklist setDragColor(Landroid/widget/ImageView;)V
    .locals 3
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .line 156
    iget-object v0, p0, Lcom/android/internal/app/OpResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/OplusBaseConfiguration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/OplusBaseConfiguration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    .line 157
    .local v0, "currentNightMode":I
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 163
    :sswitch_0
    iget-object v1, p0, Lcom/android/internal/app/OpResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc060048

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 159
    :sswitch_1
    iget-object v1, p0, Lcom/android/internal/app/OpResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc060047

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 161
    nop

    .line 167
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private blacklist setTitleColor(Landroid/widget/TextView;)V
    .locals 3
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 144
    iget-object v0, p0, Lcom/android/internal/app/OpResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/OplusBaseConfiguration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/OplusBaseConfiguration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    .line 145
    .local v0, "currentNightMode":I
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 150
    :sswitch_0
    iget-object v1, p0, Lcom/android/internal/app/OpResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc060044

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 147
    :sswitch_1
    iget-object v1, p0, Lcom/android/internal/app/OpResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc060043

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 148
    nop

    .line 153
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public whitelist createTypeNormalView(Landroid/view/View;I)Landroid/view/View;
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "targetWidth"    # I

    .line 199
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 200
    .local v0, "spec":I
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 202
    .local v1, "exactSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 203
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 204
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v2, :cond_0

    .line 205
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v2, v3

    .line 206
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 208
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 209
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 211
    :goto_0
    return-object p1
.end method

.method public whitelist getChooserActionRowId()I
    .locals 1

    .line 98
    const v0, 0x1020246

    return v0
.end method

.method public whitelist getDisplayTextContentPreview(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 2
    .param p1, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .line 93
    const v0, 0xc09042d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public whitelist isOpShareUi()Z
    .locals 2

    .line 62
    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v0

    const-string v1, "oplus.software.op_share_sheet"

    invoke-virtual {v0, v1}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist isOriginUi()Z
    .locals 1

    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist onCreate(Lcom/android/internal/app/IResolverActivityExt;)V
    .locals 1
    .param p1, "resolverActivityExt"    # Lcom/android/internal/app/IResolverActivityExt;

    .line 56
    invoke-interface {p1}, Lcom/android/internal/app/IResolverActivityExt;->getResolverActivity()Lcom/android/internal/app/ResolverActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/OpResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    .line 57
    return-void
.end method

.method public whitelist setActionButtonTextColor(Landroid/widget/Button;)V
    .locals 3
    .param p1, "button"    # Landroid/widget/Button;

    .line 171
    iget-object v0, p0, Lcom/android/internal/app/OpResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/OplusBaseConfiguration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/OplusBaseConfiguration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    .line 172
    .local v0, "currentNightMode":I
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 178
    :sswitch_0
    iget-object v1, p0, Lcom/android/internal/app/OpResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc06004a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    .line 174
    :sswitch_1
    iget-object v1, p0, Lcom/android/internal/app/OpResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc060049

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 176
    nop

    .line 182
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist setChooserHeadBackground(Landroid/view/View;)V
    .locals 5
    .param p1, "elevatedView"    # Landroid/view/View;

    .line 186
    iget-object v0, p0, Lcom/android/internal/app/OpResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc0500aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 187
    .local v0, "radius":F
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    .line 188
    .local v1, "background":Landroid/graphics/drawable/GradientDrawable;
    const/16 v2, 0x8

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v3, 0x1

    aput v0, v2, v3

    const/4 v3, 0x2

    aput v0, v2, v3

    const/4 v3, 0x3

    aput v0, v2, v3

    const/4 v3, 0x4

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v3, 0x5

    aput v4, v2, v3

    const/4 v3, 0x6

    aput v4, v2, v3

    const/4 v3, 0x7

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 194
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 195
    return-void
.end method

.method public whitelist setOriginContentView(I)V
    .locals 5
    .param p1, "layoutId"    # I

    .line 67
    const v0, 0x1020016

    const v1, 0x10900fe

    if-ne p1, v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/android/internal/app/OpResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    const v2, 0x1020538

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 70
    iget-object v1, p0, Lcom/android/internal/app/OpResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v1, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 71
    .local v0, "tvTitle":Landroid/widget/TextView;
    invoke-direct {p0, v0}, Lcom/android/internal/app/OpResolverManager;->initResolverTitle(Landroid/widget/TextView;)V

    .line 73
    iget-object v1, p0, Lcom/android/internal/app/OpResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    const v2, 0x10202a8

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .end local v0    # "tvTitle":Landroid/widget/TextView;
    goto :goto_1

    .line 74
    :cond_0
    const v1, 0x109005d

    if-ne p1, v1, :cond_3

    .line 75
    iget-object v1, p0, Lcom/android/internal/app/OpResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    const v2, 0x1020249

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 77
    .local v1, "chooserHeader":Landroid/widget/RelativeLayout;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 78
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 80
    .local v3, "child":Landroid/view/View;
    instance-of v4, v3, Landroid/widget/ImageView;

    if-eqz v4, :cond_1

    .line 81
    move-object v4, v3

    check-cast v4, Landroid/widget/ImageView;

    .line 82
    .local v4, "ivDrag":Landroid/widget/ImageView;
    invoke-direct {p0, v4}, Lcom/android/internal/app/OpResolverManager;->initChooserDrag(Landroid/widget/ImageView;)V

    .line 77
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "ivDrag":Landroid/widget/ImageView;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/android/internal/app/OpResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v2, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 87
    .restart local v0    # "tvTitle":Landroid/widget/TextView;
    invoke-direct {p0, v0}, Lcom/android/internal/app/OpResolverManager;->initChooserTitle(Landroid/widget/TextView;)V

    goto :goto_2

    .line 74
    .end local v0    # "tvTitle":Landroid/widget/TextView;
    .end local v1    # "chooserHeader":Landroid/widget/RelativeLayout;
    :cond_3
    :goto_1
    nop

    .line 89
    :goto_2
    return-void
.end method
