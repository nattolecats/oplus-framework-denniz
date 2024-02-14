.class Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler$SocketThread;
.super Ljava/lang/Object;
.source "OwmHttpMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SocketThread"
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler;


# direct methods
.method private constructor blacklist <init>(Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler;)V
    .locals 0

    .line 341
    iput-object p1, p0, Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler$SocketThread;->this$1:Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler;Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler$SocketThread-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler$SocketThread;-><init>(Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler;)V

    return-void
.end method

.method private blacklist recvMessage()V
    .locals 7

    .line 343
    const-string v0, "OwmHttpMonitor"

    iget-object v1, p0, Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler$SocketThread;->this$1:Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler;

    iget-object v1, v1, Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler;->this$0:Landroid/net/wifi/owm/OwmHttpMonitor;

    const-string v2, "SocketThread, step recvMessage"

    invoke-static {v1, v2}, Landroid/net/wifi/owm/OwmHttpMonitor;->-$$Nest$mlogD(Landroid/net/wifi/owm/OwmHttpMonitor;Ljava/lang/String;)V

    .line 346
    const/16 v1, 0x5dc

    :try_start_0
    new-array v1, v1, [B

    .line 347
    .local v1, "packetBuffer":[B
    const/4 v2, 0x0

    .line 349
    .local v2, "len":I
    :goto_0
    iget-object v3, p0, Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler$SocketThread;->this$1:Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler;

    invoke-static {v3}, Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler;->-$$Nest$fgetmPacketSock(Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler;)Ljava/io/FileDescriptor;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 350
    iget-object v3, p0, Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler$SocketThread;->this$1:Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler;

    invoke-static {v3}, Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler;->-$$Nest$fgetmPacketSock(Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler;)Ljava/io/FileDescriptor;

    move-result-object v3

    array-length v4, v1

    const/4 v5, 0x0

    invoke-static {v3, v1, v5, v4}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v3

    move v2, v3

    .line 351
    iget-object v3, p0, Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler$SocketThread;->this$1:Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler;

    iget-object v3, v3, Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler;->this$0:Landroid/net/wifi/owm/OwmHttpMonitor;

    invoke-static {v3}, Landroid/net/wifi/owm/OwmHttpMonitor;->-$$Nest$fgetmOwmBaseUtils(Landroid/net/wifi/owm/OwmHttpMonitor;)Landroid/net/wifi/owm/OwmBaseUtils;

    move-result-object v3

    const/16 v4, 0x9

    const/4 v6, 0x1

    invoke-virtual {v3, v0, v1, v4, v6}, Landroid/net/wifi/owm/OwmBaseUtils;->printHexBinary(Ljava/lang/String;[BII)V

    .line 352
    iget-object v3, p0, Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler$SocketThread;->this$1:Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler;

    iget-object v3, v3, Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler;->this$0:Landroid/net/wifi/owm/OwmHttpMonitor;

    invoke-static {v3}, Landroid/net/wifi/owm/OwmHttpMonitor;->-$$Nest$fgetmOwmBaseUtils(Landroid/net/wifi/owm/OwmHttpMonitor;)Landroid/net/wifi/owm/OwmBaseUtils;

    move-result-object v3

    const/16 v4, 0x1d

    invoke-virtual {v3, v0, v1, v4, v6}, Landroid/net/wifi/owm/OwmBaseUtils;->printHexBinary(Ljava/lang/String;[BII)V

    .line 353
    iget-object v3, p0, Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler$SocketThread;->this$1:Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler;

    iget-object v3, v3, Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler;->this$0:Landroid/net/wifi/owm/OwmHttpMonitor;

    invoke-static {v3}, Landroid/net/wifi/owm/OwmHttpMonitor;->-$$Nest$fgetmOwmBaseUtils(Landroid/net/wifi/owm/OwmHttpMonitor;)Landroid/net/wifi/owm/OwmBaseUtils;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v5, v2}, Landroid/net/wifi/owm/OwmBaseUtils;->printHexBinary(Ljava/lang/String;[BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 377
    .end local v1    # "packetBuffer":[B
    .end local v2    # "len":I
    :cond_0
    goto :goto_1

    .line 369
    :catch_0
    move-exception v1

    .line 370
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SocketThread recvMessage catch exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v0, p0, Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler$SocketThread;->this$1:Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler;

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler;->destroySocket()V

    .line 373
    iget-object v0, p0, Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler$SocketThread;->this$1:Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler;

    iget-object v0, v0, Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler;->this$0:Landroid/net/wifi/owm/OwmHttpMonitor;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmHttpMonitor;->-$$Nest$fgetmAsyncHandler(Landroid/net/wifi/owm/OwmHttpMonitor;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    iget-object v0, p0, Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler$SocketThread;->this$1:Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler;

    iget-object v0, v0, Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler;->this$0:Landroid/net/wifi/owm/OwmHttpMonitor;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmHttpMonitor;->-$$Nest$fgetmAsyncHandler(Landroid/net/wifi/owm/OwmHttpMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 376
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler$SocketThread;->this$1:Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler;

    iget-object v0, v0, Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler;->this$0:Landroid/net/wifi/owm/OwmHttpMonitor;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmHttpMonitor;->-$$Nest$fgetmAsyncHandler(Landroid/net/wifi/owm/OwmHttpMonitor;)Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler$SocketThread;->this$1:Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler;

    iget-object v3, v3, Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler;->this$0:Landroid/net/wifi/owm/OwmHttpMonitor;

    invoke-static {v3}, Landroid/net/wifi/owm/OwmHttpMonitor;->-$$Nest$fgetmAsyncHandler(Landroid/net/wifi/owm/OwmHttpMonitor;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 378
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 0

    .line 381
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmHttpMonitor$HttpPacketHandler$SocketThread;->recvMessage()V

    .line 382
    return-void
.end method
