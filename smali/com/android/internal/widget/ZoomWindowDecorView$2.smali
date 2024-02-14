.class Lcom/android/internal/widget/ZoomWindowDecorView$2;
.super Ljava/lang/Object;
.source "ZoomWindowDecorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/ZoomWindowDecorView;->updateLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/ZoomWindowDecorView;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/ZoomWindowDecorView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/widget/ZoomWindowDecorView;

    .line 481
    iput-object p1, p0, Lcom/android/internal/widget/ZoomWindowDecorView$2;->this$0:Lcom/android/internal/widget/ZoomWindowDecorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 1

    .line 483
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView$2;->this$0:Lcom/android/internal/widget/ZoomWindowDecorView;

    invoke-static {v0}, Lcom/android/internal/widget/ZoomWindowDecorView;->-$$Nest$minvalidateView(Lcom/android/internal/widget/ZoomWindowDecorView;)V

    .line 484
    return-void
.end method
