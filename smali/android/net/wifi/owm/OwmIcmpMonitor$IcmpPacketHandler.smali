.class Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;
.super Ljava/lang/Object;
.source "OwmIcmpMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/owm/OwmIcmpMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IcmpPacketHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler$SocketThread;
    }
.end annotation


# instance fields
.field private blacklist mHwAddr:[B

.field private blacklist mIface:Landroid/net/wifi/oplus/util/OplusInterfaceParams;

.field private blacklist mPacketSock:Ljava/io/FileDescriptor;

.field final synthetic blacklist this$0:Landroid/net/wifi/owm/OwmIcmpMonitor;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmPacketSock(Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;)Ljava/io/FileDescriptor;
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;->mPacketSock:Ljava/io/FileDescriptor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhanldeReceiveIcmpPacket(Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;Landroid/net/wifi/oplus/util/OplusIcmpPacket;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;->hanldeReceiveIcmpPacket(Landroid/net/wifi/oplus/util/OplusIcmpPacket;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/wifi/owm/OwmIcmpMonitor;)V
    .locals 0

    .line 348
    iput-object p1, p0, Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;->this$0:Landroid/net/wifi/owm/OwmIcmpMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    return-void
.end method

.method private blacklist closeFd(Ljava/io/FileDescriptor;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 389
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;->mPacketSock:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 394
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;->mPacketSock:Ljava/io/FileDescriptor;

    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    .line 395
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;->mPacketSock:Ljava/io/FileDescriptor;

    .line 396
    const-string v0, "OwmIcmpMonitor"

    const-string v1, "closeFd done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    goto :goto_1

    .line 390
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;->this$0:Landroid/net/wifi/owm/OwmIcmpMonitor;

    const-string v1, "closeFd, mPacketSock == null or !mPacketSock.valid()"

    invoke-static {v0, v1}, Landroid/net/wifi/owm/OwmIcmpMonitor;->-$$Nest$mlogD(Landroid/net/wifi/owm/OwmIcmpMonitor;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    return-void

    .line 397
    :catch_0
    move-exception v0

    .line 398
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 400
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private blacklist hanldeReceiveIcmpPacket(Landroid/net/wifi/oplus/util/OplusIcmpPacket;)V
    .locals 10
    .param p1, "packet"    # Landroid/net/wifi/oplus/util/OplusIcmpPacket;

    .line 429
    invoke-direct {p0, p1}, Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;->isWlan0InfaceRecvValidIcmpPacket(Landroid/net/wifi/oplus/util/OplusIcmpPacket;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 430
    return-void

    .line 433
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Landroid/net/wifi/oplus/util/OplusIcmpPacket;->mCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 434
    .local v0, "errCode":Ljava/lang/String;
    iget-object v2, p1, Landroid/net/wifi/oplus/util/OplusIcmpPacket;->mErrSrcAddr:Ljava/net/InetAddress;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move-object v4, v3

    goto :goto_0

    :cond_1
    iget-object v2, p1, Landroid/net/wifi/oplus/util/OplusIcmpPacket;->mErrSrcAddr:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    .line 435
    .local v4, "srcAddr":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p1, Landroid/net/wifi/oplus/util/OplusIcmpPacket;->mMtuNextHop:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 436
    .local v8, "mtuNextHop":Ljava/lang/String;
    iget-object v2, p1, Landroid/net/wifi/oplus/util/OplusIcmpPacket;->mDataSrcAddr:Ljava/net/InetAddress;

    if-nez v2, :cond_2

    move-object v2, v3

    goto :goto_1

    :cond_2
    iget-object v2, p1, Landroid/net/wifi/oplus/util/OplusIcmpPacket;->mDataSrcAddr:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    :goto_1
    move-object v9, v2

    .line 437
    .local v9, "dataSrcAddr":Ljava/lang/String;
    iget-object v2, p1, Landroid/net/wifi/oplus/util/OplusIcmpPacket;->mDataDstAddr:Ljava/net/InetAddress;

    if-nez v2, :cond_3

    move-object v6, v3

    goto :goto_2

    :cond_3
    iget-object v2, p1, Landroid/net/wifi/oplus/util/OplusIcmpPacket;->mDataDstAddr:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    .line 438
    .local v6, "dataDstAddr":Ljava/lang/String;
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Landroid/net/wifi/oplus/util/OplusIcmpPacket;->mDataProto:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 440
    .local v1, "dataProto":Ljava/lang/String;
    iget-object v2, p0, Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;->this$0:Landroid/net/wifi/owm/OwmIcmpMonitor;

    invoke-static {v2}, Landroid/net/wifi/owm/OwmIcmpMonitor;->-$$Nest$fgetmContext(Landroid/net/wifi/owm/OwmIcmpMonitor;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OplusOwmMonitorKit;

    move-result-object v2

    move-object v3, v0

    move-object v5, v8

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->sendIcmpErrEventMesg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iget-object v2, p0, Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;->this$0:Landroid/net/wifi/owm/OwmIcmpMonitor;

    invoke-static {v2, v0}, Landroid/net/wifi/owm/OwmIcmpMonitor;->-$$Nest$mupdateIcmpRecord(Landroid/net/wifi/owm/OwmIcmpMonitor;Ljava/lang/String;)V

    .line 442
    return-void
.end method

.method private blacklist isWlan0InfaceRecvValidIcmpPacket(Landroid/net/wifi/oplus/util/OplusIcmpPacket;)Z
    .locals 5
    .param p1, "packet"    # Landroid/net/wifi/oplus/util/OplusIcmpPacket;

    .line 403
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 404
    return v0

    .line 407
    :cond_0
    iget-object v1, p1, Landroid/net/wifi/oplus/util/OplusIcmpPacket;->mErrSrcAddr:Ljava/net/InetAddress;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_1
    iget-object v1, p1, Landroid/net/wifi/oplus/util/OplusIcmpPacket;->mErrSrcAddr:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 408
    .local v1, "errSrcAddr":Ljava/lang/String;
    :goto_0
    iget-object v3, p1, Landroid/net/wifi/oplus/util/OplusIcmpPacket;->mErrDstAddr:Ljava/net/InetAddress;

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p1, Landroid/net/wifi/oplus/util/OplusIcmpPacket;->mErrDstAddr:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 409
    .local v2, "errDstAddr":Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;->this$0:Landroid/net/wifi/owm/OwmIcmpMonitor;

    invoke-static {v3}, Landroid/net/wifi/owm/OwmIcmpMonitor;->-$$Nest$fgetmOwmBaseUtils(Landroid/net/wifi/owm/OwmIcmpMonitor;)Landroid/net/wifi/owm/OwmBaseUtils;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/owm/OwmBaseUtils;->getIpAddr()Ljava/lang/String;

    move-result-object v3

    .line 411
    .local v3, "wlan0Addr":Ljava/lang/String;
    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    if-nez v3, :cond_3

    goto :goto_2

    .line 415
    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 417
    return v0

    .line 420
    :cond_4
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 422
    return v0

    .line 425
    :cond_5
    const/4 v0, 0x1

    return v0

    .line 412
    :cond_6
    :goto_2
    return v0
.end method


# virtual methods
.method public blacklist destroySocket()V
    .locals 2

    .line 383
    iget-object v0, p0, Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;->this$0:Landroid/net/wifi/owm/OwmIcmpMonitor;

    const-string v1, "Start destroySocket"

    invoke-static {v0, v1}, Landroid/net/wifi/owm/OwmIcmpMonitor;->-$$Nest$mlogD(Landroid/net/wifi/owm/OwmIcmpMonitor;Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;->mPacketSock:Ljava/io/FileDescriptor;

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;->closeFd(Ljava/io/FileDescriptor;)V

    .line 385
    return-void
.end method

.method public blacklist initSocket()V
    .locals 5

    .line 352
    iget-object v0, p0, Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;->this$0:Landroid/net/wifi/owm/OwmIcmpMonitor;

    const-string v1, "Start initSocket"

    invoke-static {v0, v1}, Landroid/net/wifi/owm/OwmIcmpMonitor;->-$$Nest$mlogD(Landroid/net/wifi/owm/OwmIcmpMonitor;Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;->mPacketSock:Ljava/io/FileDescriptor;

    const-string v1, "OwmIcmpMonitor"

    if-eqz v0, :cond_0

    .line 355
    const-string v0, "initSocket has done, not need init again"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    return-void

    .line 360
    :cond_0
    :try_start_0
    sget v0, Landroid/system/OsConstants;->AF_INET:I

    sget v2, Landroid/system/OsConstants;->SOCK_RAW:I

    sget v3, Landroid/system/OsConstants;->IPPROTO_ICMP:I

    invoke-static {v0, v2, v3}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;->mPacketSock:Ljava/io/FileDescriptor;

    .line 362
    iget-object v0, p0, Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;->this$0:Landroid/net/wifi/owm/OwmIcmpMonitor;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmIcmpMonitor;->-$$Nest$fgetmOwmBaseUtils(Landroid/net/wifi/owm/OwmIcmpMonitor;)Landroid/net/wifi/owm/OwmBaseUtils;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmBaseUtils;->getPrimaryClientIfname()Ljava/lang/String;

    move-result-object v0

    .line 363
    .local v0, "primaryClientIfname":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 364
    iget-object v2, p0, Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;->this$0:Landroid/net/wifi/owm/OwmIcmpMonitor;

    invoke-static {v2}, Landroid/net/wifi/owm/OwmIcmpMonitor;->-$$Nest$fgetmOwmBaseUtils(Landroid/net/wifi/owm/OwmIcmpMonitor;)Landroid/net/wifi/owm/OwmBaseUtils;

    const-string v2, "wlan0"

    move-object v0, v2

    .line 367
    :cond_1
    invoke-static {v0}, Landroid/net/wifi/oplus/util/OplusInterfaceParams;->getByName(Ljava/lang/String;)Landroid/net/wifi/oplus/util/OplusInterfaceParams;

    move-result-object v2

    iput-object v2, p0, Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;->mIface:Landroid/net/wifi/oplus/util/OplusInterfaceParams;

    .line 369
    if-eqz v2, :cond_3

    iget-object v3, p0, Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;->mPacketSock:Ljava/io/FileDescriptor;

    if-nez v3, :cond_2

    goto :goto_0

    .line 374
    :cond_2
    iget-object v2, v2, Landroid/net/wifi/oplus/util/OplusInterfaceParams;->macAddr:Landroid/net/MacAddress;

    invoke-virtual {v2}, Landroid/net/MacAddress;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;->mHwAddr:[B

    .line 375
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler$SocketThread;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler$SocketThread;-><init>(Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler$SocketThread-IA;)V

    invoke-direct {v2, v3, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 379
    .end local v0    # "primaryClientIfname":Ljava/lang/String;
    goto :goto_1

    .line 370
    .restart local v0    # "primaryClientIfname":Ljava/lang/String;
    :cond_3
    :goto_0
    iget-object v2, p0, Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;->this$0:Landroid/net/wifi/owm/OwmIcmpMonitor;

    const-string v3, "initSocket fail!"

    invoke-static {v2, v3}, Landroid/net/wifi/owm/OwmIcmpMonitor;->-$$Nest$mlogD(Landroid/net/wifi/owm/OwmIcmpMonitor;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    return-void

    .line 376
    .end local v0    # "primaryClientIfname":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 377
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSocketcatch exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v1, p0, Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;->mPacketSock:Ljava/io/FileDescriptor;

    invoke-direct {p0, v1}, Landroid/net/wifi/owm/OwmIcmpMonitor$IcmpPacketHandler;->closeFd(Ljava/io/FileDescriptor;)V

    .line 380
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
