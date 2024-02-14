.class Lcom/oplus/screenshot/OplusScrollCaptureSearchResults$SearchRequest;
.super Ljava/lang/Object;
.source "OplusScrollCaptureSearchResults.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Landroid/graphics/Rect;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mTarget:Landroid/view/ScrollCaptureTarget;

.field final synthetic blacklist this$0:Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;


# direct methods
.method constructor blacklist <init>(Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;Landroid/view/ScrollCaptureTarget;)V
    .locals 0
    .param p2, "target"    # Landroid/view/ScrollCaptureTarget;

    .line 145
    iput-object p1, p0, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults$SearchRequest;->this$0:Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p2, p0, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults$SearchRequest;->mTarget:Landroid/view/ScrollCaptureTarget;

    .line 147
    return-void
.end method

.method private blacklist consume(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "scrollBounds"    # Landroid/graphics/Rect;

    .line 158
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults$SearchRequest;->mTarget:Landroid/view/ScrollCaptureTarget;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults$SearchRequest;->this$0:Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;

    invoke-static {v0}, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;->-$$Nest$fgetmCancel(Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;)Landroid/os/CancellationSignal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    invoke-static {p1}, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;->-$$Nest$smnullOrEmpty(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults$SearchRequest;->mTarget:Landroid/view/ScrollCaptureTarget;

    invoke-virtual {v0, p1}, Landroid/view/ScrollCaptureTarget;->setScrollBounds(Landroid/graphics/Rect;)V

    .line 163
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults$SearchRequest;->mTarget:Landroid/view/ScrollCaptureTarget;

    invoke-virtual {v0}, Landroid/view/ScrollCaptureTarget;->updatePositionInWindow()V

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults$SearchRequest;->this$0:Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;

    invoke-static {v0}, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;->-$$Nest$fgetmCompleted(Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;->-$$Nest$fputmCompleted(Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;I)V

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults$SearchRequest;->mTarget:Landroid/view/ScrollCaptureTarget;

    .line 169
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults$SearchRequest;->this$0:Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;

    invoke-static {v0}, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;->-$$Nest$fgetmCompleted(Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;)I

    move-result v0

    iget-object v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults$SearchRequest;->this$0:Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;

    invoke-static {v1}, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;->-$$Nest$fgetmTargets(Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 170
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults$SearchRequest;->this$0:Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;

    invoke-static {v0}, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;->-$$Nest$msignalComplete(Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;)V

    .line 172
    :cond_2
    return-void

    .line 159
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist accept(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "scrollBounds"    # Landroid/graphics/Rect;

    .line 151
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults$SearchRequest;->mTarget:Landroid/view/ScrollCaptureTarget;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults$SearchRequest;->this$0:Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;

    invoke-static {v0}, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;->-$$Nest$fgetmCancel(Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;)Landroid/os/CancellationSignal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults$SearchRequest;->this$0:Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;

    invoke-static {v0}, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;->-$$Nest$fgetmExecutor(Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults$SearchRequest$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults$SearchRequest$$ExternalSyntheticLambda0;-><init>(Lcom/oplus/screenshot/OplusScrollCaptureSearchResults$SearchRequest;Landroid/graphics/Rect;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 155
    return-void

    .line 152
    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic whitelist test-api accept(Ljava/lang/Object;)V
    .locals 0

    .line 142
    check-cast p1, Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults$SearchRequest;->accept(Landroid/graphics/Rect;)V

    return-void
.end method

.method synthetic blacklist lambda$accept$0$com-oplus-screenshot-OplusScrollCaptureSearchResults$SearchRequest(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "scrollBounds"    # Landroid/graphics/Rect;

    .line 154
    invoke-direct {p0, p1}, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults$SearchRequest;->consume(Landroid/graphics/Rect;)V

    return-void
.end method
