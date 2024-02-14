.class Lcom/oplus/resolver/OplusResolverGridAdapter$GridViewHolder;
.super Lcom/android/internal/widget/RecyclerView$ViewHolder;
.source "OplusResolverGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/resolver/OplusResolverGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GridViewHolder"
.end annotation


# instance fields
.field blacklist mIcon:Landroid/widget/ImageView;

.field blacklist mLabel:Landroid/widget/TextView;

.field blacklist mLayout:Landroid/widget/LinearLayout;

.field blacklist mName:Landroid/widget/TextView;

.field blacklist mPipIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor blacklist <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .line 160
    invoke-direct {p0, p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 162
    const v0, 0xc02000b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oplus/resolver/OplusResolverGridAdapter$GridViewHolder;->mIcon:Landroid/widget/ImageView;

    .line 163
    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oplus/resolver/OplusResolverGridAdapter$GridViewHolder;->mLabel:Landroid/widget/TextView;

    .line 164
    const v0, 0xc02000c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oplus/resolver/OplusResolverGridAdapter$GridViewHolder;->mName:Landroid/widget/TextView;

    .line 165
    const v0, 0xc02005e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oplus/resolver/OplusResolverGridAdapter$GridViewHolder;->mPipIcon:Landroid/widget/ImageView;

    .line 166
    const v0, 0xc020091

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oplus/resolver/OplusResolverGridAdapter$GridViewHolder;->mLayout:Landroid/widget/LinearLayout;

    .line 167
    return-void
.end method
