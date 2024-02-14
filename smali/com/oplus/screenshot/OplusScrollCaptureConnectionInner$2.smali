.class Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$2;
.super Ljava/lang/Object;
.source "OplusScrollCaptureConnectionInner.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->lambda$requestImage$1$com-oplus-screenshot-OplusScrollCaptureConnectionInner(Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic blacklist this$0:Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;


# direct methods
.method constructor blacklist <init>(Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;

    .line 161
    iput-object p1, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$2;->this$0:Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist accept(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "capturedArea"    # Landroid/graphics/Rect;

    .line 164
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$2;->this$0:Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/Rect;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->onImageRequestCompleted([Landroid/graphics/Rect;)V

    .line 165
    return-void
.end method

.method public bridge synthetic whitelist test-api accept(Ljava/lang/Object;)V
    .locals 0

    .line 161
    check-cast p1, Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$2;->accept(Landroid/graphics/Rect;)V

    return-void
.end method
