.class Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler$SocketThread;
.super Ljava/lang/Object;
.source "OwmDhcpMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SocketThread"
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;


# direct methods
.method private constructor blacklist <init>(Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;)V
    .locals 0

    .line 615
    iput-object p1, p0, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler$SocketThread;->this$1:Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler$SocketThread-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler$SocketThread;-><init>(Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;)V

    return-void
.end method

.method private blacklist recvMessage()V
    .locals 7

    .line 617
    const-string v0, "OwmDhcpMonitor"

    const-string v1, "SocketThread, step recvMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    const/16 v1, 0x5dc

    const/4 v2, 0x0

    :try_start_0
    new-array v1, v1, [B

    .line 621
    .local v1, "packetBuffer":[B
    const/4 v3, 0x0

    .line 623
    .local v3, "len":I
    :goto_0
    iget-object v4, p0, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler$SocketThread;->this$1:Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;

    invoke-static {v4}, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;->-$$Nest$fgetmPacketSock(Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;)Ljava/io/FileDescriptor;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 624
    iget-object v4, p0, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler$SocketThread;->this$1:Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;

    invoke-static {v4}, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;->-$$Nest$fgetmPacketSock(Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;)Ljava/io/FileDescriptor;

    move-result-object v4

    array-length v5, v1

    invoke-static {v4, v1, v2, v5}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v3, v4

    .line 627
    :try_start_1
    invoke-static {v1, v3, v2}, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->decodeFullPacket([BII)Landroid/net/wifi/oplus/util/OplusDhcpPacket;

    move-result-object v4

    .line 628
    .local v4, "packet":Landroid/net/wifi/oplus/util/OplusDhcpPacket;
    iget-object v5, p0, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler$SocketThread;->this$1:Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;

    invoke-static {v5, v4}, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;->-$$Nest$mreceiveOfferOrAckPacket(Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;Landroid/net/wifi/oplus/util/OplusDhcpPacket;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 631
    .end local v4    # "packet":Landroid/net/wifi/oplus/util/OplusDhcpPacket;
    goto :goto_0

    .line 629
    :catch_0
    move-exception v4

    .line 630
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SocketThread decodeDhcpPacket catch exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 631
    nop

    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 647
    .end local v1    # "packetBuffer":[B
    .end local v3    # "len":I
    :cond_0
    goto :goto_1

    .line 633
    :catch_1
    move-exception v1

    .line 634
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SocketThread recvMessage catch exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    iget-object v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler$SocketThread;->this$1:Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;

    iget-object v0, v0, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;->this$0:Landroid/net/wifi/owm/OwmDhcpMonitor;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmDhcpMonitor;->-$$Nest$fgetmAsyncHandler(Landroid/net/wifi/owm/OwmDhcpMonitor;)Landroid/os/Handler;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 637
    iget-object v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler$SocketThread;->this$1:Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;

    iget-object v0, v0, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;->this$0:Landroid/net/wifi/owm/OwmDhcpMonitor;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmDhcpMonitor;->-$$Nest$fgetmWifiEnabled(Landroid/net/wifi/owm/OwmDhcpMonitor;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 640
    iget-object v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler$SocketThread;->this$1:Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;

    iget-object v0, v0, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;->this$0:Landroid/net/wifi/owm/OwmDhcpMonitor;

    invoke-static {v0, v2}, Landroid/net/wifi/owm/OwmDhcpMonitor;->-$$Nest$fputtryRenewInitSocketCnt(Landroid/net/wifi/owm/OwmDhcpMonitor;I)V

    .line 642
    iget-object v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler$SocketThread;->this$1:Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;

    iget-object v0, v0, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;->this$0:Landroid/net/wifi/owm/OwmDhcpMonitor;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmDhcpMonitor;->-$$Nest$fgetmAsyncHandler(Landroid/net/wifi/owm/OwmDhcpMonitor;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 643
    iget-object v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler$SocketThread;->this$1:Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;

    iget-object v0, v0, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;->this$0:Landroid/net/wifi/owm/OwmDhcpMonitor;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmDhcpMonitor;->-$$Nest$fgetmAsyncHandler(Landroid/net/wifi/owm/OwmDhcpMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 645
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler$SocketThread;->this$1:Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;

    iget-object v0, v0, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;->this$0:Landroid/net/wifi/owm/OwmDhcpMonitor;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmDhcpMonitor;->-$$Nest$fgetmAsyncHandler(Landroid/net/wifi/owm/OwmDhcpMonitor;)Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler$SocketThread;->this$1:Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;

    iget-object v3, v3, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;->this$0:Landroid/net/wifi/owm/OwmDhcpMonitor;

    invoke-static {v3}, Landroid/net/wifi/owm/OwmDhcpMonitor;->-$$Nest$fgetmAsyncHandler(Landroid/net/wifi/owm/OwmDhcpMonitor;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 648
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 0

    .line 651
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler$SocketThread;->recvMessage()V

    .line 652
    return-void
.end method
