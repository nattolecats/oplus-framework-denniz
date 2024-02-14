.class public Lcom/oplus/resolver/OplusResolverGridAdapter;
.super Lcom/android/internal/widget/RecyclerView$Adapter;
.source "OplusResolverGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/resolver/OplusResolverGridAdapter$GridViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/widget/RecyclerView$Adapter<",
        "Lcom/oplus/resolver/OplusResolverGridAdapter$GridViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mAppNameSize:I

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mMoreIconIndex:I

.field private blacklist mOnItemClickListener:Lcom/oplus/resolver/IOplusResolverGridItemClickListener;

.field private blacklist mPagerNumber:I

.field private blacklist oplusItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/widget/OplusItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 54
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView$Adapter;-><init>()V

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/resolver/OplusResolverGridAdapter;->mMoreIconIndex:I

    .line 55
    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverGridAdapter;->mContext:Landroid/content/Context;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 57
    const v1, 0xc050045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 58
    .local v0, "textSize":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/OplusBaseConfiguration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/OplusBaseConfiguration;->fontScale:F

    .line 59
    .local v1, "fontScale":F
    const/4 v2, 0x2

    .line 60
    .local v2, "scaleLevel":I
    int-to-float v3, v0

    invoke-static {v3, v1, v2}, Lcom/oplus/util/OplusChangeTextUtil;->getSuitableFontSize(FFI)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/oplus/resolver/OplusResolverGridAdapter;->mAppNameSize:I

    .line 61
    return-void
.end method


# virtual methods
.method public blacklist getItemCount()I
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverGridAdapter;->oplusItems:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/oplus/resolver/OplusResolverGridAdapter;->mMoreIconIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    add-int/lit8 v0, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method synthetic blacklist lambda$onBindViewHolder$0$com-oplus-resolver-OplusResolverGridAdapter(ILandroid/view/View;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;

    .line 105
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverGridAdapter;->mOnItemClickListener:Lcom/oplus/resolver/IOplusResolverGridItemClickListener;

    if-eqz v0, :cond_0

    .line 106
    iget v1, p0, Lcom/oplus/resolver/OplusResolverGridAdapter;->mPagerNumber:I

    invoke-interface {v0, v1, p1}, Lcom/oplus/resolver/IOplusResolverGridItemClickListener;->onItemClick(II)V

    .line 108
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$onBindViewHolder$1$com-oplus-resolver-OplusResolverGridAdapter(ILandroid/view/View;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;

    .line 110
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverGridAdapter;->mOnItemClickListener:Lcom/oplus/resolver/IOplusResolverGridItemClickListener;

    if-eqz v0, :cond_0

    .line 111
    iget v1, p0, Lcom/oplus/resolver/OplusResolverGridAdapter;->mPagerNumber:I

    invoke-interface {v0, v1, p1}, Lcom/oplus/resolver/IOplusResolverGridItemClickListener;->onItemClick(II)V

    .line 113
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$onBindViewHolder$2$com-oplus-resolver-OplusResolverGridAdapter(ILandroid/view/View;)Z
    .locals 2
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;

    .line 116
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverGridAdapter;->mOnItemClickListener:Lcom/oplus/resolver/IOplusResolverGridItemClickListener;

    if-eqz v0, :cond_0

    .line 117
    iget v1, p0, Lcom/oplus/resolver/OplusResolverGridAdapter;->mPagerNumber:I

    invoke-interface {v0, v1, p1}, Lcom/oplus/resolver/IOplusResolverGridItemClickListener;->onItemLongClick(II)V

    .line 119
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method synthetic blacklist lambda$onBindViewHolder$3$com-oplus-resolver-OplusResolverGridAdapter(ILandroid/view/View;)Z
    .locals 2
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;

    .line 122
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverGridAdapter;->mOnItemClickListener:Lcom/oplus/resolver/IOplusResolverGridItemClickListener;

    if-eqz v0, :cond_0

    .line 123
    iget v1, p0, Lcom/oplus/resolver/OplusResolverGridAdapter;->mPagerNumber:I

    invoke-interface {v0, v1, p1}, Lcom/oplus/resolver/IOplusResolverGridItemClickListener;->onItemLongClick(II)V

    .line 125
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method synthetic blacklist lambda$startMoreAnimation$4$com-oplus-resolver-OplusResolverGridAdapter()V
    .locals 2

    .line 146
    iget v0, p0, Lcom/oplus/resolver/OplusResolverGridAdapter;->mMoreIconIndex:I

    add-int/lit8 v0, v0, 0x1

    .line 147
    .local v0, "old":I
    const/4 v1, -0x1

    iput v1, p0, Lcom/oplus/resolver/OplusResolverGridAdapter;->mMoreIconIndex:I

    .line 148
    invoke-virtual {p0}, Lcom/oplus/resolver/OplusResolverGridAdapter;->getItemCount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/oplus/resolver/OplusResolverGridAdapter;->notifyItemRangeInserted(II)V

    .line 149
    return-void
.end method

.method public bridge synthetic blacklist onBindViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 45
    check-cast p1, Lcom/oplus/resolver/OplusResolverGridAdapter$GridViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/resolver/OplusResolverGridAdapter;->onBindViewHolder(Lcom/oplus/resolver/OplusResolverGridAdapter$GridViewHolder;I)V

    return-void
.end method

.method public blacklist onBindViewHolder(Lcom/oplus/resolver/OplusResolverGridAdapter$GridViewHolder;I)V
    .locals 6
    .param p1, "holder"    # Lcom/oplus/resolver/OplusResolverGridAdapter$GridViewHolder;
    .param p2, "position"    # I

    .line 75
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverGridAdapter;->oplusItems:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p2, :cond_0

    goto/16 :goto_3

    .line 78
    :cond_0
    iget-object v0, p1, Lcom/oplus/resolver/OplusResolverGridAdapter$GridViewHolder;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 79
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverGridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 80
    sget v2, Lcom/oplus/resolver/OplusResolverPagerAdapter;->COLUMN_SIZE:I

    const/4 v3, 0x4

    if-lt v2, v3, :cond_1

    .line 81
    const v2, 0xc0500c8

    goto :goto_0

    .line 82
    :cond_1
    const v2, 0xc0500c9

    .line 80
    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 83
    iget-object v1, p1, Lcom/oplus/resolver/OplusResolverGridAdapter$GridViewHolder;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    iget-object v1, p1, Lcom/oplus/resolver/OplusResolverGridAdapter$GridViewHolder;->mIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/oplus/resolver/OplusResolverGridAdapter;->oplusItems:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/widget/OplusItem;

    invoke-virtual {v2}, Lcom/oplus/widget/OplusItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    iget-object v1, p1, Lcom/oplus/resolver/OplusResolverGridAdapter$GridViewHolder;->mLabel:Landroid/widget/TextView;

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 86
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverGridAdapter;->oplusItems:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/widget/OplusItem;

    invoke-virtual {v1}, Lcom/oplus/widget/OplusItem;->getLabel()Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "label":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 88
    iget-object v4, p1, Lcom/oplus/resolver/OplusResolverGridAdapter$GridViewHolder;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    iget-object v4, p1, Lcom/oplus/resolver/OplusResolverGridAdapter$GridViewHolder;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v4, p1, Lcom/oplus/resolver/OplusResolverGridAdapter$GridViewHolder;->mLabel:Landroid/widget/TextView;

    iget v5, p0, Lcom/oplus/resolver/OplusResolverGridAdapter;->mAppNameSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 91
    :cond_2
    iget-object v4, p1, Lcom/oplus/resolver/OplusResolverGridAdapter$GridViewHolder;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-eq v4, v2, :cond_3

    .line 92
    iget-object v4, p1, Lcom/oplus/resolver/OplusResolverGridAdapter$GridViewHolder;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    .end local v1    # "label":Ljava/lang/String;
    :cond_3
    :goto_1
    iget-object v1, p1, Lcom/oplus/resolver/OplusResolverGridAdapter$GridViewHolder;->mName:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/oplus/resolver/OplusResolverGridAdapter;->oplusItems:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/widget/OplusItem;

    invoke-virtual {v4}, Lcom/oplus/widget/OplusItem;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v1, p1, Lcom/oplus/resolver/OplusResolverGridAdapter$GridViewHolder;->mName:Landroid/widget/TextView;

    iget v4, p0, Lcom/oplus/resolver/OplusResolverGridAdapter;->mAppNameSize:I

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 98
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverGridAdapter;->oplusItems:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/widget/OplusItem;

    invoke-virtual {v1}, Lcom/oplus/widget/OplusItem;->isPinned()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 99
    iget-object v1, p1, Lcom/oplus/resolver/OplusResolverGridAdapter$GridViewHolder;->mPipIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 101
    :cond_4
    iget-object v1, p1, Lcom/oplus/resolver/OplusResolverGridAdapter$GridViewHolder;->mPipIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 104
    :goto_2
    iget-object v1, p1, Lcom/oplus/resolver/OplusResolverGridAdapter$GridViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/oplus/resolver/OplusResolverGridAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p2}, Lcom/oplus/resolver/OplusResolverGridAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/oplus/resolver/OplusResolverGridAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v1, p1, Lcom/oplus/resolver/OplusResolverGridAdapter$GridViewHolder;->mIcon:Landroid/widget/ImageView;

    new-instance v2, Lcom/oplus/resolver/OplusResolverGridAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p2}, Lcom/oplus/resolver/OplusResolverGridAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/oplus/resolver/OplusResolverGridAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v1, p1, Lcom/oplus/resolver/OplusResolverGridAdapter$GridViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/oplus/resolver/OplusResolverGridAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p2}, Lcom/oplus/resolver/OplusResolverGridAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/oplus/resolver/OplusResolverGridAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 121
    iget-object v1, p1, Lcom/oplus/resolver/OplusResolverGridAdapter$GridViewHolder;->mIcon:Landroid/widget/ImageView;

    new-instance v2, Lcom/oplus/resolver/OplusResolverGridAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p2}, Lcom/oplus/resolver/OplusResolverGridAdapter$$ExternalSyntheticLambda3;-><init>(Lcom/oplus/resolver/OplusResolverGridAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 127
    return-void

    .line 76
    .end local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_5
    :goto_3
    return-void
.end method

.method public bridge synthetic blacklist onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/oplus/resolver/OplusResolverGridAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oplus/resolver/OplusResolverGridAdapter$GridViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oplus/resolver/OplusResolverGridAdapter$GridViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 69
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0xc09041b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 70
    .local v0, "item":Landroid/view/View;
    new-instance v1, Lcom/oplus/resolver/OplusResolverGridAdapter$GridViewHolder;

    invoke-direct {v1, v0}, Lcom/oplus/resolver/OplusResolverGridAdapter$GridViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public blacklist setOnItemClickListener(Lcom/oplus/resolver/IOplusResolverGridItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oplus/resolver/IOplusResolverGridItemClickListener;

    .line 64
    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverGridAdapter;->mOnItemClickListener:Lcom/oplus/resolver/IOplusResolverGridItemClickListener;

    .line 65
    return-void
.end method

.method public blacklist setOplusItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/widget/OplusItem;",
            ">;)V"
        }
    .end annotation

    .line 136
    .local p1, "oplusItems":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/widget/OplusItem;>;"
    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverGridAdapter;->oplusItems:Ljava/util/List;

    .line 137
    return-void
.end method

.method public blacklist setPagerNumber(I)V
    .locals 0
    .param p1, "pagerNumber"    # I

    .line 140
    iput p1, p0, Lcom/oplus/resolver/OplusResolverGridAdapter;->mPagerNumber:I

    .line 141
    return-void
.end method

.method public blacklist startMoreAnimation(I)V
    .locals 2
    .param p1, "iconIndex"    # I

    .line 144
    iput p1, p0, Lcom/oplus/resolver/OplusResolverGridAdapter;->mMoreIconIndex:I

    .line 145
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/oplus/resolver/OplusResolverGridAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/oplus/resolver/OplusResolverGridAdapter$$ExternalSyntheticLambda4;-><init>(Lcom/oplus/resolver/OplusResolverGridAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 150
    return-void
.end method
