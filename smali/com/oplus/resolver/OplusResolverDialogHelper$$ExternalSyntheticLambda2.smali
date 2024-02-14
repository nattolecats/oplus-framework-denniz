.class public final synthetic Lcom/oplus/resolver/OplusResolverDialogHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# instance fields
.field public final synthetic blacklist f$0:Lcom/oplus/resolver/OplusResolverDialogHelper;

.field public final synthetic blacklist f$1:Landroid/widget/TabHost;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/oplus/resolver/OplusResolverDialogHelper;Landroid/widget/TabHost;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverDialogHelper$$ExternalSyntheticLambda2;->f$0:Lcom/oplus/resolver/OplusResolverDialogHelper;

    iput-object p2, p0, Lcom/oplus/resolver/OplusResolverDialogHelper$$ExternalSyntheticLambda2;->f$1:Landroid/widget/TabHost;

    return-void
.end method


# virtual methods
.method public final whitelist onTabChanged(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverDialogHelper$$ExternalSyntheticLambda2;->f$0:Lcom/oplus/resolver/OplusResolverDialogHelper;

    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverDialogHelper$$ExternalSyntheticLambda2;->f$1:Landroid/widget/TabHost;

    invoke-virtual {v0, v1, p1}, Lcom/oplus/resolver/OplusResolverDialogHelper;->lambda$initTabView$4$com-oplus-resolver-OplusResolverDialogHelper(Landroid/widget/TabHost;Ljava/lang/String;)V

    return-void
.end method
