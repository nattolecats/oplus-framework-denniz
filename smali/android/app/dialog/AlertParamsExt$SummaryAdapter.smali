.class public Landroid/app/dialog/AlertParamsExt$SummaryAdapter;
.super Landroid/widget/BaseAdapter;
.source "AlertParamsExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/dialog/AlertParamsExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SummaryAdapter"
.end annotation


# static fields
.field private static final blacklist LAYOUT:I = 0xc090409


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mHasMessage:Z

.field private blacklist mHasTitle:Z

.field private blacklist mItems:[Ljava/lang/CharSequence;

.field private blacklist mSummaries:[Ljava/lang/CharSequence;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;ZZ[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hasTitle"    # Z
    .param p3, "hasMessage"    # Z
    .param p4, "items"    # [Ljava/lang/CharSequence;
    .param p5, "summaries"    # [Ljava/lang/CharSequence;

    .line 155
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 156
    iput-boolean p2, p0, Landroid/app/dialog/AlertParamsExt$SummaryAdapter;->mHasTitle:Z

    .line 157
    iput-boolean p3, p0, Landroid/app/dialog/AlertParamsExt$SummaryAdapter;->mHasMessage:Z

    .line 158
    iput-object p1, p0, Landroid/app/dialog/AlertParamsExt$SummaryAdapter;->mContext:Landroid/content/Context;

    .line 159
    iput-object p4, p0, Landroid/app/dialog/AlertParamsExt$SummaryAdapter;->mItems:[Ljava/lang/CharSequence;

    .line 160
    iput-object p5, p0, Landroid/app/dialog/AlertParamsExt$SummaryAdapter;->mSummaries:[Ljava/lang/CharSequence;

    .line 161
    return-void
.end method

.method private blacklist resetPadding(ILandroid/view/View;)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;

    .line 182
    iget-object v0, p0, Landroid/app/dialog/AlertParamsExt$SummaryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc050024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 183
    .local v0, "paddingOffset":I
    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    .line 184
    .local v1, "paddingTop":I
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 185
    .local v2, "paddingLeft":I
    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 186
    .local v3, "paddingBottom":I
    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    .line 187
    .local v4, "paddingRight":I
    invoke-virtual {p0}, Landroid/app/dialog/AlertParamsExt$SummaryAdapter;->getCount()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_2

    .line 188
    invoke-virtual {p0}, Landroid/app/dialog/AlertParamsExt$SummaryAdapter;->getCount()I

    move-result v5

    sub-int/2addr v5, v6

    if-ne p1, v5, :cond_0

    .line 189
    add-int v5, v3, v0

    invoke-virtual {p2, v2, v1, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 190
    invoke-virtual {p2}, Landroid/view/View;->getMinimumHeight()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {p2, v5}, Landroid/view/View;->setMinimumHeight(I)V

    goto :goto_0

    .line 191
    :cond_0
    iget-boolean v5, p0, Landroid/app/dialog/AlertParamsExt$SummaryAdapter;->mHasTitle:Z

    if-nez v5, :cond_2

    iget-boolean v5, p0, Landroid/app/dialog/AlertParamsExt$SummaryAdapter;->mHasMessage:Z

    if-nez v5, :cond_2

    .line 192
    if-nez p1, :cond_1

    .line 193
    add-int v5, v1, v0

    invoke-virtual {p2, v2, v5, v4, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 194
    invoke-virtual {p2}, Landroid/view/View;->getMinimumHeight()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {p2, v5}, Landroid/view/View;->setMinimumHeight(I)V

    goto :goto_0

    .line 196
    :cond_1
    invoke-virtual {p2, v2, v1, v4, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 200
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist getCount()I
    .locals 1

    .line 204
    iget-object v0, p0, Landroid/app/dialog/AlertParamsExt$SummaryAdapter;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    return v0
.end method

.method public blacklist getItem(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .line 209
    iget-object v0, p0, Landroid/app/dialog/AlertParamsExt$SummaryAdapter;->mItems:[Ljava/lang/CharSequence;

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

    .line 146
    invoke-virtual {p0, p1}, Landroid/app/dialog/AlertParamsExt$SummaryAdapter;->getItem(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 224
    int-to-long v0, p1

    return-wide v0
.end method

.method public blacklist getSummary(I)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "position"    # I

    .line 213
    iget-object v0, p0, Landroid/app/dialog/AlertParamsExt$SummaryAdapter;->mSummaries:[Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 214
    return-object v1

    .line 216
    :cond_0
    array-length v2, v0

    if-lt p1, v2, :cond_1

    .line 217
    return-object v1

    .line 219
    :cond_1
    aget-object v0, v0, p1

    return-object v0
.end method

.method public whitelist getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 165
    iget-object v0, p0, Landroid/app/dialog/AlertParamsExt$SummaryAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0xc090409

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 166
    const v0, 0x1020014

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 167
    .local v0, "itemView":Landroid/widget/TextView;
    const v1, 0xc020047

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 168
    .local v1, "summaryView":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Landroid/app/dialog/AlertParamsExt$SummaryAdapter;->getItem(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 169
    .local v3, "item":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1}, Landroid/app/dialog/AlertParamsExt$SummaryAdapter;->getSummary(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 170
    .local v4, "summary":Ljava/lang/CharSequence;
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 172
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 174
    :cond_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    :goto_0
    invoke-direct {p0, p1, p2}, Landroid/app/dialog/AlertParamsExt$SummaryAdapter;->resetPadding(ILandroid/view/View;)V

    .line 178
    return-object p2
.end method

.method public whitelist hasStableIds()Z
    .locals 1

    .line 229
    const/4 v0, 0x1

    return v0
.end method
