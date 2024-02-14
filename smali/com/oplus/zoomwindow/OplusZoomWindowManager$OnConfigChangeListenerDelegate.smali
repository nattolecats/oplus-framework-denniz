.class Lcom/oplus/zoomwindow/OplusZoomWindowManager$OnConfigChangeListenerDelegate;
.super Lcom/oplus/app/IOplusZoomWindowConfigChangedListener$Stub;
.source "OplusZoomWindowManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/zoomwindow/OplusZoomWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnConfigChangeListenerDelegate"
.end annotation


# static fields
.field private static final blacklist MSG_CONFIG_SWITCH_CHANGED:I = 0x2

.field private static final blacklist MSG_CONFIG_TYPE_CHANGED:I = 0x1


# instance fields
.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mListener:Lcom/oplus/zoomwindow/OplusZoomWindowManager$OnConfigChangedListener;

.field final synthetic blacklist this$0:Lcom/oplus/zoomwindow/OplusZoomWindowManager;


# direct methods
.method public constructor blacklist <init>(Lcom/oplus/zoomwindow/OplusZoomWindowManager;Lcom/oplus/zoomwindow/OplusZoomWindowManager$OnConfigChangedListener;Landroid/os/Looper;)V
    .locals 0
    .param p2, "listener"    # Lcom/oplus/zoomwindow/OplusZoomWindowManager$OnConfigChangedListener;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 749
    iput-object p1, p0, Lcom/oplus/zoomwindow/OplusZoomWindowManager$OnConfigChangeListenerDelegate;->this$0:Lcom/oplus/zoomwindow/OplusZoomWindowManager;

    invoke-direct {p0}, Lcom/oplus/app/IOplusZoomWindowConfigChangedListener$Stub;-><init>()V

    .line 750
    iput-object p2, p0, Lcom/oplus/zoomwindow/OplusZoomWindowManager$OnConfigChangeListenerDelegate;->mListener:Lcom/oplus/zoomwindow/OplusZoomWindowManager$OnConfigChangedListener;

    .line 751
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/oplus/zoomwindow/OplusZoomWindowManager$OnConfigChangeListenerDelegate;->mHandler:Landroid/os/Handler;

    .line 752
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 766
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 778
    return v1

    .line 773
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    move v0, v1

    .line 774
    .local v0, "enable":Z
    iget-object v1, p0, Lcom/oplus/zoomwindow/OplusZoomWindowManager$OnConfigChangeListenerDelegate;->mListener:Lcom/oplus/zoomwindow/OplusZoomWindowManager$OnConfigChangedListener;

    invoke-interface {v1, v0}, Lcom/oplus/zoomwindow/OplusZoomWindowManager$OnConfigChangedListener;->onConfigSwitchChanged(Z)V

    .line 775
    return v2

    .line 768
    .end local v0    # "enable":Z
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 769
    .local v0, "type":I
    iget-object v1, p0, Lcom/oplus/zoomwindow/OplusZoomWindowManager$OnConfigChangeListenerDelegate;->mListener:Lcom/oplus/zoomwindow/OplusZoomWindowManager$OnConfigChangedListener;

    invoke-interface {v1, v0}, Lcom/oplus/zoomwindow/OplusZoomWindowManager$OnConfigChangedListener;->onConfigTypeChanged(I)V

    .line 770
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist onConfigSwitchChanged(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 761
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowManager$OnConfigChangeListenerDelegate;->mHandler:Landroid/os/Handler;

    .line 762
    const/4 v1, 0x0

    .line 761
    const/4 v2, 0x2

    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 762
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 763
    return-void
.end method

.method public blacklist onConfigTypeChanged(I)V
    .locals 3
    .param p1, "type"    # I

    .line 756
    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowManager$OnConfigChangeListenerDelegate;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 757
    return-void
.end method
