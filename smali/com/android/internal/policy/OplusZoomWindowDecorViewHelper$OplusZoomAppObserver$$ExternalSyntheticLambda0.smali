.class public final synthetic Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper$OplusZoomAppObserver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper$OplusZoomAppObserver;

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper$OplusZoomAppObserver;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper$OplusZoomAppObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper$OplusZoomAppObserver;

    iput p2, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper$OplusZoomAppObserver$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper$OplusZoomAppObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper$OplusZoomAppObserver;

    iget v1, p0, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper$OplusZoomAppObserver$$ExternalSyntheticLambda0;->f$1:I

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper$OplusZoomAppObserver;->lambda$notifyDecorationChange$0$com-android-internal-policy-OplusZoomWindowDecorViewHelper$OplusZoomAppObserver(I)V

    return-void
.end method
