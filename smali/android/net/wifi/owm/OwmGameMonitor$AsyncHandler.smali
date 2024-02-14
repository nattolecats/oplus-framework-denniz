.class Landroid/net/wifi/owm/OwmGameMonitor$AsyncHandler;
.super Landroid/os/Handler;
.source "OwmGameMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/owm/OwmGameMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/wifi/owm/OwmGameMonitor;


# direct methods
.method public constructor blacklist <init>(Landroid/net/wifi/owm/OwmGameMonitor;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 169
    iput-object p1, p0, Landroid/net/wifi/owm/OwmGameMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmGameMonitor;

    .line 170
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 171
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 175
    iget-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmGameMonitor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AsyncHandler Recv Mesasge: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/wifi/owm/OwmGameMonitor;->-$$Nest$mlogD(Landroid/net/wifi/owm/OwmGameMonitor;Ljava/lang/String;)V

    .line 176
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknow message:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OwmGameMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 189
    :pswitch_0
    iget-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmGameMonitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/owm/OwmGameMonitor;->addGamePlayingState(Z)V

    .line 190
    goto :goto_0

    .line 186
    :pswitch_1
    iget-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmGameMonitor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/net/wifi/owm/OwmGameMonitor;->-$$Nest$fputmIsGameSpaceLatencyValid(Landroid/net/wifi/owm/OwmGameMonitor;Z)V

    .line 187
    goto :goto_0

    .line 181
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 182
    .local v0, "newRttBadDurTimeSec":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 183
    .local v1, "newGoodRssiRttBadDurTimeSec":I
    iget-object v2, p0, Landroid/net/wifi/owm/OwmGameMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmGameMonitor;

    invoke-static {v2, v0, v1}, Landroid/net/wifi/owm/OwmGameMonitor;->-$$Nest$mupdateEvtRttBadExitRecord(Landroid/net/wifi/owm/OwmGameMonitor;II)V

    .line 184
    goto :goto_0

    .line 178
    .end local v0    # "newRttBadDurTimeSec":I
    .end local v1    # "newGoodRssiRttBadDurTimeSec":I
    :pswitch_3
    iget-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmGameMonitor;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmGameMonitor;->-$$Nest$mupdateEvtRttBadEnterRecord(Landroid/net/wifi/owm/OwmGameMonitor;)V

    .line 179
    nop

    .line 195
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
