.class public Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;
.super Ljava/lang/Object;
.source "OplusScrollCaptureSearchResults.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/screenshot/OplusScrollCaptureSearchResults$SearchRequest;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "OplusScrollCaptureSearchResults"


# instance fields
.field private final blacklist mCancel:Landroid/os/CancellationSignal;

.field private blacklist mComplete:Z

.field private blacklist mCompleted:I

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mOnCompleteListener:Ljava/lang/Runnable;

.field private final blacklist mResults:Landroid/view/ScrollCaptureSearchResults;

.field private final blacklist mTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/ScrollCaptureTarget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCancel(Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;)Landroid/os/CancellationSignal;
    .locals 0

    iget-object p0, p0, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;->mCancel:Landroid/os/CancellationSignal;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCompleted(Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;)I
    .locals 0

    iget p0, p0, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;->mCompleted:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTargets(Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;->mTargets:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCompleted(Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;I)V
    .locals 0

    iput p1, p0, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;->mCompleted:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msignalComplete(Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;->signalComplete()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnullOrEmpty(Landroid/graphics/Rect;)Z
    .locals 0

    invoke-static {p0}, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;->nullOrEmpty(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>(Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;->mComplete:Z

    .line 56
    iput-object p1, p0, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;->mExecutor:Ljava/util/concurrent/Executor;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;->mTargets:Ljava/util/List;

    .line 58
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;->mCancel:Landroid/os/CancellationSignal;

    .line 59
    new-instance v0, Landroid/view/ScrollCaptureSearchResults;

    new-instance v1, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults$1;

    invoke-direct {v1, p0}, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults$1;-><init>(Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;)V

    invoke-direct {v0, v1}, Landroid/view/ScrollCaptureSearchResults;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;->mResults:Landroid/view/ScrollCaptureSearchResults;

    .line 65
    return-void
.end method

.method private static blacklist nullOrEmpty(Landroid/graphics/Rect;)Z
    .locals 1
    .param p0, "r"    # Landroid/graphics/Rect;

    .line 176
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private blacklist signalComplete()V
    .locals 1

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;->mComplete:Z

    .line 127
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;->mOnCompleteListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 128
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;->mOnCompleteListener:Ljava/lang/Runnable;

    .line 131
    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist addTarget(Landroid/view/ScrollCaptureTarget;)V
    .locals 4
    .param p1, "target"    # Landroid/view/ScrollCaptureTarget;

    .line 75
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;->mTargets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;->mComplete:Z

    .line 79
    invoke-virtual {p1}, Landroid/view/ScrollCaptureTarget;->getCallback()Landroid/view/ScrollCaptureCallback;

    move-result-object v0

    .line 80
    .local v0, "callback":Landroid/view/ScrollCaptureCallback;
    new-instance v1, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults$SearchRequest;

    invoke-direct {v1, p0, p1}, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults$SearchRequest;-><init>(Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;Landroid/view/ScrollCaptureTarget;)V

    .line 83
    .local v1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/graphics/Rect;>;"
    iget-object v2, p0, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, v1}, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults$$ExternalSyntheticLambda0;-><init>(Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;Landroid/view/ScrollCaptureCallback;Ljava/util/function/Consumer;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 85
    return-void
.end method

.method public blacklist finish()V
    .locals 1

    .line 119
    iget-boolean v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;->mComplete:Z

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;->mCancel:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 121
    invoke-direct {p0}, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;->signalComplete()V

    .line 123
    :cond_0
    return-void
.end method

.method public blacklist getResults()Landroid/view/ScrollCaptureSearchResults;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;->mResults:Landroid/view/ScrollCaptureSearchResults;

    return-object v0
.end method

.method public blacklist getTargets()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/ScrollCaptureTarget;",
            ">;"
        }
    .end annotation

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;->mTargets:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public blacklist isComplete()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;->mComplete:Z

    return v0
.end method

.method public blacklist isEmpty()Z
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;->mTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method synthetic blacklist lambda$addTarget$0$com-oplus-screenshot-OplusScrollCaptureSearchResults(Landroid/view/ScrollCaptureCallback;Ljava/util/function/Consumer;)V
    .locals 1
    .param p1, "callback"    # Landroid/view/ScrollCaptureCallback;
    .param p2, "consumer"    # Ljava/util/function/Consumer;

    .line 84
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;->mCancel:Landroid/os/CancellationSignal;

    invoke-interface {p1, v0, p2}, Landroid/view/ScrollCaptureCallback;->onScrollCaptureSearch(Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public blacklist setOnCompleteListener(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "onComplete"    # Ljava/lang/Runnable;

    .line 98
    iget-boolean v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;->mComplete:Z

    if-eqz v0, :cond_0

    .line 99
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 101
    :cond_0
    iput-object p1, p0, Lcom/oplus/screenshot/OplusScrollCaptureSearchResults;->mOnCompleteListener:Ljava/lang/Runnable;

    .line 103
    :goto_0
    return-void
.end method
