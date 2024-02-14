.class Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$1;
.super Ljava/lang/Object;
.source "OplusScrollCaptureViewSupport.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/screenshot/OplusScrollCaptureViewSupport;->onScrollCaptureImageRequest(Landroid/view/ScrollCaptureSession;Landroid/os/CancellationSignal;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V
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
.field final synthetic blacklist this$0:Lcom/oplus/screenshot/OplusScrollCaptureViewSupport;

.field final synthetic blacklist val$onComplete:Ljava/util/function/Consumer;


# direct methods
.method constructor blacklist <init>(Lcom/oplus/screenshot/OplusScrollCaptureViewSupport;Ljava/util/function/Consumer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/screenshot/OplusScrollCaptureViewSupport;

    .line 251
    .local p0, "this":Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$1;, "Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$1;"
    iput-object p1, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$1;->this$0:Lcom/oplus/screenshot/OplusScrollCaptureViewSupport;

    iput-object p2, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$1;->val$onComplete:Ljava/util/function/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api accept(Ljava/lang/Object;)V
    .locals 0

    .line 251
    .local p0, "this":Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$1;, "Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$1;"
    check-cast p1, [Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$1;->accept([Landroid/graphics/Rect;)V

    return-void
.end method

.method public blacklist accept([Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "capturedArea"    # [Landroid/graphics/Rect;

    .line 254
    .local p0, "this":Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$1;, "Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$1;"
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$1;->val$onComplete:Ljava/util/function/Consumer;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 255
    return-void
.end method
