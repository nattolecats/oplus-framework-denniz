.class final Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$ConsumerCallback;
.super Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$SafeCallback;
.source "OplusScrollCaptureConnectionInner.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConsumerCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$SafeCallback<",
        "Ljava/util/function/Consumer<",
        "TT;>;>;",
        "Ljava/util/function/Consumer<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 0
    .param p1, "signal"    # Landroid/os/CancellationSignal;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 352
    .local p0, "this":Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$ConsumerCallback;, "Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$ConsumerCallback<TT;>;"
    .local p3, "target":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$SafeCallback;-><init>(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    .line 353
    return-void
.end method

.method static synthetic blacklist lambda$accept$0(Ljava/lang/Object;Ljava/util/function/Consumer;)V
    .locals 0
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "target"    # Ljava/util/function/Consumer;

    .line 357
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api accept(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 357
    .local p0, "this":Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$ConsumerCallback;, "Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$ConsumerCallback<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$ConsumerCallback$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$ConsumerCallback$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$ConsumerCallback;->maybeAccept(Ljava/util/function/Consumer;)V

    .line 358
    return-void
.end method
