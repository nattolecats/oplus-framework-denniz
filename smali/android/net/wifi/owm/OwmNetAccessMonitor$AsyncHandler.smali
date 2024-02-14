.class Landroid/net/wifi/owm/OwmNetAccessMonitor$AsyncHandler;
.super Landroid/os/Handler;
.source "OwmNetAccessMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/owm/OwmNetAccessMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/wifi/owm/OwmNetAccessMonitor;


# direct methods
.method public constructor blacklist <init>(Landroid/net/wifi/owm/OwmNetAccessMonitor;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 217
    iput-object p1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmNetAccessMonitor;

    .line 218
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 219
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 223
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmNetAccessMonitor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AsyncHandler Recv Mesasge: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->-$$Nest$mlogD(Landroid/net/wifi/owm/OwmNetAccessMonitor;Ljava/lang/String;)V

    .line 224
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 245
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

    const-string v1, "OwmNetAccessMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 239
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 240
    .local v0, "newSlowDurTimeSec":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 241
    .local v1, "newGoodRssiSlowDurTimeSec":I
    iget-object v2, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmNetAccessMonitor;

    invoke-static {v2, v0, v1}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->-$$Nest$mupdateNetSlowDurTimeCntRecord(Landroid/net/wifi/owm/OwmNetAccessMonitor;II)V

    .line 242
    iget-object v2, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmNetAccessMonitor;

    invoke-static {v2, v0, v1}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->-$$Nest$mupdateEvtNetSlowExitRecord(Landroid/net/wifi/owm/OwmNetAccessMonitor;II)V

    .line 243
    goto :goto_0

    .line 232
    .end local v0    # "newSlowDurTimeSec":I
    .end local v1    # "newGoodRssiSlowDurTimeSec":I
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 233
    .local v0, "newInvalidDurTimeSec":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 234
    .local v1, "newGoodRssiInvalidDurTimeSec":I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 235
    .local v2, "isFirstNetInvalid":Z
    iget-object v3, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmNetAccessMonitor;

    invoke-static {v3, v0, v1}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->-$$Nest$mupdateNetInvalidDurTimeCntRecord(Landroid/net/wifi/owm/OwmNetAccessMonitor;II)V

    .line 236
    iget-object v3, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmNetAccessMonitor;

    invoke-static {v3, v0, v1, v2}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->-$$Nest$mupdateEvtNetInvalidExitRecord(Landroid/net/wifi/owm/OwmNetAccessMonitor;IIZ)V

    .line 237
    goto :goto_0

    .line 229
    .end local v0    # "newInvalidDurTimeSec":I
    .end local v1    # "newGoodRssiInvalidDurTimeSec":I
    .end local v2    # "isFirstNetInvalid":Z
    :pswitch_2
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmNetAccessMonitor;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->-$$Nest$mupdateEvtNetSlowEnterRecord(Landroid/net/wifi/owm/OwmNetAccessMonitor;)V

    .line 230
    goto :goto_0

    .line 226
    :pswitch_3
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmNetAccessMonitor;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->-$$Nest$mupdateEvtNetInvalidEnterRecord(Landroid/net/wifi/owm/OwmNetAccessMonitor;)V

    .line 227
    nop

    .line 248
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
