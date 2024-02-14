.class public final synthetic Lcom/android/internal/app/AbstractMultiProfilePagerAdapterExtImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/View$OnClickListener;

.field public final synthetic blacklist f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapterExtImpl$$ExternalSyntheticLambda1;->f$0:Landroid/view/View$OnClickListener;

    iput-object p2, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapterExtImpl$$ExternalSyntheticLambda1;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final whitelist onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapterExtImpl$$ExternalSyntheticLambda1;->f$0:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapterExtImpl$$ExternalSyntheticLambda1;->f$1:Landroid/view/View;

    invoke-static {v0, v1, p1, p2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapterExtImpl;->lambda$showWorkProfileOffEmptyState$0(Landroid/view/View$OnClickListener;Landroid/view/View;Landroid/content/DialogInterface;I)V

    return-void
.end method
