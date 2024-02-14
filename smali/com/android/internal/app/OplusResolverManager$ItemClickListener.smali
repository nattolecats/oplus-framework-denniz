.class Lcom/android/internal/app/OplusResolverManager$ItemClickListener;
.super Ljava/lang/Object;
.source "OplusResolverManager.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/OplusResolverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemClickListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/OplusResolverManager;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/OplusResolverManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/OplusResolverManager;

    .line 840
    iput-object p1, p0, Lcom/android/internal/app/OplusResolverManager$ItemClickListener;->this$0:Lcom/android/internal/app/OplusResolverManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 844
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager$ItemClickListener;->this$0:Lcom/android/internal/app/OplusResolverManager;

    invoke-static {v0, p2, p3}, Lcom/android/internal/app/OplusResolverManager;->-$$Nest$mhandleClickEvent(Lcom/android/internal/app/OplusResolverManager;Landroid/view/View;I)V

    .line 845
    return-void
.end method

.method public whitelist onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 7
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 849
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager$ItemClickListener;->this$0:Lcom/android/internal/app/OplusResolverManager;

    iget-boolean v0, v0, Lcom/android/internal/app/OplusResolverManager;->mIsActionSend:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 850
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager$ItemClickListener;->this$0:Lcom/android/internal/app/OplusResolverManager;

    invoke-static {v0}, Lcom/android/internal/app/OplusResolverManager;->-$$Nest$fgetmResolverDialogHelper(Lcom/android/internal/app/OplusResolverManager;)Lcom/oplus/resolver/OplusResolverDialogHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/resolver/OplusResolverDialogHelper;->getResolveInforList()Ljava/util/List;

    move-result-object v0

    .line 851
    .local v0, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, p3, :cond_0

    goto :goto_0

    .line 855
    :cond_0
    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 856
    .local v2, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v3, p0, Lcom/android/internal/app/OplusResolverManager$ItemClickListener;->this$0:Lcom/android/internal/app/OplusResolverManager;

    invoke-virtual {v3}, Lcom/android/internal/app/OplusResolverManager;->getTargetIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v3}, Lcom/oplus/util/OplusResolverIntentUtil;->getIntentType(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 857
    .local v3, "type":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/app/OplusResolverManager$ItemClickListener;->this$0:Lcom/android/internal/app/OplusResolverManager;

    invoke-static {v4}, Lcom/android/internal/app/OplusResolverManager;->-$$Nest$fgetmResolverDialogHelper(Lcom/android/internal/app/OplusResolverManager;)Lcom/oplus/resolver/OplusResolverDialogHelper;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/app/OplusResolverManager$ItemClickListener;->this$0:Lcom/android/internal/app/OplusResolverManager;

    invoke-static {v5}, Lcom/android/internal/app/OplusResolverManager;->-$$Nest$fgetmPinnedSharedPrefs(Lcom/android/internal/app/OplusResolverManager;)Landroid/content/SharedPreferences;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/app/OplusResolverManager$ItemClickListener;->this$0:Lcom/android/internal/app/OplusResolverManager;

    invoke-static {v6}, Lcom/android/internal/app/OplusResolverManager;->-$$Nest$mgetActiveResolverAdapter(Lcom/android/internal/app/OplusResolverManager;)Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v6

    invoke-virtual {v4, v2, v5, v3, v6}, Lcom/oplus/resolver/OplusResolverDialogHelper;->showTargetDetails(Landroid/content/pm/ResolveInfo;Landroid/content/SharedPreferences;Ljava/lang/String;Lcom/android/internal/app/ResolverListAdapter;)V

    goto :goto_1

    .line 852
    .end local v2    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v3    # "type":Ljava/lang/String;
    :cond_1
    :goto_0
    const-string v2, "OplusResolverManager"

    const-string v3, "onItemLongClick size error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    return v1

    .line 859
    .end local v0    # "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2
    :goto_1
    return v1
.end method
