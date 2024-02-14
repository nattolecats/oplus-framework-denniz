.class Lcom/android/internal/app/OplusResolverManager$TabChangeListener;
.super Ljava/lang/Object;
.source "OplusResolverManager.java"

# interfaces
.implements Lcom/oplus/resolver/OplusResolverDialogHelper$OnProfileSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/OplusResolverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabChangeListener"
.end annotation


# instance fields
.field private blacklist mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

.field final synthetic blacklist this$0:Lcom/android/internal/app/OplusResolverManager;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/OplusResolverManager;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;)V
    .locals 0
    .param p2, "multiProfilePagerAdapter"    # Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 671
    iput-object p1, p0, Lcom/android/internal/app/OplusResolverManager$TabChangeListener;->this$0:Lcom/android/internal/app/OplusResolverManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 672
    iput-object p2, p0, Lcom/android/internal/app/OplusResolverManager$TabChangeListener;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 673
    return-void
.end method


# virtual methods
.method public whitelist onProfileSelected(I)V
    .locals 4
    .param p1, "position"    # I

    .line 679
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager$TabChangeListener;->this$0:Lcom/android/internal/app/OplusResolverManager;

    invoke-static {v0}, Lcom/android/internal/app/OplusResolverManager;->-$$Nest$fgetmResolverActivityExt(Lcom/android/internal/app/OplusResolverManager;)Lcom/android/internal/app/IResolverActivityExt;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/IResolverActivityExt;->getMultiProfilePagerAdapter()Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager$TabChangeListener;->this$0:Lcom/android/internal/app/OplusResolverManager;

    invoke-static {v0}, Lcom/android/internal/app/OplusResolverManager;->-$$Nest$fgetmResolverActivityExt(Lcom/android/internal/app/OplusResolverManager;)Lcom/android/internal/app/IResolverActivityExt;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/IResolverActivityExt;->getMultiProfilePagerAdapter()Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getWrapper()Lcom/android/internal/app/IAbstractMultiProfilePagerAdapterWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager$TabChangeListener;->this$0:Lcom/android/internal/app/OplusResolverManager;

    invoke-static {v0}, Lcom/android/internal/app/OplusResolverManager;->-$$Nest$fgetmResolverActivityExt(Lcom/android/internal/app/OplusResolverManager;)Lcom/android/internal/app/IResolverActivityExt;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/IResolverActivityExt;->getMultiProfilePagerAdapter()Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getWrapper()Lcom/android/internal/app/IAbstractMultiProfilePagerAdapterWrapper;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/app/IAbstractMultiProfilePagerAdapterWrapper;->setCurrentPage(I)V

    .line 683
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager$TabChangeListener;->this$0:Lcom/android/internal/app/OplusResolverManager;

    invoke-static {v0}, Lcom/android/internal/app/OplusResolverManager;->-$$Nest$fgetmResolverActivity(Lcom/android/internal/app/OplusResolverManager;)Lcom/android/internal/app/ResolverActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/internal/app/OplusResolverManager;->-$$Nest$mchangeOShareAndNfc(Lcom/android/internal/app/OplusResolverManager;Landroid/view/View;I)V

    .line 684
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager$TabChangeListener;->this$0:Lcom/android/internal/app/OplusResolverManager;

    invoke-static {v0}, Lcom/android/internal/app/OplusResolverManager;->-$$Nest$fgetmLoadedPages(Lcom/android/internal/app/OplusResolverManager;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 685
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager$TabChangeListener;->this$0:Lcom/android/internal/app/OplusResolverManager;

    invoke-static {v0}, Lcom/android/internal/app/OplusResolverManager;->-$$Nest$fgetmLoadedPages(Lcom/android/internal/app/OplusResolverManager;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 686
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager$TabChangeListener;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->rebuildActiveTab(Z)Z

    .line 687
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager$TabChangeListener;->this$0:Lcom/android/internal/app/OplusResolverManager;

    invoke-static {v0}, Lcom/android/internal/app/OplusResolverManager;->-$$Nest$mshouldShowEmptyState(Lcom/android/internal/app/OplusResolverManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 688
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager$TabChangeListener;->this$0:Lcom/android/internal/app/OplusResolverManager;

    invoke-static {v0}, Lcom/android/internal/app/OplusResolverManager;->-$$Nest$mshowEmptyViewState(Lcom/android/internal/app/OplusResolverManager;)V

    .line 689
    return-void

    .line 691
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager$TabChangeListener;->this$0:Lcom/android/internal/app/OplusResolverManager;

    invoke-static {v0}, Lcom/android/internal/app/OplusResolverManager;->-$$Nest$fgetmResolverDialogHelper(Lcom/android/internal/app/OplusResolverManager;)Lcom/oplus/resolver/OplusResolverDialogHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/OplusResolverManager$TabChangeListener;->this$0:Lcom/android/internal/app/OplusResolverManager;

    invoke-static {v1}, Lcom/android/internal/app/OplusResolverManager;->-$$Nest$mgetActiveResolverAdapter(Lcom/android/internal/app/OplusResolverManager;)Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/OplusResolverManager$TabChangeListener;->this$0:Lcom/android/internal/app/OplusResolverManager;

    invoke-static {v2}, Lcom/android/internal/app/OplusResolverManager;->-$$Nest$fgetmResolverActivity(Lcom/android/internal/app/OplusResolverManager;)Lcom/android/internal/app/ResolverActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/internal/app/OplusResolverManager$TabChangeListener;->this$0:Lcom/android/internal/app/OplusResolverManager;

    .line 692
    invoke-static {v2}, Lcom/android/internal/app/OplusResolverManager;->-$$Nest$mgetActiveResolverAdapter(Lcom/android/internal/app/OplusResolverManager;)Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/OplusResolverManager$TabChangeListener;->this$0:Lcom/android/internal/app/OplusResolverManager;

    invoke-static {v3}, Lcom/android/internal/app/OplusResolverManager;->-$$Nest$mgetPlaceholderCount(Lcom/android/internal/app/OplusResolverManager;)I

    move-result v3

    .line 691
    invoke-virtual {v0, v1, v2, v3}, Lcom/oplus/resolver/OplusResolverDialogHelper;->reLoadTabPlaceholderCount(ZLandroid/os/UserHandle;I)V

    goto :goto_0

    .line 693
    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager$TabChangeListener;->this$0:Lcom/android/internal/app/OplusResolverManager;

    invoke-static {v0}, Lcom/android/internal/app/OplusResolverManager;->-$$Nest$mshouldShowEmptyState(Lcom/android/internal/app/OplusResolverManager;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 694
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager$TabChangeListener;->this$0:Lcom/android/internal/app/OplusResolverManager;

    invoke-virtual {v0}, Lcom/android/internal/app/OplusResolverManager;->setResolverContent()V

    goto :goto_0

    .line 696
    :cond_3
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager$TabChangeListener;->this$0:Lcom/android/internal/app/OplusResolverManager;

    invoke-static {v0}, Lcom/android/internal/app/OplusResolverManager;->-$$Nest$mshowEmptyViewState(Lcom/android/internal/app/OplusResolverManager;)V

    .line 698
    :goto_0
    return-void
.end method
