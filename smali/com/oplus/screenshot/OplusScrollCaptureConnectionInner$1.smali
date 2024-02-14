.class Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$1;
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
        "[",
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

    .line 151
    iput-object p1, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$1;->this$0:Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api accept(Ljava/lang/Object;)V
    .locals 0

    .line 151
    check-cast p1, [Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$1;->accept([Landroid/graphics/Rect;)V

    return-void
.end method

.method public blacklist accept([Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "capturedArea"    # [Landroid/graphics/Rect;

    .line 154
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$1;->this$0:Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;

    invoke-virtual {v0, p1}, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->onImageRequestCompleted([Landroid/graphics/Rect;)V

    .line 155
    return-void
.end method
