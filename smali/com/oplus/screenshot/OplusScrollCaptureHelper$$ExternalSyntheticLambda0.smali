.class public final synthetic Lcom/oplus/screenshot/OplusScrollCaptureHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/oplus/screenshot/OplusScrollCaptureHelper;

.field public final synthetic blacklist f$1:Landroid/view/View;

.field public final synthetic blacklist f$2:Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;

.field public final synthetic blacklist f$3:I

.field public final synthetic blacklist f$4:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/oplus/screenshot/OplusScrollCaptureHelper;Landroid/view/View;Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;ILjava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/screenshot/OplusScrollCaptureHelper$$ExternalSyntheticLambda0;->f$0:Lcom/oplus/screenshot/OplusScrollCaptureHelper;

    iput-object p2, p0, Lcom/oplus/screenshot/OplusScrollCaptureHelper$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    iput-object p3, p0, Lcom/oplus/screenshot/OplusScrollCaptureHelper$$ExternalSyntheticLambda0;->f$2:Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;

    iput p4, p0, Lcom/oplus/screenshot/OplusScrollCaptureHelper$$ExternalSyntheticLambda0;->f$3:I

    iput-object p5, p0, Lcom/oplus/screenshot/OplusScrollCaptureHelper$$ExternalSyntheticLambda0;->f$4:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 5

    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureHelper$$ExternalSyntheticLambda0;->f$0:Lcom/oplus/screenshot/OplusScrollCaptureHelper;

    iget-object v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureHelper$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    iget-object v2, p0, Lcom/oplus/screenshot/OplusScrollCaptureHelper$$ExternalSyntheticLambda0;->f$2:Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;

    iget v3, p0, Lcom/oplus/screenshot/OplusScrollCaptureHelper$$ExternalSyntheticLambda0;->f$3:I

    iget-object v4, p0, Lcom/oplus/screenshot/OplusScrollCaptureHelper$$ExternalSyntheticLambda0;->f$4:Ljava/util/function/Consumer;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/oplus/screenshot/OplusScrollCaptureHelper;->lambda$onScrollRequested$0$com-oplus-screenshot-OplusScrollCaptureHelper(Landroid/view/View;Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;ILjava/util/function/Consumer;)V

    return-void
.end method
