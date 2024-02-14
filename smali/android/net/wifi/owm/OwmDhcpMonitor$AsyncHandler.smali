.class Landroid/net/wifi/owm/OwmDhcpMonitor$AsyncHandler;
.super Landroid/os/Handler;
.source "OwmDhcpMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/owm/OwmDhcpMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/wifi/owm/OwmDhcpMonitor;


# direct methods
.method public constructor blacklist <init>(Landroid/net/wifi/owm/OwmDhcpMonitor;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 148
    iput-object p1, p0, Landroid/net/wifi/owm/OwmDhcpMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmDhcpMonitor;

    .line 149
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 150
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 154
    iget-object v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmDhcpMonitor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AsyncHandler Recv Mesasge: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/wifi/owm/OwmDhcpMonitor;->-$$Nest$mlogD(Landroid/net/wifi/owm/OwmDhcpMonitor;Ljava/lang/String;)V

    .line 156
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 185
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

    const-string v1, "OwmDhcpMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 166
    :pswitch_0
    iget-object v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmDhcpMonitor;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmDhcpMonitor;->-$$Nest$fgettryRenewInitSocketCnt(Landroid/net/wifi/owm/OwmDhcpMonitor;)I

    move-result v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_0

    .line 168
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmDhcpMonitor;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmDhcpMonitor;->-$$Nest$fgetmWifiManager(Landroid/net/wifi/owm/OwmDhcpMonitor;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 172
    iget-object v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmDhcpMonitor;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmDhcpMonitor;->-$$Nest$fgetmContext(Landroid/net/wifi/owm/OwmDhcpMonitor;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    invoke-static {v0, v1}, Landroid/net/wifi/owm/OwmDhcpMonitor;->-$$Nest$fputmWifiManager(Landroid/net/wifi/owm/OwmDhcpMonitor;Landroid/net/wifi/WifiManager;)V

    .line 175
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmDhcpMonitor;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmDhcpMonitor;->-$$Nest$fgetmWifiManager(Landroid/net/wifi/owm/OwmDhcpMonitor;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmDhcpMonitor;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmDhcpMonitor;->-$$Nest$fgetmWifiManager(Landroid/net/wifi/owm/OwmDhcpMonitor;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    iget-object v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmDhcpMonitor;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmDhcpMonitor;->-$$Nest$fgetmDhcpPacketHandler(Landroid/net/wifi/owm/OwmDhcpMonitor;)Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;->initSocket()V

    .line 177
    iget-object v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmDhcpMonitor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/net/wifi/owm/OwmDhcpMonitor;->-$$Nest$fputtryRenewInitSocketCnt(Landroid/net/wifi/owm/OwmDhcpMonitor;I)V

    .line 178
    iget-object v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmDhcpMonitor;

    const-string v1, "renew initSocket"

    invoke-static {v0, v1}, Landroid/net/wifi/owm/OwmDhcpMonitor;->-$$Nest$mlogD(Landroid/net/wifi/owm/OwmDhcpMonitor;Ljava/lang/String;)V

    goto :goto_0

    .line 180
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmDhcpMonitor;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmDhcpMonitor;->-$$Nest$fgettryRenewInitSocketCnt(Landroid/net/wifi/owm/OwmDhcpMonitor;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Landroid/net/wifi/owm/OwmDhcpMonitor;->-$$Nest$fputtryRenewInitSocketCnt(Landroid/net/wifi/owm/OwmDhcpMonitor;I)V

    .line 181
    iget-object v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmDhcpMonitor;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmDhcpMonitor;->-$$Nest$fgetmAsyncHandler(Landroid/net/wifi/owm/OwmDhcpMonitor;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/owm/OwmDhcpMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmDhcpMonitor;

    invoke-static {v1}, Landroid/net/wifi/owm/OwmDhcpMonitor;->-$$Nest$fgetmAsyncHandler(Landroid/net/wifi/owm/OwmDhcpMonitor;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 183
    goto :goto_0

    .line 163
    :pswitch_1
    iget-object v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmDhcpMonitor;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmDhcpMonitor;->-$$Nest$fgetmDhcpPacketHandler(Landroid/net/wifi/owm/OwmDhcpMonitor;)Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;->destroySocket()V

    .line 164
    goto :goto_0

    .line 158
    :pswitch_2
    iget-object v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmDhcpMonitor;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmDhcpMonitor;->-$$Nest$fgetmWifiEnabled(Landroid/net/wifi/owm/OwmDhcpMonitor;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 159
    iget-object v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmDhcpMonitor;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmDhcpMonitor;->-$$Nest$fgetmDhcpPacketHandler(Landroid/net/wifi/owm/OwmDhcpMonitor;)Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;->initSocket()V

    .line 188
    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
