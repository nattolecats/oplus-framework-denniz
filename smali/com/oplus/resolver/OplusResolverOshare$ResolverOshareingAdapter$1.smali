.class Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter$1;
.super Ljava/lang/Object;
.source "OplusResolverOshare.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->onBindViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;

.field final synthetic blacklist val$holder:Lcom/oplus/resolver/OplusResolverOshare$MyViewHolder;


# direct methods
.method constructor blacklist <init>(Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;Lcom/oplus/resolver/OplusResolverOshare$MyViewHolder;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;

    .line 880
    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter$1;->this$1:Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;

    iput-object p2, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter$1;->val$holder:Lcom/oplus/resolver/OplusResolverOshare$MyViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 884
    return-void
.end method

.method public whitelist onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 888
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter$1;->val$holder:Lcom/oplus/resolver/OplusResolverOshare$MyViewHolder;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/oplus/resolver/OplusResolverOshare$MyViewHolder;->canRestartAnimator:Z

    .line 889
    return-void
.end method
