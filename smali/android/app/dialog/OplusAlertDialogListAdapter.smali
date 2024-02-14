.class public Landroid/app/dialog/OplusAlertDialogListAdapter;
.super Landroid/widget/BaseAdapter;
.source "OplusAlertDialogListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/dialog/OplusAlertDialogListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final blacklist LAYOUT:I

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mItems:[Ljava/lang/CharSequence;

.field private blacklist mTextAppearances:[I


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;[Ljava/lang/CharSequence;[I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "items"    # [Ljava/lang/CharSequence;
    .param p3, "textAppearances"    # [I

    .line 24
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 18
    const v0, 0xc09041a

    iput v0, p0, Landroid/app/dialog/OplusAlertDialogListAdapter;->LAYOUT:I

    .line 25
    iput-object p1, p0, Landroid/app/dialog/OplusAlertDialogListAdapter;->mContext:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Landroid/app/dialog/OplusAlertDialogListAdapter;->mItems:[Ljava/lang/CharSequence;

    .line 27
    iput-object p3, p0, Landroid/app/dialog/OplusAlertDialogListAdapter;->mTextAppearances:[I

    .line 28
    return-void
.end method

.method private blacklist getViewInternal(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 54
    if-nez p2, :cond_0

    .line 55
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0xc09041a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 56
    const v0, 0x1020014

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 57
    .local v0, "itemView":Landroid/widget/TextView;
    new-instance v1, Landroid/app/dialog/OplusAlertDialogListAdapter$ViewHolder;

    invoke-direct {v1, p0}, Landroid/app/dialog/OplusAlertDialogListAdapter$ViewHolder;-><init>(Landroid/app/dialog/OplusAlertDialogListAdapter;)V

    .line 58
    .local v1, "viewHolder":Landroid/app/dialog/OplusAlertDialogListAdapter$ViewHolder;
    iput-object v0, v1, Landroid/app/dialog/OplusAlertDialogListAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    .line 59
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 60
    .end local v0    # "itemView":Landroid/widget/TextView;
    goto :goto_0

    .line 61
    .end local v1    # "viewHolder":Landroid/app/dialog/OplusAlertDialogListAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/dialog/OplusAlertDialogListAdapter$ViewHolder;

    .line 63
    .restart local v1    # "viewHolder":Landroid/app/dialog/OplusAlertDialogListAdapter$ViewHolder;
    :goto_0
    iget-object v0, v1, Landroid/app/dialog/OplusAlertDialogListAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/app/dialog/OplusAlertDialogListAdapter;->getItem(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogListAdapter;->mTextAppearances:[I

    if-eqz v0, :cond_2

    .line 65
    aget v0, v0, p1

    .line 66
    .local v0, "textAppearance":I
    if-lez v0, :cond_1

    .line 67
    iget-object v2, v1, Landroid/app/dialog/OplusAlertDialogListAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/app/dialog/OplusAlertDialogListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_1

    .line 69
    :cond_1
    iget-object v2, v1, Landroid/app/dialog/OplusAlertDialogListAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/app/dialog/OplusAlertDialogListAdapter;->mContext:Landroid/content/Context;

    const v4, 0xc030028

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 72
    .end local v0    # "textAppearance":I
    :cond_2
    :goto_1
    return-object p2
.end method

.method private blacklist resetPadding(ILandroid/view/View;)V
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;

    .line 76
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc050024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 77
    .local v0, "paddingOffset":I
    iget-object v1, p0, Landroid/app/dialog/OplusAlertDialogListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc0500d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 78
    .local v1, "paddingTop":I
    iget-object v3, p0, Landroid/app/dialog/OplusAlertDialogListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0xc050088

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 79
    .local v3, "paddingLeft":I
    iget-object v4, p0, Landroid/app/dialog/OplusAlertDialogListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 80
    .local v2, "paddingBottom":I
    iget-object v4, p0, Landroid/app/dialog/OplusAlertDialogListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0xc050089

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 81
    .local v4, "paddingRight":I
    iget-object v5, p0, Landroid/app/dialog/OplusAlertDialogListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0xc050029

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 82
    .local v5, "minHeight":I
    invoke-virtual {p0}, Landroid/app/dialog/OplusAlertDialogListAdapter;->getCount()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_1

    .line 83
    invoke-virtual {p0}, Landroid/app/dialog/OplusAlertDialogListAdapter;->getCount()I

    move-result v6

    sub-int/2addr v6, v7

    if-ne p1, v6, :cond_0

    .line 84
    add-int v6, v2, v0

    invoke-virtual {p2, v3, v1, v4, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 85
    add-int v6, v5, v0

    invoke-virtual {p2, v6}, Landroid/view/View;->setMinimumHeight(I)V

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {p2, v3, v1, v4, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 88
    invoke-virtual {p2, v5}, Landroid/view/View;->setMinimumHeight(I)V

    .line 91
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist getCount()I
    .locals 1

    .line 32
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogListAdapter;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    return v0
.end method

.method public whitelist getItem(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .line 37
    iget-object v0, p0, Landroid/app/dialog/OplusAlertDialogListAdapter;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    aget-object v0, v0, p1

    :goto_0
    return-object v0
.end method

.method public bridge synthetic whitelist getItem(I)Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Landroid/app/dialog/OplusAlertDialogListAdapter;->getItem(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 42
    int-to-long v0, p1

    return-wide v0
.end method

.method public whitelist getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/app/dialog/OplusAlertDialogListAdapter;->getViewInternal(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/app/dialog/OplusAlertDialogListAdapter;->resetPadding(ILandroid/view/View;)V

    .line 49
    return-object p2
.end method
