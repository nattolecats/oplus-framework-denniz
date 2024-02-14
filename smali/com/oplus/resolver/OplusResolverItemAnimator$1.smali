.class Lcom/oplus/resolver/OplusResolverItemAnimator$1;
.super Ljava/lang/Object;
.source "OplusResolverItemAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/resolver/OplusResolverItemAnimator;->runPendingAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/resolver/OplusResolverItemAnimator;

.field final synthetic blacklist val$moves:Ljava/util/ArrayList;


# direct methods
.method constructor blacklist <init>(Lcom/oplus/resolver/OplusResolverItemAnimator;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/resolver/OplusResolverItemAnimator;

    .line 131
    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$1;->this$0:Lcom/oplus/resolver/OplusResolverItemAnimator;

    iput-object p2, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 8

    .line 134
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/resolver/OplusResolverItemAnimator$MoveInfo;

    .line 135
    .local v1, "moveInfo":Lcom/oplus/resolver/OplusResolverItemAnimator$MoveInfo;
    iget-object v2, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$1;->this$0:Lcom/oplus/resolver/OplusResolverItemAnimator;

    iget-object v3, v1, Lcom/oplus/resolver/OplusResolverItemAnimator$MoveInfo;->holder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget v4, v1, Lcom/oplus/resolver/OplusResolverItemAnimator$MoveInfo;->fromX:I

    iget v5, v1, Lcom/oplus/resolver/OplusResolverItemAnimator$MoveInfo;->fromY:I

    iget v6, v1, Lcom/oplus/resolver/OplusResolverItemAnimator$MoveInfo;->toX:I

    iget v7, v1, Lcom/oplus/resolver/OplusResolverItemAnimator$MoveInfo;->toY:I

    invoke-virtual/range {v2 .. v7}, Lcom/oplus/resolver/OplusResolverItemAnimator;->animateMoveImpl(Lcom/android/internal/widget/RecyclerView$ViewHolder;IIII)V

    .line 137
    .end local v1    # "moveInfo":Lcom/oplus/resolver/OplusResolverItemAnimator$MoveInfo;
    goto :goto_0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 139
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$1;->this$0:Lcom/oplus/resolver/OplusResolverItemAnimator;

    iget-object v0, v0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mMovesList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 140
    return-void
.end method
