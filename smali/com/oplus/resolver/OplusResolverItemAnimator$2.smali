.class Lcom/oplus/resolver/OplusResolverItemAnimator$2;
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

.field final synthetic blacklist val$changes:Ljava/util/ArrayList;


# direct methods
.method constructor blacklist <init>(Lcom/oplus/resolver/OplusResolverItemAnimator;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/resolver/OplusResolverItemAnimator;

    .line 155
    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$2;->this$0:Lcom/oplus/resolver/OplusResolverItemAnimator;

    iput-object p2, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$2;->val$changes:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$2;->val$changes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;

    .line 159
    .local v1, "change":Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;
    iget-object v2, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$2;->this$0:Lcom/oplus/resolver/OplusResolverItemAnimator;

    invoke-virtual {v2, v1}, Lcom/oplus/resolver/OplusResolverItemAnimator;->animateChangeImpl(Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;)V

    .line 160
    .end local v1    # "change":Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;
    goto :goto_0

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$2;->val$changes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 162
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$2;->this$0:Lcom/oplus/resolver/OplusResolverItemAnimator;

    iget-object v0, v0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mChangesList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverItemAnimator$2;->val$changes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 163
    return-void
.end method
