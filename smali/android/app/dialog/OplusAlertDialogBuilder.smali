.class public Landroid/app/dialog/OplusAlertDialogBuilder;
.super Landroid/app/AlertDialog$Builder;
.source "OplusAlertDialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/dialog/OplusAlertDialogBuilder$InsetTouchListener;
    }
.end annotation


# static fields
.field private static final blacklist DEF_STYLE_ATTR:I = 0x101005d

.field private static final blacklist DEF_WINDOW_GRAVITY:I = 0x11

.field private static final blacklist TAG:Ljava/lang/String; = "OplusAlertDialogBuilder"


# instance fields
.field private blacklist hasAdapter:Z

.field private blacklist hasMessage:Z

.field private blacklist hasSetView:Z

.field private blacklist hasTitle:Z

.field private blacklist mCustomContentLayoutRes:I

.field private blacklist mGravity:I

.field private blacklist mItemClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private blacklist mItems:[Ljava/lang/CharSequence;

.field private blacklist mSummaryItems:[Ljava/lang/CharSequence;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 42
    invoke-direct {p0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/dialog/OplusAlertDialogBuilder;->hasTitle:Z

    .line 37
    iput-boolean v0, p0, Landroid/app/dialog/OplusAlertDialogBuilder;->hasMessage:Z

    .line 38
    iput-boolean v0, p0, Landroid/app/dialog/OplusAlertDialogBuilder;->hasAdapter:Z

    .line 39
    iput-boolean v0, p0, Landroid/app/dialog/OplusAlertDialogBuilder;->hasSetView:Z

    .line 43
    invoke-direct {p0}, Landroid/app/dialog/OplusAlertDialogBuilder;->initAttrs()V

    .line 44
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "i"    # I

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/dialog/OplusAlertDialogBuilder;->hasTitle:Z

    .line 37
    iput-boolean v0, p0, Landroid/app/dialog/OplusAlertDialogBuilder;->hasMessage:Z

    .line 38
    iput-boolean v0, p0, Landroid/app/dialog/OplusAlertDialogBuilder;->hasAdapter:Z

    .line 39
    iput-boolean v0, p0, Landroid/app/dialog/OplusAlertDialogBuilder;->hasSetView:Z

    .line 48
    invoke-direct {p0}, Landroid/app/dialog/OplusAlertDialogBuilder;->initAttrs()V

    .line 49
    return-void
.end method

.method public static whitelist createBottomBuilder(Landroid/content/Context;)Landroid/app/dialog/OplusAlertDialogBuilder;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 56
    new-instance v0, Landroid/app/dialog/OplusAlertDialogBuilder;

    const v1, 0xc03002a

    invoke-direct {v0, p0, v1}, Landroid/app/dialog/OplusAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static whitelist createCenterBuilder(Landroid/content/Context;)Landroid/app/dialog/OplusAlertDialogBuilder;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 52
    new-instance v0, Landroid/app/dialog/OplusAlertDialogBuilder;

    const v1, 0xc030029

    invoke-direct {v0, p0, v1}, Landroid/app/dialog/OplusAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method private blacklist initAttrs()V
    .locals 5

    .line 60
    invoke-virtual {p0}, Landroid/app/dialog/OplusAlertDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/oplus/internal/R$styleable;->OplusAlertDialogBuilder:[I

    const/4 v2, 0x0

    const v3, 0x101005d

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 61
    .local v0, "attributes":Landroid/content/res/TypedArray;
    const/16 v1, 0x11

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/app/dialog/OplusAlertDialogBuilder;->mGravity:I

    .line 62
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/app/dialog/OplusAlertDialogBuilder;->mCustomContentLayoutRes:I

    .line 63
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    return-void
.end method

.method private blacklist initCustomPanel()V
    .locals 1

    .line 76
    iget-boolean v0, p0, Landroid/app/dialog/OplusAlertDialogBuilder;->hasSetView:Z

    if-nez v0, :cond_1

    iget v0, p0, Landroid/app/dialog/OplusAlertDialogBuilder;->mCustomContentLayoutRes:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/dialog/OplusAlertDialogBuilder;->setView(I)Landroid/app/dialog/OplusAlertDialogBuilder;

    .line 80
    return-void

    .line 77
    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist initCustomPanelVisibility(Landroid/app/AlertDialog;)V
    .locals 4
    .param p1, "dialog"    # Landroid/app/AlertDialog;

    .line 117
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 118
    .local v0, "window":Landroid/view/Window;
    if-nez v0, :cond_0

    .line 119
    return-void

    .line 121
    :cond_0
    iget-boolean v1, p0, Landroid/app/dialog/OplusAlertDialogBuilder;->hasSetView:Z

    if-eqz v1, :cond_2

    .line 122
    const v1, 0x1020287

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 123
    .local v1, "customPanel":Landroid/view/ViewGroup;
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 124
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 126
    :cond_1
    const v3, 0x102002b

    invoke-virtual {v0, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 127
    .local v3, "custom":Landroid/view/ViewGroup;
    if-eqz v3, :cond_2

    .line 128
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 131
    .end local v1    # "customPanel":Landroid/view/ViewGroup;
    .end local v3    # "custom":Landroid/view/ViewGroup;
    :cond_2
    return-void
.end method

.method private blacklist initListPanel(Landroid/app/AlertDialog;)V
    .locals 9
    .param p1, "dialog"    # Landroid/app/AlertDialog;

    .line 134
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 135
    .local v0, "window":Landroid/view/Window;
    if-nez v0, :cond_0

    .line 136
    return-void

    .line 138
    :cond_0
    const v1, 0xc020046

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 139
    .local v1, "listPanel":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 140
    .local v2, "listView":Landroid/view/View;
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    move v5, v3

    goto :goto_0

    :cond_1
    move v5, v4

    .line 141
    .local v5, "hasListView":Z
    :goto_0
    if-eqz v5, :cond_2

    .line 142
    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 144
    :cond_2
    iget-boolean v6, p0, Landroid/app/dialog/OplusAlertDialogBuilder;->hasMessage:Z

    if-eqz v6, :cond_3

    if-eqz v5, :cond_3

    move v6, v3

    goto :goto_1

    :cond_3
    move v6, v4

    .line 145
    .local v6, "isNeedToAddListView":Z
    :goto_1
    if-eqz v6, :cond_4

    .line 146
    invoke-virtual {p0}, Landroid/app/dialog/OplusAlertDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0xc0500d8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    .line 147
    .local v7, "marginTop":I
    invoke-virtual {v1, v4, v7, v4, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 148
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v8, -0x1

    invoke-direct {v4, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    .end local v7    # "marginTop":I
    :cond_4
    iget v4, p0, Landroid/app/dialog/OplusAlertDialogBuilder;->mGravity:I

    const/16 v7, 0x50

    if-ne v4, v7, :cond_5

    .line 151
    const v4, 0x102048c

    invoke-virtual {v0, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 152
    .local v4, "scrollView":Landroid/view/ViewGroup;
    if-eqz v6, :cond_5

    if-eqz v4, :cond_5

    .line 153
    invoke-direct {p0, v4, v3}, Landroid/app/dialog/OplusAlertDialogBuilder;->setViewHorizontalWeight(Landroid/view/View;I)V

    .line 154
    invoke-direct {p0, v1, v3}, Landroid/app/dialog/OplusAlertDialogBuilder;->setViewHorizontalWeight(Landroid/view/View;I)V

    .line 157
    .end local v4    # "scrollView":Landroid/view/ViewGroup;
    :cond_5
    return-void
.end method

.method private blacklist initWindow(Landroid/app/AlertDialog;)V
    .locals 3
    .param p1, "dialog"    # Landroid/app/AlertDialog;

    .line 93
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 94
    .local v0, "window":Landroid/view/Window;
    if-nez v0, :cond_0

    .line 95
    return-void

    .line 97
    :cond_0
    iget v1, p0, Landroid/app/dialog/OplusAlertDialogBuilder;->mGravity:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 98
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/app/dialog/OplusAlertDialogBuilder$InsetTouchListener;

    invoke-direct {v2, p0, p1}, Landroid/app/dialog/OplusAlertDialogBuilder$InsetTouchListener;-><init>(Landroid/app/dialog/OplusAlertDialogBuilder;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 99
    invoke-direct {p0, v0}, Landroid/app/dialog/OplusAlertDialogBuilder;->makeWindowMatchParent(Landroid/view/Window;)V

    .line 100
    return-void
.end method

.method private blacklist makeWindowMatchParent(Landroid/view/Window;)V
    .locals 2
    .param p1, "window"    # Landroid/view/Window;

    .line 103
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 104
    .local v0, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 105
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 106
    return-void
.end method

.method private blacklist setViewHorizontalWeight(Landroid/view/View;I)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "weight"    # I

    .line 160
    if-nez p1, :cond_0

    .line 161
    return-void

    .line 163
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 164
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-nez v1, :cond_1

    .line 165
    return-void

    .line 167
    :cond_1
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 168
    move-object v1, v0

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v2, p2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 169
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    return-void
.end method


# virtual methods
.method public whitelist create()Landroid/app/AlertDialog;
    .locals 1

    .line 68
    invoke-direct {p0}, Landroid/app/dialog/OplusAlertDialogBuilder;->initCustomPanel()V

    .line 69
    invoke-virtual {p0}, Landroid/app/dialog/OplusAlertDialogBuilder;->initAdapter()V

    .line 70
    invoke-super {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 71
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-direct {p0, v0}, Landroid/app/dialog/OplusAlertDialogBuilder;->initWindow(Landroid/app/AlertDialog;)V

    .line 72
    return-object v0
.end method

.method protected whitelist initAdapter()V
    .locals 8

    .line 83
    iget-boolean v0, p0, Landroid/app/dialog/OplusAlertDialogBuilder;->hasAdapter:Z

    if-eqz v0, :cond_0

    .line 84
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogBuilder;->mItems:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 87
    .local v0, "hasItem":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 88
    new-instance v7, Landroid/app/dialog/OplusAlertDialogItemAdapter;

    invoke-virtual {p0}, Landroid/app/dialog/OplusAlertDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v3, p0, Landroid/app/dialog/OplusAlertDialogBuilder;->hasTitle:Z

    iget-boolean v4, p0, Landroid/app/dialog/OplusAlertDialogBuilder;->hasMessage:Z

    iget-object v5, p0, Landroid/app/dialog/OplusAlertDialogBuilder;->mItems:[Ljava/lang/CharSequence;

    iget-object v6, p0, Landroid/app/dialog/OplusAlertDialogBuilder;->mSummaryItems:[Ljava/lang/CharSequence;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/app/dialog/OplusAlertDialogItemAdapter;-><init>(Landroid/content/Context;ZZ[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/app/dialog/OplusAlertDialogBuilder;->mItemClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v7, v1}, Landroid/app/dialog/OplusAlertDialogBuilder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/dialog/OplusAlertDialogBuilder;

    .line 90
    :cond_2
    return-void
.end method

.method public bridge synthetic whitelist setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2}, Landroid/app/dialog/OplusAlertDialogBuilder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/dialog/OplusAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/dialog/OplusAlertDialogBuilder;
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 287
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/app/dialog/OplusAlertDialogBuilder;->hasAdapter:Z

    .line 288
    iput-object p2, p0, Landroid/app/dialog/OplusAlertDialogBuilder;->mItemClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 289
    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 290
    return-object p0
.end method

.method public bridge synthetic whitelist setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2}, Landroid/app/dialog/OplusAlertDialogBuilder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/dialog/OplusAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2}, Landroid/app/dialog/OplusAlertDialogBuilder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/dialog/OplusAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/dialog/OplusAlertDialogBuilder;
    .locals 1
    .param p1, "itemsId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 261
    invoke-virtual {p0}, Landroid/app/dialog/OplusAlertDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/dialog/OplusAlertDialogBuilder;->mItems:[Ljava/lang/CharSequence;

    .line 262
    iput-object p2, p0, Landroid/app/dialog/OplusAlertDialogBuilder;->mItemClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 263
    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 264
    return-object p0
.end method

.method public whitelist setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/dialog/OplusAlertDialogBuilder;
    .locals 0
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 269
    iput-object p1, p0, Landroid/app/dialog/OplusAlertDialogBuilder;->mItems:[Ljava/lang/CharSequence;

    .line 270
    iput-object p2, p0, Landroid/app/dialog/OplusAlertDialogBuilder;->mItemClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 271
    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 272
    return-object p0
.end method

.method public bridge synthetic whitelist setMessage(I)Landroid/app/AlertDialog$Builder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Landroid/app/dialog/OplusAlertDialogBuilder;->setMessage(I)Landroid/app/dialog/OplusAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Landroid/app/dialog/OplusAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/dialog/OplusAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist setMessage(I)Landroid/app/dialog/OplusAlertDialogBuilder;
    .locals 1
    .param p1, "resId"    # I

    .line 233
    invoke-virtual {p0}, Landroid/app/dialog/OplusAlertDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Landroid/app/dialog/OplusAlertDialogBuilder;->hasMessage:Z

    .line 234
    invoke-super {p0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 235
    return-object p0
.end method

.method public whitelist setMessage(Ljava/lang/CharSequence;)Landroid/app/dialog/OplusAlertDialogBuilder;
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 227
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Landroid/app/dialog/OplusAlertDialogBuilder;->hasMessage:Z

    .line 228
    invoke-super {p0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 229
    return-object p0
.end method

.method public bridge synthetic whitelist setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/dialog/OplusAlertDialogBuilder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/dialog/OplusAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/dialog/OplusAlertDialogBuilder;
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 295
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/app/dialog/OplusAlertDialogBuilder;->hasAdapter:Z

    .line 296
    iput-object p3, p0, Landroid/app/dialog/OplusAlertDialogBuilder;->mItemClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 297
    invoke-super {p0, p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 298
    return-object p0
.end method

.method public whitelist setSummaryItems(I)Landroid/app/dialog/OplusAlertDialogBuilder;
    .locals 1
    .param p1, "itemsId"    # I

    .line 276
    invoke-virtual {p0}, Landroid/app/dialog/OplusAlertDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/dialog/OplusAlertDialogBuilder;->mSummaryItems:[Ljava/lang/CharSequence;

    .line 277
    return-object p0
.end method

.method public whitelist setSummaryItems([Ljava/lang/CharSequence;)Landroid/app/dialog/OplusAlertDialogBuilder;
    .locals 0
    .param p1, "summaryItems"    # [Ljava/lang/CharSequence;

    .line 281
    iput-object p1, p0, Landroid/app/dialog/OplusAlertDialogBuilder;->mSummaryItems:[Ljava/lang/CharSequence;

    .line 282
    return-object p0
.end method

.method public bridge synthetic whitelist setTitle(I)Landroid/app/AlertDialog$Builder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Landroid/app/dialog/OplusAlertDialogBuilder;->setTitle(I)Landroid/app/dialog/OplusAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Landroid/app/dialog/OplusAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/dialog/OplusAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist setTitle(I)Landroid/app/dialog/OplusAlertDialogBuilder;
    .locals 1
    .param p1, "resId"    # I

    .line 221
    invoke-virtual {p0}, Landroid/app/dialog/OplusAlertDialogBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Landroid/app/dialog/OplusAlertDialogBuilder;->hasTitle:Z

    .line 222
    invoke-super {p0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 223
    return-object p0
.end method

.method public whitelist setTitle(Ljava/lang/CharSequence;)Landroid/app/dialog/OplusAlertDialogBuilder;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 215
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Landroid/app/dialog/OplusAlertDialogBuilder;->hasTitle:Z

    .line 216
    invoke-super {p0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 217
    return-object p0
.end method

.method public bridge synthetic whitelist setView(I)Landroid/app/AlertDialog$Builder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Landroid/app/dialog/OplusAlertDialogBuilder;->setView(I)Landroid/app/dialog/OplusAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Landroid/app/dialog/OplusAlertDialogBuilder;->setView(Landroid/view/View;)Landroid/app/dialog/OplusAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist setView(Landroid/view/View;IIII)Landroid/app/AlertDialog$Builder;
    .locals 0

    .line 26
    invoke-virtual/range {p0 .. p5}, Landroid/app/dialog/OplusAlertDialogBuilder;->setView(Landroid/view/View;IIII)Landroid/app/dialog/OplusAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist setView(I)Landroid/app/dialog/OplusAlertDialogBuilder;
    .locals 1
    .param p1, "layoutResId"    # I

    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/dialog/OplusAlertDialogBuilder;->hasSetView:Z

    .line 241
    invoke-super {p0, p1}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    .line 242
    return-object p0
.end method

.method public whitelist setView(Landroid/view/View;)Landroid/app/dialog/OplusAlertDialogBuilder;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 247
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/dialog/OplusAlertDialogBuilder;->hasSetView:Z

    .line 248
    invoke-super {p0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 249
    return-object p0
.end method

.method public whitelist setView(Landroid/view/View;IIII)Landroid/app/dialog/OplusAlertDialogBuilder;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I

    .line 254
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/dialog/OplusAlertDialogBuilder;->hasSetView:Z

    .line 255
    invoke-super/range {p0 .. p5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;IIII)Landroid/app/AlertDialog$Builder;

    .line 256
    return-object p0
.end method

.method public whitelist show()Landroid/app/AlertDialog;
    .locals 1

    .line 110
    invoke-super {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 111
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-direct {p0, v0}, Landroid/app/dialog/OplusAlertDialogBuilder;->initCustomPanelVisibility(Landroid/app/AlertDialog;)V

    .line 112
    invoke-direct {p0, v0}, Landroid/app/dialog/OplusAlertDialogBuilder;->initListPanel(Landroid/app/AlertDialog;)V

    .line 113
    return-object v0
.end method
