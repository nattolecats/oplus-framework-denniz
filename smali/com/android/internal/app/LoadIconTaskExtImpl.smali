.class public Lcom/android/internal/app/LoadIconTaskExtImpl;
.super Ljava/lang/Object;
.source "LoadIconTaskExtImpl.java"

# interfaces
.implements Lcom/android/internal/app/ILoadIconTaskExt;


# instance fields
.field private blacklist mHolderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverListAdapter$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLoadIconTask:Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "base"    # Ljava/lang/Object;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/LoadIconTaskExtImpl;->mHolderList:Ljava/util/List;

    .line 17
    move-object v0, p1

    check-cast v0, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;

    iput-object v0, p0, Lcom/android/internal/app/LoadIconTaskExtImpl;->mLoadIconTask:Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;

    .line 18
    return-void
.end method


# virtual methods
.method public blacklist hookonPostExecute(Lcom/android/internal/app/IResolverListAdapterExt;Lcom/android/internal/app/chooser/DisplayResolveInfo;)V
    .locals 2
    .param p1, "resolverListAdapterExt"    # Lcom/android/internal/app/IResolverListAdapterExt;
    .param p2, "displayResolveInfo"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 31
    invoke-interface {p1}, Lcom/android/internal/app/IResolverListAdapterExt;->isOpShareUi()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    iget-object v0, p0, Lcom/android/internal/app/LoadIconTaskExtImpl;->mHolderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    .line 33
    .local v1, "vh":Lcom/android/internal/app/ResolverListAdapter$ViewHolder;
    invoke-virtual {v1, p2}, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->bindIcon(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 34
    .end local v1    # "vh":Lcom/android/internal/app/ResolverListAdapter$ViewHolder;
    goto :goto_0

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/LoadIconTaskExtImpl;->mHolderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 37
    :cond_1
    return-void
.end method

.method public blacklist hooksetViewHolder(Lcom/android/internal/app/IResolverListAdapterExt;Lcom/android/internal/app/chooser/DisplayResolveInfo;Lcom/android/internal/app/ResolverListAdapter$ViewHolder;)Z
    .locals 1
    .param p1, "resolverListAdapterExt"    # Lcom/android/internal/app/IResolverListAdapterExt;
    .param p2, "displayResolveInfo"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .param p3, "holder"    # Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    .line 22
    invoke-interface {p1}, Lcom/android/internal/app/IResolverListAdapterExt;->isOpShareUi()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p3, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/android/internal/app/LoadIconTaskExtImpl;->mHolderList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    const/4 v0, 0x1

    return v0

    .line 26
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
