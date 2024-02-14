.class public final synthetic Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/oplus/screenshot/OplusScrollCaptureViewSupport;

.field public final synthetic blacklist f$1:Landroid/view/View;

.field public final synthetic blacklist f$2:Landroid/os/CancellationSignal;

.field public final synthetic blacklist f$3:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/oplus/screenshot/OplusScrollCaptureViewSupport;Landroid/view/View;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$$ExternalSyntheticLambda0;->f$0:Lcom/oplus/screenshot/OplusScrollCaptureViewSupport;

    iput-object p2, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    iput-object p3, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$$ExternalSyntheticLambda0;->f$2:Landroid/os/CancellationSignal;

    iput-object p4, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$$ExternalSyntheticLambda0;->f$3:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$$ExternalSyntheticLambda0;->f$0:Lcom/oplus/screenshot/OplusScrollCaptureViewSupport;

    iget-object v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    iget-object v2, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$$ExternalSyntheticLambda0;->f$2:Landroid/os/CancellationSignal;

    iget-object v3, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$$ExternalSyntheticLambda0;->f$3:Ljava/util/function/Consumer;

    check-cast p1, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport;->lambda$onScrollCaptureImageRequest2$0$com-oplus-screenshot-OplusScrollCaptureViewSupport(Landroid/view/View;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;)V

    return-void
.end method
