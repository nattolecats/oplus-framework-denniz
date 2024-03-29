.class Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$SafeCallback;
.super Ljava/lang/Object;
.source "OplusScrollCaptureConnectionInner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SafeCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mSignal:Landroid/os/CancellationSignal;

.field private final blacklist mValue:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor blacklist <init>(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V
    .locals 1
    .param p1, "signal"    # Landroid/os/CancellationSignal;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/concurrent/Executor;",
            "TT;)V"
        }
    .end annotation

    .line 309
    .local p0, "this":Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$SafeCallback;, "Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$SafeCallback<TT;>;"
    .local p3, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    iput-object p1, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$SafeCallback;->mSignal:Landroid/os/CancellationSignal;

    .line 311
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$SafeCallback;->mValue:Ljava/util/concurrent/atomic/AtomicReference;

    .line 312
    iput-object p2, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$SafeCallback;->mExecutor:Ljava/util/concurrent/Executor;

    .line 313
    return-void
.end method

.method static blacklist create(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "signal"    # Landroid/os/CancellationSignal;
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "target"    # Ljava/lang/Runnable;

    .line 329
    new-instance v0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$RunnableCallback;

    invoke-direct {v0, p0, p1, p2}, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$RunnableCallback;-><init>(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method static blacklist create(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 1
    .param p0, "signal"    # Landroid/os/CancellationSignal;
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "TT;>;)",
            "Ljava/util/function/Consumer<",
            "TT;>;"
        }
    .end annotation

    .line 334
    .local p2, "target":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TT;>;"
    new-instance v0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$ConsumerCallback;

    invoke-direct {v0, p0, p1, p2}, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$ConsumerCallback;-><init>(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$maybeAccept$0(Ljava/util/function/Consumer;Ljava/lang/Object;)V
    .locals 0
    .param p0, "consumer"    # Ljava/util/function/Consumer;
    .param p1, "value"    # Ljava/lang/Object;

    .line 324
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final blacklist maybeAccept(Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 319
    .local p0, "this":Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$SafeCallback;, "Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$SafeCallback<TT;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TT;>;"
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$SafeCallback;->mValue:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 320
    .local v0, "value":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$SafeCallback;->mSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v1}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 321
    return-void

    .line 323
    :cond_0
    if-eqz v0, :cond_1

    .line 324
    iget-object v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$SafeCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$SafeCallback$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v0}, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$SafeCallback$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 326
    :cond_1
    return-void
.end method
