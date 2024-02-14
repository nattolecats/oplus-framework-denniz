.class Landroid/net/wifi/owm/OwmNetHealthMonitor$AsyncHandler;
.super Landroid/os/Handler;
.source "OwmNetHealthMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/owm/OwmNetHealthMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/wifi/owm/OwmNetHealthMonitor;


# direct methods
.method public constructor blacklist <init>(Landroid/net/wifi/owm/OwmNetHealthMonitor;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 176
    iput-object p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    .line 177
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 178
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 182
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AsyncHandler Recv Mesasge: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->-$$Nest$mlogD(Landroid/net/wifi/owm/OwmNetHealthMonitor;Ljava/lang/String;)V

    .line 183
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 220
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

    const-string v1, "OwmNetHealthMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 199
    :pswitch_0
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->-$$Nest$fgetmWifiConnected(Landroid/net/wifi/owm/OwmNetHealthMonitor;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->-$$Nest$fgetmL2HealthMonitor(Landroid/net/wifi/owm/OwmNetHealthMonitor;)Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-static {v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->-$$Nest$fgetmContext(Landroid/net/wifi/owm/OwmNetHealthMonitor;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/owm/OwmL2Monitor;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmL2Monitor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmL2Monitor;->getCurRecordForNetHealth()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->stopCollect(Ljava/util/Map;)V

    .line 204
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->-$$Nest$fgetmDhcpHealthMonitor(Landroid/net/wifi/owm/OwmNetHealthMonitor;)Landroid/net/wifi/owm/OwmNetHealthMonitor$DhcpHealthMonitor;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-static {v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->-$$Nest$fgetmContext(Landroid/net/wifi/owm/OwmNetHealthMonitor;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/owm/OwmDhcpMonitor;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmDhcpMonitor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmDhcpMonitor;->getCurRecordForNetHealth()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor$DhcpHealthMonitor;->stopCollect(Ljava/util/Map;)V

    .line 205
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->-$$Nest$fgetmDnsHealthMonitor(Landroid/net/wifi/owm/OwmNetHealthMonitor;)Landroid/net/wifi/owm/OwmNetHealthMonitor$DnsHealthMonitor;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-static {v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->-$$Nest$fgetmContext(Landroid/net/wifi/owm/OwmNetHealthMonitor;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/owm/OwmDnsMonitor;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmDnsMonitor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmDnsMonitor;->getCurRecordForNetHealth()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor$DnsHealthMonitor;->stopCollect(Ljava/util/Map;)V

    .line 206
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->-$$Nest$fgetmGatewayHealthMonitor(Landroid/net/wifi/owm/OwmNetHealthMonitor;)Landroid/net/wifi/owm/OwmNetHealthMonitor$GatewayHealthMonitor;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-static {v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->-$$Nest$fgetmContext(Landroid/net/wifi/owm/OwmNetHealthMonitor;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/owm/OwmGatewayMonitor;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmGatewayMonitor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmGatewayMonitor;->getCurRecordForNetHealth()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor$GatewayHealthMonitor;->stopCollect(Ljava/util/Map;)V

    .line 207
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->-$$Nest$fgetmHttpHealthMonitor(Landroid/net/wifi/owm/OwmNetHealthMonitor;)Landroid/net/wifi/owm/OwmNetHealthMonitor$HttpHealthMonitor;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-static {v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->-$$Nest$fgetmContext(Landroid/net/wifi/owm/OwmNetHealthMonitor;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/owm/OwmHttpMonitor;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmHttpMonitor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmHttpMonitor;->getCurRecordForNetHealth()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor$HttpHealthMonitor;->stopCollect(Ljava/util/Map;)V

    .line 208
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->-$$Nest$fgetmTcpHealthMonitor(Landroid/net/wifi/owm/OwmNetHealthMonitor;)Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-static {v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->-$$Nest$fgetmContext(Landroid/net/wifi/owm/OwmNetHealthMonitor;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/owm/OwmTcpMonitor;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmTcpMonitor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmTcpMonitor;->getCurRecordForNetHealth()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->stopCollect(Ljava/util/Map;)V

    .line 210
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->-$$Nest$fgetmL2HealthMonitor(Landroid/net/wifi/owm/OwmNetHealthMonitor;)Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->getCollectDiffRecord()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->-$$Nest$fputmLastL2HealthMonitorRecord(Landroid/net/wifi/owm/OwmNetHealthMonitor;Ljava/util/Map;)V

    .line 211
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->-$$Nest$fgetmDhcpHealthMonitor(Landroid/net/wifi/owm/OwmNetHealthMonitor;)Landroid/net/wifi/owm/OwmNetHealthMonitor$DhcpHealthMonitor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor$DhcpHealthMonitor;->getCollectDiffRecord()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->-$$Nest$fputmLastDhcpHealthMonitorRecord(Landroid/net/wifi/owm/OwmNetHealthMonitor;Ljava/util/Map;)V

    .line 212
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->-$$Nest$fgetmDnsHealthMonitor(Landroid/net/wifi/owm/OwmNetHealthMonitor;)Landroid/net/wifi/owm/OwmNetHealthMonitor$DnsHealthMonitor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor$DnsHealthMonitor;->getCollectDiffRecord()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->-$$Nest$fputmLastDnsHealthMonitorRecord(Landroid/net/wifi/owm/OwmNetHealthMonitor;Ljava/util/Map;)V

    .line 213
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->-$$Nest$fgetmGatewayHealthMonitor(Landroid/net/wifi/owm/OwmNetHealthMonitor;)Landroid/net/wifi/owm/OwmNetHealthMonitor$GatewayHealthMonitor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor$GatewayHealthMonitor;->getCollectDiffRecord()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->-$$Nest$fputmLastGatewayHealthMonitorRecord(Landroid/net/wifi/owm/OwmNetHealthMonitor;Ljava/util/Map;)V

    .line 214
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->-$$Nest$fgetmHttpHealthMonitor(Landroid/net/wifi/owm/OwmNetHealthMonitor;)Landroid/net/wifi/owm/OwmNetHealthMonitor$HttpHealthMonitor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor$HttpHealthMonitor;->getCollectDiffRecord()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->-$$Nest$fputmLastHttpHealthMonitorRecord(Landroid/net/wifi/owm/OwmNetHealthMonitor;Ljava/util/Map;)V

    .line 215
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->-$$Nest$fgetmTcpHealthMonitor(Landroid/net/wifi/owm/OwmNetHealthMonitor;)Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->getCollectDiffRecord()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->-$$Nest$fputmLastTcpHealthMonitorRecord(Landroid/net/wifi/owm/OwmNetHealthMonitor;Ljava/util/Map;)V

    .line 217
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->-$$Nest$fgetmAsyncHandler(Landroid/net/wifi/owm/OwmNetHealthMonitor;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-static {v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->-$$Nest$fgetmAsyncHandler(Landroid/net/wifi/owm/OwmNetHealthMonitor;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 218
    goto/16 :goto_0

    .line 185
    :pswitch_1
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->-$$Nest$fgetmWifiConnected(Landroid/net/wifi/owm/OwmNetHealthMonitor;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 186
    return-void

    .line 189
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->-$$Nest$fgetmL2HealthMonitor(Landroid/net/wifi/owm/OwmNetHealthMonitor;)Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-static {v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->-$$Nest$fgetmContext(Landroid/net/wifi/owm/OwmNetHealthMonitor;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/owm/OwmL2Monitor;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmL2Monitor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmL2Monitor;->getCurRecordForNetHealth()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->startCollect(Ljava/util/Map;)V

    .line 190
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->-$$Nest$fgetmDhcpHealthMonitor(Landroid/net/wifi/owm/OwmNetHealthMonitor;)Landroid/net/wifi/owm/OwmNetHealthMonitor$DhcpHealthMonitor;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-static {v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->-$$Nest$fgetmContext(Landroid/net/wifi/owm/OwmNetHealthMonitor;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/owm/OwmDhcpMonitor;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmDhcpMonitor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmDhcpMonitor;->getCurRecordForNetHealth()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor$DhcpHealthMonitor;->startCollect(Ljava/util/Map;)V

    .line 191
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->-$$Nest$fgetmDnsHealthMonitor(Landroid/net/wifi/owm/OwmNetHealthMonitor;)Landroid/net/wifi/owm/OwmNetHealthMonitor$DnsHealthMonitor;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-static {v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->-$$Nest$fgetmContext(Landroid/net/wifi/owm/OwmNetHealthMonitor;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/owm/OwmDnsMonitor;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmDnsMonitor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmDnsMonitor;->getCurRecordForNetHealth()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor$DnsHealthMonitor;->startCollect(Ljava/util/Map;)V

    .line 192
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->-$$Nest$fgetmGatewayHealthMonitor(Landroid/net/wifi/owm/OwmNetHealthMonitor;)Landroid/net/wifi/owm/OwmNetHealthMonitor$GatewayHealthMonitor;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-static {v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->-$$Nest$fgetmContext(Landroid/net/wifi/owm/OwmNetHealthMonitor;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/owm/OwmGatewayMonitor;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmGatewayMonitor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmGatewayMonitor;->getCurRecordForNetHealth()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor$GatewayHealthMonitor;->startCollect(Ljava/util/Map;)V

    .line 193
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->-$$Nest$fgetmHttpHealthMonitor(Landroid/net/wifi/owm/OwmNetHealthMonitor;)Landroid/net/wifi/owm/OwmNetHealthMonitor$HttpHealthMonitor;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-static {v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->-$$Nest$fgetmContext(Landroid/net/wifi/owm/OwmNetHealthMonitor;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/owm/OwmHttpMonitor;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmHttpMonitor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmHttpMonitor;->getCurRecordForNetHealth()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor$HttpHealthMonitor;->startCollect(Ljava/util/Map;)V

    .line 194
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->-$$Nest$fgetmTcpHealthMonitor(Landroid/net/wifi/owm/OwmNetHealthMonitor;)Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-static {v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->-$$Nest$fgetmContext(Landroid/net/wifi/owm/OwmNetHealthMonitor;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/owm/OwmTcpMonitor;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OwmTcpMonitor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/owm/OwmTcpMonitor;->getCurRecordForNetHealth()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->startCollect(Ljava/util/Map;)V

    .line 196
    iget-object v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->-$$Nest$fgetmAsyncHandler(Landroid/net/wifi/owm/OwmNetHealthMonitor;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-static {v1}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->-$$Nest$fgetmAsyncHandler(Landroid/net/wifi/owm/OwmNetHealthMonitor;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-static {v2}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->-$$Nest$fgetmRusCollectNetHealthIntervalSec(Landroid/net/wifi/owm/OwmNetHealthMonitor;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 197
    nop

    .line 223
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
