.class final Landroid/view/OplusSystemUINavigationGesture$SystemUINavigationGestureHandler;
.super Landroid/os/Handler;
.source "OplusSystemUINavigationGesture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/OplusSystemUINavigationGesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SystemUINavigationGestureHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/OplusSystemUINavigationGesture;


# direct methods
.method constructor blacklist <init>(Landroid/view/OplusSystemUINavigationGesture;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/OplusSystemUINavigationGesture;

    .line 699
    iput-object p1, p0, Landroid/view/OplusSystemUINavigationGesture$SystemUINavigationGestureHandler;->this$0:Landroid/view/OplusSystemUINavigationGesture;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist getMessageName(Landroid/os/Message;)Ljava/lang/String;
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .line 702
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 708
    invoke-super {p0, p1}, Landroid/os/Handler;->getMessageName(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 706
    :pswitch_0
    const-string v0, "MSG_GESTURE_CONFIG_CHECK"

    return-object v0

    .line 704
    :pswitch_1
    const-string v0, "MSG_GESTURE_MOTION_DOWN"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 713
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 719
    :pswitch_0
    iget-object v0, p0, Landroid/view/OplusSystemUINavigationGesture$SystemUINavigationGestureHandler;->this$0:Landroid/view/OplusSystemUINavigationGesture;

    invoke-virtual {v0}, Landroid/view/OplusSystemUINavigationGesture;->handleGestureConfigCheck()V

    goto :goto_0

    .line 715
    :pswitch_1
    iget-object v0, p0, Landroid/view/OplusSystemUINavigationGesture$SystemUINavigationGestureHandler;->this$0:Landroid/view/OplusSystemUINavigationGesture;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/OplusSystemUINavigationGesture;->handleGestureMotionDown(Landroid/view/View;)V

    .line 716
    nop

    .line 723
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
