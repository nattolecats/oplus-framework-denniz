.class final Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$RunnableCallback;
.super Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$SafeCallback;
.source "OplusScrollCaptureConnectionInner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RunnableCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$SafeCallback<",
        "Ljava/lang/Runnable;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "signal"    # Landroid/os/CancellationSignal;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "target"    # Ljava/lang/Runnable;

    .line 340
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$SafeCallback;-><init>(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    .line 341
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 1

    .line 345
    new-instance v0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$RunnableCallback$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$RunnableCallback$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$RunnableCallback;->maybeAccept(Ljava/util/function/Consumer;)V

    .line 346
    return-void
.end method
