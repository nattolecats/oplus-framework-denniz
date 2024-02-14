.class public final synthetic Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;

.field public final synthetic blacklist f$1:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$$ExternalSyntheticLambda4;->f$0:Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;

    iput-object p2, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$$ExternalSyntheticLambda4;->f$1:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$$ExternalSyntheticLambda4;->f$0:Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;

    iget-object v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$$ExternalSyntheticLambda4;->f$1:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->lambda$requestImage$1$com-oplus-screenshot-OplusScrollCaptureConnectionInner(Landroid/graphics/Rect;)V

    return-void
.end method
