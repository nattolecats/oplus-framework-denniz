.class Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler$SocketThread;
.super Ljava/lang/Object;
.source "OwmIcmpMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SocketThread"
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;


# direct methods
.method private constructor blacklist <init>(Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;)V
    .locals 0

    .line 444
    iput-object p1, p0, Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler$SocketThread;->this$1:Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler$SocketThread-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler$SocketThread;-><init>(Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;)V

    return-void
.end method

.method private blacklist recvMessage()V
    .locals 8

    .line 446
    const-string v0, "OwmIcmpMonitor"

    const-string v1, "SocketThread, step recvMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    const/16 v1, 0x5dc

    const/4 v2, 0x0

    :try_start_0
    new-array v1, v1, [B

    .line 450
    .local v1, "packetBuffer":[B
    const/4 v3, 0x0

    .line 452
    .local v3, "len":I
    :goto_0
    iget-object v4, p0, Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler$SocketThread;->this$1:Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;

    invoke-static {v4}, Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;->-$$Nest$fgetmPacketSock(Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;)Ljava/io/FileDescriptor;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 453
    iget-object v4, p0, Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler$SocketThread;->this$1:Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;

    invoke-static {v4}, Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;->-$$Nest$fgetmPacketSock(Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;)Ljava/io/FileDescriptor;

    move-result-object v4

    array-length v5, v1

    invoke-static {v4, v1, v2, v5}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v3, v4

    .line 457
    :try_start_1
    invoke-static {v1, v3}, Landroid/net/wifi/oplus/util/OplusIcmpPacket;->decodeIcmpPacket([BI)Landroid/net/wifi/oplus/util/OplusIcmpPacket;

    move-result-object v4

    .line 458
    .local v4, "icmpPacket":Landroid/net/wifi/oplus/util/OplusIcmpPacket;
    iget-object v5, p0, Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler$SocketThread;->this$1:Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;

    invoke-static {v5, v4}, Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;->-$$Nest$mhanldeReceiveIcmpPacket(Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;Landroid/net/wifi/oplus/util/OplusIcmpPacket;)V

    .line 460
    if-nez v4, :cond_0

    .line 461
    iget-object v5, p0, Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler$SocketThread;->this$1:Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;

    iget-object v5, v5, Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;->this$0:Landroid/net/wifi/owm/OwmIcmpMonitor;

    const-string v6, "recvMessage icmpPacket == null"

    invoke-static {v5, v6}, Landroid/net/wifi/owm/OwmIcmpMonitor;->-$$Nest$mlogD(Landroid/net/wifi/owm/OwmIcmpMonitor;Ljava/lang/String;)V

    goto :goto_1

    .line 463
    :cond_0
    iget-object v5, p0, Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler$SocketThread;->this$1:Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;

    iget-object v5, v5, Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;->this$0:Landroid/net/wifi/owm/OwmIcmpMonitor;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "recvMessage "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/net/wifi/oplus/util/OplusIcmpPacket;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/net/wifi/owm/OwmIcmpMonitor;->-$$Nest$mlogD(Landroid/net/wifi/owm/OwmIcmpMonitor;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 467
    .end local v4    # "icmpPacket":Landroid/net/wifi/oplus/util/OplusIcmpPacket;
    :goto_1
    goto :goto_0

    .line 465
    :catch_0
    move-exception v4

    .line 466
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SocketThread decodeIcmpPacket catch exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 467
    nop

    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 483
    .end local v1    # "packetBuffer":[B
    .end local v3    # "len":I
    :cond_1
    goto :goto_2

    .line 469
    :catch_1
    move-exception v1

    .line 470
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

    .line 471
    iget-object v0, p0, Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler$SocketThread;->this$1:Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;

    iget-object v0, v0, Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;->this$0:Landroid/net/wifi/owm/OwmIcmpMonitor;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmIcmpMonitor;->-$$Nest$fgetmAsyncHandler(Landroid/net/wifi/owm/OwmIcmpMonitor;)Landroid/os/Handler;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 473
    iget-object v0, p0, Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler$SocketThread;->this$1:Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;

    iget-object v0, v0, Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;->this$0:Landroid/net/wifi/owm/OwmIcmpMonitor;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmIcmpMonitor;->-$$Nest$fgetmWifiEnabled(Landroid/net/wifi/owm/OwmIcmpMonitor;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 476
    iget-object v0, p0, Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler$SocketThread;->this$1:Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;

    iget-object v0, v0, Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;->this$0:Landroid/net/wifi/owm/OwmIcmpMonitor;

    invoke-static {v0, v2}, Landroid/net/wifi/owm/OwmIcmpMonitor;->-$$Nest$fputtryRenewInitSocketCnt(Landroid/net/wifi/owm/OwmIcmpMonitor;I)V

    .line 478
    iget-object v0, p0, Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler$SocketThread;->this$1:Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;

    iget-object v0, v0, Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;->this$0:Landroid/net/wifi/owm/OwmIcmpMonitor;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmIcmpMonitor;->-$$Nest$fgetmAsyncHandler(Landroid/net/wifi/owm/OwmIcmpMonitor;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 479
    iget-object v0, p0, Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler$SocketThread;->this$1:Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;

    iget-object v0, v0, Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;->this$0:Landroid/net/wifi/owm/OwmIcmpMonitor;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmIcmpMonitor;->-$$Nest$fgetmAsyncHandler(Landroid/net/wifi/owm/OwmIcmpMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 481
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler$SocketThread;->this$1:Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;

    iget-object v0, v0, Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;->this$0:Landroid/net/wifi/owm/OwmIcmpMonitor;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmIcmpMonitor;->-$$Nest$fgetmAsyncHandler(Landroid/net/wifi/owm/OwmIcmpMonitor;)Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler$SocketThread;->this$1:Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;

    iget-object v3, v3, Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;->this$0:Landroid/net/wifi/owm/OwmIcmpMonitor;

    invoke-static {v3}, Landroid/net/wifi/owm/OwmIcmpMonitor;->-$$Nest$fgetmAsyncHandler(Landroid/net/wifi/owm/OwmIcmpMonitor;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 484
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 0

    .line 487
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler$SocketThread;->recvMessage()V

    .line 488
    return-void
.end method
