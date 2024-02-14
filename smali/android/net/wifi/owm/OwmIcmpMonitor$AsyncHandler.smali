.class Landroid/net/wifi/owm/OwmIcmpMonitor$AsyncHandler;
.super Landroid/os/Handler;
.source "OwmIcmpMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/owm/OwmIcmpMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/wifi/owm/OwmIcmpMonitor;


# direct methods
.method public constructor blacklist <init>(Landroid/net/wifi/owm/OwmIcmpMonitor;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 146
    iput-object p1, p0, Landroid/net/wifi/owm/OwmIcmpMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmIcmpMonitor;

    .line 147
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 148
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 152
    iget-object v0, p0, Landroid/net/wifi/owm/OwmIcmpMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmIcmpMonitor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AsyncHandler Recv Mesasge: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/wifi/owm/OwmIcmpMonitor;->-$$Nest$mlogD(Landroid/net/wifi/owm/OwmIcmpMonitor;Ljava/lang/String;)V

    .line 154
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "OwmIcmpMonitor"

    const/4 v2, 0x3

    packed-switch v0, :pswitch_data_0

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknow message:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 183
    :pswitch_0
    iget-object v0, p0, Landroid/net/wifi/owm/OwmIcmpMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmIcmpMonitor;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmIcmpMonitor;->-$$Nest$fgetmErrCode0Cnt(Landroid/net/wifi/owm/OwmIcmpMonitor;)I

    move-result v0

    iget-object v1, p0, Landroid/net/wifi/owm/OwmIcmpMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmIcmpMonitor;

    invoke-static {v1}, Landroid/net/wifi/owm/OwmIcmpMonitor;->-$$Nest$fgetmPreErrCode0Cnt(Landroid/net/wifi/owm/OwmIcmpMonitor;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 185
    .local v0, "icmpUnreachableCntDiff":I
    if-lt v0, v2, :cond_3

    .line 186
    iget-object v1, p0, Landroid/net/wifi/owm/OwmIcmpMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmIcmpMonitor;

    invoke-static {v1}, Landroid/net/wifi/owm/OwmIcmpMonitor;->-$$Nest$fgetmContext(Landroid/net/wifi/owm/OwmIcmpMonitor;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OplusOwmMonitorKit;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->sendIcmpUnreachableBurstEventMesg()V

    goto/16 :goto_0

    .line 164
    .end local v0    # "icmpUnreachableCntDiff":I
    :pswitch_1
    iget-object v0, p0, Landroid/net/wifi/owm/OwmIcmpMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmIcmpMonitor;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmIcmpMonitor;->-$$Nest$fgettryRenewInitSocketCnt(Landroid/net/wifi/owm/OwmIcmpMonitor;)I

    move-result v0

    const/4 v3, 0x5

    if-lt v0, v3, :cond_0

    .line 166
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/owm/OwmIcmpMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmIcmpMonitor;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmIcmpMonitor;->-$$Nest$fgetmWifiManager(Landroid/net/wifi/owm/OwmIcmpMonitor;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 170
    iget-object v0, p0, Landroid/net/wifi/owm/OwmIcmpMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmIcmpMonitor;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmIcmpMonitor;->-$$Nest$fgetmContext(Landroid/net/wifi/owm/OwmIcmpMonitor;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    invoke-static {v0, v3}, Landroid/net/wifi/owm/OwmIcmpMonitor;->-$$Nest$fputmWifiManager(Landroid/net/wifi/owm/OwmIcmpMonitor;Landroid/net/wifi/WifiManager;)V

    .line 173
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/owm/OwmIcmpMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmIcmpMonitor;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmIcmpMonitor;->-$$Nest$fgetmWifiManager(Landroid/net/wifi/owm/OwmIcmpMonitor;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/net/wifi/owm/OwmIcmpMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmIcmpMonitor;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmIcmpMonitor;->-$$Nest$fgetmWifiManager(Landroid/net/wifi/owm/OwmIcmpMonitor;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 174
    iget-object v0, p0, Landroid/net/wifi/owm/OwmIcmpMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmIcmpMonitor;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmIcmpMonitor;->-$$Nest$fgetmIcmpPacketHandler(Landroid/net/wifi/owm/OwmIcmpMonitor;)Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;->initSocket()V

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "renew initSocket succ, and tryRenewInitSocketCnt = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/net/wifi/owm/OwmIcmpMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmIcmpMonitor;

    invoke-static {v2}, Landroid/net/wifi/owm/OwmIcmpMonitor;->-$$Nest$fgettryRenewInitSocketCnt(Landroid/net/wifi/owm/OwmIcmpMonitor;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Landroid/net/wifi/owm/OwmIcmpMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmIcmpMonitor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/net/wifi/owm/OwmIcmpMonitor;->-$$Nest$fputtryRenewInitSocketCnt(Landroid/net/wifi/owm/OwmIcmpMonitor;I)V

    goto :goto_0

    .line 178
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/owm/OwmIcmpMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmIcmpMonitor;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmIcmpMonitor;->-$$Nest$fgettryRenewInitSocketCnt(Landroid/net/wifi/owm/OwmIcmpMonitor;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Landroid/net/wifi/owm/OwmIcmpMonitor;->-$$Nest$fputtryRenewInitSocketCnt(Landroid/net/wifi/owm/OwmIcmpMonitor;I)V

    .line 179
    iget-object v0, p0, Landroid/net/wifi/owm/OwmIcmpMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmIcmpMonitor;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmIcmpMonitor;->-$$Nest$fgetmAsyncHandler(Landroid/net/wifi/owm/OwmIcmpMonitor;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/owm/OwmIcmpMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmIcmpMonitor;

    invoke-static {v1}, Landroid/net/wifi/owm/OwmIcmpMonitor;->-$$Nest$fgetmAsyncHandler(Landroid/net/wifi/owm/OwmIcmpMonitor;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 181
    goto :goto_0

    .line 161
    :pswitch_2
    iget-object v0, p0, Landroid/net/wifi/owm/OwmIcmpMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmIcmpMonitor;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmIcmpMonitor;->-$$Nest$fgetmIcmpPacketHandler(Landroid/net/wifi/owm/OwmIcmpMonitor;)Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;->destroySocket()V

    .line 162
    goto :goto_0

    .line 156
    :pswitch_3
    iget-object v0, p0, Landroid/net/wifi/owm/OwmIcmpMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmIcmpMonitor;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmIcmpMonitor;->-$$Nest$fgetmWifiEnabled(Landroid/net/wifi/owm/OwmIcmpMonitor;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 157
    iget-object v0, p0, Landroid/net/wifi/owm/OwmIcmpMonitor$AsyncHandler;->this$0:Landroid/net/wifi/owm/OwmIcmpMonitor;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmIcmpMonitor;->-$$Nest$fgetmIcmpPacketHandler(Landroid/net/wifi/owm/OwmIcmpMonitor;)Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;->initSocket()V

    .line 193
    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
