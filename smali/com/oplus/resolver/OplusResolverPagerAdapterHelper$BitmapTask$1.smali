.class Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask$1;
.super Ljava/lang/Object;
.source "OplusResolverPagerAdapterHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask;

.field final synthetic blacklist val$oplusItems:Ljava/util/List;


# direct methods
.method constructor blacklist <init>(Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask;

    .line 420
    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask$1;->this$1:Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask;

    iput-object p2, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask$1;->val$oplusItems:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 5

    .line 423
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask$1;->this$1:Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask;

    iget-object v0, v0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask;->this$0:Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->-$$Nest$fgetmTaskHashMap(Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask$1;->this$1:Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask;

    iget-object v0, v0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask;->this$0:Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->-$$Nest$fgetmTaskHashMap(Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask$1;->this$1:Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask;

    invoke-static {v1}, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask;->-$$Nest$fgetmPagerNumber(Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask$1;->this$1:Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask;

    iget-object v0, v0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask;->this$0:Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->-$$Nest$fgetmAdapterCache(Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask$1;->this$1:Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask;

    invoke-static {v1}, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask;->-$$Nest$fgetmPagerNumber(Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask$1;->this$1:Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask;

    iget-object v0, v0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask;->this$0:Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->-$$Nest$fgetmAdapterCache(Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask$1;->this$1:Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask;

    invoke-static {v1}, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask;->-$$Nest$fgetmPagerNumber(Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/resolver/OplusResolverGridAdapter;

    .line 427
    .local v0, "gridAdapter":Lcom/oplus/resolver/OplusResolverGridAdapter;
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask$1;->this$1:Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask;

    iget-object v1, v1, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask;->this$0:Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;

    iget-object v2, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask$1;->val$oplusItems:Ljava/util/List;

    iget-object v3, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask$1;->this$1:Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask;

    invoke-static {v3}, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask;->-$$Nest$fgetmPagerNumber(Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask;)I

    move-result v3

    iget-object v4, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask$1;->this$1:Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask;

    invoke-static {v4}, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask;->-$$Nest$fgetmPagerSize(Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask;)I

    move-result v4

    invoke-static {v1, v0, v2, v3, v4}, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->-$$Nest$mupdateAdapterItems(Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;Lcom/oplus/resolver/OplusResolverGridAdapter;Ljava/util/List;II)V

    .line 428
    invoke-virtual {v0}, Lcom/oplus/resolver/OplusResolverGridAdapter;->notifyDataSetChanged()V

    .line 431
    .end local v0    # "gridAdapter":Lcom/oplus/resolver/OplusResolverGridAdapter;
    :cond_0
    return-void
.end method
