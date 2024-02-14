.class Lcom/oplus/resolver/OplusResolverOshare$MyViewHolder;
.super Lcom/android/internal/widget/RecyclerView$ViewHolder;
.source "OplusResolverOshare.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/resolver/OplusResolverOshare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyViewHolder"
.end annotation


# instance fields
.field public blacklist canRestartAnimator:Z

.field final synthetic blacklist this$0:Lcom/oplus/resolver/OplusResolverOshare;

.field public final blacklist userName:Landroid/widget/TextView;

.field public final blacklist userPanel:Landroid/view/View;

.field public final blacklist userPic:Landroid/widget/ImageView;

.field public final blacklist userProgress:Lcom/oplus/resolver/OplusResolverCircleProgressBar;

.field public final blacklist userStatus:Landroid/widget/TextView;

.field public blacklist userWaitingStatusAnimatorSet:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor blacklist <init>(Lcom/oplus/resolver/OplusResolverOshare;Landroid/view/View;)V
    .locals 0
    .param p2, "itemView"    # Landroid/view/View;

    .line 690
    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverOshare$MyViewHolder;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    .line 691
    invoke-direct {p0, p2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 688
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/resolver/OplusResolverOshare$MyViewHolder;->canRestartAnimator:Z

    .line 692
    const p1, 0xc020066

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverOshare$MyViewHolder;->userName:Landroid/widget/TextView;

    .line 693
    const p1, 0xc020067

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverOshare$MyViewHolder;->userStatus:Landroid/widget/TextView;

    .line 694
    const p1, 0xc020068

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverOshare$MyViewHolder;->userPic:Landroid/widget/ImageView;

    .line 695
    const p1, 0xc020058

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oplus/resolver/OplusResolverCircleProgressBar;

    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverOshare$MyViewHolder;->userProgress:Lcom/oplus/resolver/OplusResolverCircleProgressBar;

    .line 696
    const p1, 0xc020059

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverOshare$MyViewHolder;->userPanel:Landroid/view/View;

    .line 697
    return-void
.end method
