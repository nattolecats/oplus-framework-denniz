.class public final synthetic Lcom/oplus/resolver/OplusResolverGridAdapter$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic blacklist f$0:Lcom/oplus/resolver/OplusResolverGridAdapter;

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/oplus/resolver/OplusResolverGridAdapter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverGridAdapter$$ExternalSyntheticLambda2;->f$0:Lcom/oplus/resolver/OplusResolverGridAdapter;

    iput p2, p0, Lcom/oplus/resolver/OplusResolverGridAdapter$$ExternalSyntheticLambda2;->f$1:I

    return-void
.end method


# virtual methods
.method public final whitelist onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverGridAdapter$$ExternalSyntheticLambda2;->f$0:Lcom/oplus/resolver/OplusResolverGridAdapter;

    iget v1, p0, Lcom/oplus/resolver/OplusResolverGridAdapter$$ExternalSyntheticLambda2;->f$1:I

    invoke-virtual {v0, v1, p1}, Lcom/oplus/resolver/OplusResolverGridAdapter;->lambda$onBindViewHolder$2$com-oplus-resolver-OplusResolverGridAdapter(ILandroid/view/View;)Z

    move-result p1

    return p1
.end method
