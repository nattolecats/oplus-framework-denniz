.class public final synthetic Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/oplus/screenshot/OplusScrollCaptureViewSupport;

.field public final synthetic blacklist f$1:Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;

.field public final synthetic blacklist f$2:Landroid/view/View;

.field public final synthetic blacklist f$3:Landroid/graphics/Rect;

.field public final synthetic blacklist f$4:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/oplus/screenshot/OplusScrollCaptureViewSupport;Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;Landroid/view/View;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$$ExternalSyntheticLambda1;->f$0:Lcom/oplus/screenshot/OplusScrollCaptureViewSupport;

    iput-object p2, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$$ExternalSyntheticLambda1;->f$1:Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;

    iput-object p3, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$$ExternalSyntheticLambda1;->f$2:Landroid/view/View;

    iput-object p4, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$$ExternalSyntheticLambda1;->f$3:Landroid/graphics/Rect;

    iput-object p5, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$$ExternalSyntheticLambda1;->f$4:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 5

    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$$ExternalSyntheticLambda1;->f$0:Lcom/oplus/screenshot/OplusScrollCaptureViewSupport;

    iget-object v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$$ExternalSyntheticLambda1;->f$1:Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;

    iget-object v2, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$$ExternalSyntheticLambda1;->f$2:Landroid/view/View;

    iget-object v3, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$$ExternalSyntheticLambda1;->f$3:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$$ExternalSyntheticLambda1;->f$4:Ljava/util/function/Consumer;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport;->lambda$onScrollResult$1$com-oplus-screenshot-OplusScrollCaptureViewSupport(Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;Landroid/view/View;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V

    return-void
.end method
