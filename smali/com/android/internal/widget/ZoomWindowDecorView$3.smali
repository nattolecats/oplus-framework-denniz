.class Lcom/android/internal/widget/ZoomWindowDecorView$3;
.super Ljava/lang/Object;
.source "ZoomWindowDecorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/ZoomWindowDecorView;->updateTipText(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/ZoomWindowDecorView;

.field final synthetic blacklist val$text:I


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/ZoomWindowDecorView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/widget/ZoomWindowDecorView;

    .line 491
    iput-object p1, p0, Lcom/android/internal/widget/ZoomWindowDecorView$3;->this$0:Lcom/android/internal/widget/ZoomWindowDecorView;

    iput p2, p0, Lcom/android/internal/widget/ZoomWindowDecorView$3;->val$text:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 2

    .line 493
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView$3;->this$0:Lcom/android/internal/widget/ZoomWindowDecorView;

    invoke-static {v0}, Lcom/android/internal/widget/ZoomWindowDecorView;->-$$Nest$fgetmTipView(Lcom/android/internal/widget/ZoomWindowDecorView;)Landroid/widget/Button;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView$3;->val$text:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 494
    return-void
.end method
