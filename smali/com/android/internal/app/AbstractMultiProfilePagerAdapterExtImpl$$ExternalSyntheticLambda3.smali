.class public final synthetic Lcom/android/internal/app/AbstractMultiProfilePagerAdapterExtImpl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/app/AbstractMultiProfilePagerAdapterExtImpl;

.field public final synthetic blacklist f$1:Landroid/view/View$OnClickListener;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/app/AbstractMultiProfilePagerAdapterExtImpl;Landroid/view/View$OnClickListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapterExtImpl$$ExternalSyntheticLambda3;->f$0:Lcom/android/internal/app/AbstractMultiProfilePagerAdapterExtImpl;

    iput-object p2, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapterExtImpl$$ExternalSyntheticLambda3;->f$1:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public final whitelist onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapterExtImpl$$ExternalSyntheticLambda3;->f$0:Lcom/android/internal/app/AbstractMultiProfilePagerAdapterExtImpl;

    iget-object v1, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapterExtImpl$$ExternalSyntheticLambda3;->f$1:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapterExtImpl;->lambda$showWorkProfileOffEmptyState$2$com-android-internal-app-AbstractMultiProfilePagerAdapterExtImpl(Landroid/view/View$OnClickListener;Landroid/view/View;)V

    return-void
.end method
