.class Lcom/android/internal/policy/OplusZoomDecorAnimHelper$ZoomDecorHandler;
.super Landroid/os/Handler;
.source "OplusZoomDecorAnimHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/OplusZoomDecorAnimHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomDecorHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/policy/OplusZoomDecorAnimHelper;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/policy/OplusZoomDecorAnimHelper;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 346
    iput-object p1, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper$ZoomDecorHandler;->this$0:Lcom/android/internal/policy/OplusZoomDecorAnimHelper;

    .line 347
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 348
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 352
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 353
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 355
    :pswitch_0
    const-string v0, "ZoomWindowDecorView"

    const-string v1, "show zoom tip"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v0, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper$ZoomDecorHandler;->this$0:Lcom/android/internal/policy/OplusZoomDecorAnimHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->updateTipWithAnim(Z)V

    .line 357
    iget-object v0, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper$ZoomDecorHandler;->this$0:Lcom/android/internal/policy/OplusZoomDecorAnimHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->updateThreeButtonWithAnim(Z)V

    .line 358
    nop

    .line 362
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
