.class public final synthetic Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic blacklist f$0:Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;

.field public final synthetic blacklist f$1:Lcom/oplus/oshare/OplusOshareDevice;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;Lcom/oplus/oshare/OplusOshareDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;

    iput-object p2, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/oplus/oshare/OplusOshareDevice;

    return-void
.end method


# virtual methods
.method public final whitelist onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;

    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/oplus/oshare/OplusOshareDevice;

    invoke-virtual {v0, v1, p1, p2}, Lcom/oplus/resolver/OplusResolverOshare$ResolverOshareingAdapter;->lambda$onBindViewHolder$0$com-oplus-resolver-OplusResolverOshare$ResolverOshareingAdapter(Lcom/oplus/oshare/OplusOshareDevice;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
