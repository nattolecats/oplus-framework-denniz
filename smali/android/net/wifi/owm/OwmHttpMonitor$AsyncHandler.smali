.class Landroid/net/wifi/owm/OwmHttpMonitor$AsyncHandler;
.super Landroid/os/Handler;
.source "OwmHttpMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/owm/OwmHttpMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/wifi/owm/OwmHttpMonitor;


# direct methods
.method public constructor blacklist <init>(Landroid/net/wifi/owm/OwmHttpMonitor;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 127
    iput-object p1, p0, Landroid/net/wifi/owm/OwmHttpMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmHttpMonitor;

    .line 128
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 129
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 133
    iget-object v0, p0, Landroid/net/wifi/owm/OwmHttpMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmHttpMonitor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AsyncHandler Recv Mesasge: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/wifi/owm/OwmHttpMonitor;->-$$Nest$mlogD(Landroid/net/wifi/owm/OwmHttpMonitor;Ljava/lang/String;)V

    .line 134
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 150
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

    const-string v1, "OwmHttpMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 144
    :pswitch_0
    iget-object v0, p0, Landroid/net/wifi/owm/OwmHttpMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmHttpMonitor;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmHttpMonitor;->-$$Nest$fgetmWifiEnabled(Landroid/net/wifi/owm/OwmHttpMonitor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Landroid/net/wifi/owm/OwmHttpMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmHttpMonitor;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmHttpMonitor;->-$$Nest$fgetmhttpPacketHandler(Landroid/net/wifi/owm/OwmHttpMonitor;)Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler;->initSocket()V

    .line 146
    iget-object v0, p0, Landroid/net/wifi/owm/OwmHttpMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmHttpMonitor;

    const-string v1, "renew initSocket"

    invoke-static {v0, v1}, Landroid/net/wifi/owm/OwmHttpMonitor;->-$$Nest$mlogD(Landroid/net/wifi/owm/OwmHttpMonitor;Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :pswitch_1
    iget-object v0, p0, Landroid/net/wifi/owm/OwmHttpMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmHttpMonitor;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmHttpMonitor;->-$$Nest$fgetmhttpPacketHandler(Landroid/net/wifi/owm/OwmHttpMonitor;)Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler;->destroySocket()V

    .line 142
    goto :goto_0

    .line 136
    :pswitch_2
    iget-object v0, p0, Landroid/net/wifi/owm/OwmHttpMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmHttpMonitor;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmHttpMonitor;->-$$Nest$fgetmWifiEnabled(Landroid/net/wifi/owm/OwmHttpMonitor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Landroid/net/wifi/owm/OwmHttpMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmHttpMonitor;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmHttpMonitor;->-$$Nest$fgetmhttpPacketHandler(Landroid/net/wifi/owm/OwmHttpMonitor;)Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler;->initSocket()V

    .line 153
    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
