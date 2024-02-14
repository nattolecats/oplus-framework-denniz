.class Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;
.super Ljava/lang/Object;
.source "OwmDhcpMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/owm/OwmDhcpMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DhcpPacketHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler$SocketThread;
    }
.end annotation


# instance fields
.field private blacklist dhcpResults:Landroid/net/DhcpResults;

.field private blacklist mHwAddr:[B

.field private blacklist mIface:Landroid/net/wifi/oplus/util/OplusInterfaceParams;

.field private blacklist mPacketSock:Ljava/io/FileDescriptor;

.field final synthetic blacklist this$0:Landroid/net/wifi/owm/OwmDhcpMonitor;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmPacketSock(Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;)Ljava/io/FileDescriptor;
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;->mPacketSock:Ljava/io/FileDescriptor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mreceiveOfferOrAckPacket(Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;Landroid/net/wifi/oplus/util/OplusDhcpPacket;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;->receiveOfferOrAckPacket(Landroid/net/wifi/oplus/util/OplusDhcpPacket;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/wifi/owm/OwmDhcpMonitor;)V
    .locals 0

    .line 475
    iput-object p1, p0, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;->this$0:Landroid/net/wifi/owm/OwmDhcpMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 476
    return-void
.end method

.method private blacklist closeFd(Ljava/io/FileDescriptor;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 524
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;->mPacketSock:Ljava/io/FileDescriptor;

    if-nez v0, :cond_0

    .line 525
    iget-object v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;->this$0:Landroid/net/wifi/owm/OwmDhcpMonitor;

    const-string v1, "closeFd, mPacketSock == null or !mPacketSock.valid()"

    invoke-static {v0, v1}, Landroid/net/wifi/owm/OwmDhcpMonitor;->-$$Nest$mlogD(Landroid/net/wifi/owm/OwmDhcpMonitor;Ljava/lang/String;)V

    .line 526
    return-void

    .line 529
    :cond_0
    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    .line 530
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;->mPacketSock:Ljava/io/FileDescriptor;

    .line 532
    const-string v0, "OwmDhcpMonitor"

    const-string v1, "closeFd done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    goto :goto_0

    .line 533
    :catch_0
    move-exception v0

    .line 534
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 536
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private blacklist isCapportApiEnabled()Z
    .locals 1

    .line 555
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist isValidPacket(Landroid/net/wifi/oplus/util/OplusDhcpPacket;)Z
    .locals 5
    .param p1, "packet"    # Landroid/net/wifi/oplus/util/OplusDhcpPacket;

    .line 559
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 560
    return v0

    .line 563
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->getClientMac()[B

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;->mHwAddr:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 564
    const-string v1, "OwmDhcpMonitor"

    const-string v3, "MAC addr mismatch"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iget-object v3, p0, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;->this$0:Landroid/net/wifi/owm/OwmDhcpMonitor;

    invoke-static {v3}, Landroid/net/wifi/owm/OwmDhcpMonitor;->-$$Nest$fgetmWifiConnected(Landroid/net/wifi/owm/OwmDhcpMonitor;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 568
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;->updateHwAddr()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->getClientMac()[B

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;->mHwAddr:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 569
    const-string v0, "MAC addr matched after updateHwAddr()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    return v2

    .line 573
    :cond_1
    return v0

    .line 576
    :cond_2
    return v2
.end method

.method private blacklist receiveOfferOrAckPacket(Landroid/net/wifi/oplus/util/OplusDhcpPacket;)V
    .locals 12
    .param p1, "packet"    # Landroid/net/wifi/oplus/util/OplusDhcpPacket;

    .line 580
    invoke-direct {p0, p1}, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;->isValidPacket(Landroid/net/wifi/oplus/util/OplusDhcpPacket;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 581
    return-void

    .line 584
    :cond_0
    instance-of v0, p1, Landroid/net/wifi/oplus/util/OplusDhcpNakPacket;

    if-eqz v0, :cond_1

    .line 586
    iget-object v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;->this$0:Landroid/net/wifi/owm/OwmDhcpMonitor;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmDhcpMonitor;->-$$Nest$fgetmContext(Landroid/net/wifi/owm/OwmDhcpMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->getInstance(Landroid/content/Context;)Landroid/net/wifi/owm/OplusOwmMonitorKit;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/owm/OplusOwmMonitorKit;->sendDhcpNakEventMesg()V

    .line 587
    return-void

    .line 590
    :cond_1
    instance-of v0, p1, Landroid/net/wifi/oplus/util/OplusDhcpAckPacket;

    if-nez v0, :cond_2

    instance-of v0, p1, Landroid/net/wifi/oplus/util/OplusDhcpOfferPacket;

    if-eqz v0, :cond_5

    .line 591
    :cond_2
    invoke-virtual {p1}, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->toDhcpResults()Landroid/net/DhcpResults;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;->dhcpResults:Landroid/net/DhcpResults;

    .line 592
    if-nez v0, :cond_3

    .line 593
    return-void

    .line 596
    :cond_3
    invoke-virtual {v0}, Landroid/net/DhcpResults;->getIpAddress()Landroid/net/LinkAddress;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 597
    .local v0, "ipAddr":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;->dhcpResults:Landroid/net/DhcpResults;

    invoke-virtual {v2}, Landroid/net/DhcpResults;->getIpAddress()Landroid/net/LinkAddress;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 598
    .local v7, "ipAddrPrefixLen":Ljava/lang/String;
    iget-object v1, p0, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;->dhcpResults:Landroid/net/DhcpResults;

    invoke-virtual {v1}, Landroid/net/DhcpResults;->getGateway()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    .line 599
    .local v8, "gateway":Ljava/lang/String;
    iget-object v1, p0, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;->dhcpResults:Landroid/net/DhcpResults;

    invoke-virtual {v1}, Landroid/net/DhcpResults;->getDomains()Ljava/lang/String;

    move-result-object v9

    .line 600
    .local v9, "domains":Ljava/lang/String;
    const-string v1, ""

    .line 602
    .local v1, "dnsServers":Ljava/lang/String;
    iget-object v2, p0, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;->dhcpResults:Landroid/net/DhcpResults;

    invoke-virtual {v2}, Landroid/net/DhcpResults;->getDnsServers()Ljava/util/List;

    move-result-object v10

    .line 603
    .local v10, "dnsServList":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 604
    .local v3, "dnsServ":Ljava/net/InetAddress;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 605
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 606
    .end local v3    # "dnsServ":Ljava/net/InetAddress;
    goto :goto_0

    .line 609
    :cond_4
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 611
    .end local v1    # "dnsServers":Ljava/lang/String;
    .local v11, "dnsServers":Ljava/lang/String;
    iget-object v1, p0, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;->this$0:Landroid/net/wifi/owm/OwmDhcpMonitor;

    move-object v2, v0

    move-object v3, v7

    move-object v4, v8

    move-object v5, v9

    move-object v6, v11

    invoke-virtual/range {v1 .. v6}, Landroid/net/wifi/owm/OwmDhcpMonitor;->addDhcpOfferRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    .end local v0    # "ipAddr":Ljava/lang/String;
    .end local v7    # "ipAddrPrefixLen":Ljava/lang/String;
    .end local v8    # "gateway":Ljava/lang/String;
    .end local v9    # "domains":Ljava/lang/String;
    .end local v10    # "dnsServList":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .end local v11    # "dnsServers":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method private blacklist updateHwAddr()Z
    .locals 3

    .line 539
    iget-object v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;->this$0:Landroid/net/wifi/owm/OwmDhcpMonitor;

    invoke-static {v0}, Landroid/net/wifi/owm/OwmDhcpMonitor;->-$$Nest$fgetmOwmBaseUtils(Landroid/net/wifi/owm/OwmDhcpMonitor;)Landroid/net/wifi/owm/OwmBaseUtils;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/owm/OwmBaseUtils;->getPrimaryClientIfname()Ljava/lang/String;

    move-result-object v0

    .line 540
    .local v0, "primaryClientIfname":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 541
    iget-object v1, p0, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;->this$0:Landroid/net/wifi/owm/OwmDhcpMonitor;

    invoke-static {v1}, Landroid/net/wifi/owm/OwmDhcpMonitor;->-$$Nest$fgetmOwmBaseUtils(Landroid/net/wifi/owm/OwmDhcpMonitor;)Landroid/net/wifi/owm/OwmBaseUtils;

    const-string v0, "wlan0"

    .line 544
    :cond_0
    invoke-static {v0}, Landroid/net/wifi/oplus/util/OplusInterfaceParams;->getByName(Ljava/lang/String;)Landroid/net/wifi/oplus/util/OplusInterfaceParams;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;->mIface:Landroid/net/wifi/oplus/util/OplusInterfaceParams;

    .line 545
    if-nez v1, :cond_1

    .line 546
    iget-object v1, p0, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;->this$0:Landroid/net/wifi/owm/OwmDhcpMonitor;

    const-string v2, "updateHwAddr fail!"

    invoke-static {v1, v2}, Landroid/net/wifi/owm/OwmDhcpMonitor;->-$$Nest$mlogD(Landroid/net/wifi/owm/OwmDhcpMonitor;Ljava/lang/String;)V

    .line 547
    const/4 v1, 0x0

    return v1

    .line 550
    :cond_1
    iget-object v1, v1, Landroid/net/wifi/oplus/util/OplusInterfaceParams;->macAddr:Landroid/net/MacAddress;

    invoke-virtual {v1}, Landroid/net/MacAddress;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;->mHwAddr:[B

    .line 551
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public blacklist destroySocket()V
    .locals 2

    .line 518
    iget-object v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;->this$0:Landroid/net/wifi/owm/OwmDhcpMonitor;

    const-string v1, "Start destroySocket"

    invoke-static {v0, v1}, Landroid/net/wifi/owm/OwmDhcpMonitor;->-$$Nest$mlogD(Landroid/net/wifi/owm/OwmDhcpMonitor;Ljava/lang/String;)V

    .line 519
    iget-object v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;->mPacketSock:Ljava/io/FileDescriptor;

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;->closeFd(Ljava/io/FileDescriptor;)V

    .line 520
    return-void
.end method

.method public blacklist initSocket()V
    .locals 5

    .line 479
    iget-object v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;->this$0:Landroid/net/wifi/owm/OwmDhcpMonitor;

    const-string v1, "Start initSocket"

    invoke-static {v0, v1}, Landroid/net/wifi/owm/OwmDhcpMonitor;->-$$Nest$mlogD(Landroid/net/wifi/owm/OwmDhcpMonitor;Ljava/lang/String;)V

    .line 481
    iget-object v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;->mPacketSock:Ljava/io/FileDescriptor;

    const-string v1, "OwmDhcpMonitor"

    if-eqz v0, :cond_0

    .line 482
    const-string v0, "initSocket has done, not need init again"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    return-void

    .line 487
    :cond_0
    :try_start_0
    sget v0, Landroid/system/OsConstants;->AF_PACKET:I

    sget v2, Landroid/system/OsConstants;->SOCK_RAW:I

    sget v3, Landroid/system/OsConstants;->ETH_P_IP:I

    invoke-static {v0, v2, v3}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;->mPacketSock:Ljava/io/FileDescriptor;

    .line 489
    if-nez v0, :cond_1

    .line 490
    iget-object v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;->this$0:Landroid/net/wifi/owm/OwmDhcpMonitor;

    const-string v2, "initSocket fail, mPacketSock == null!"

    invoke-static {v0, v2}, Landroid/net/wifi/owm/OwmDhcpMonitor;->-$$Nest$mlogD(Landroid/net/wifi/owm/OwmDhcpMonitor;Ljava/lang/String;)V

    .line 491
    return-void

    .line 494
    :cond_1
    invoke-direct {p0}, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;->updateHwAddr()Z

    move-result v0

    if-nez v0, :cond_2

    .line 495
    iget-object v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;->this$0:Landroid/net/wifi/owm/OwmDhcpMonitor;

    const-string v2, "initSocket fail when updateHwAddr"

    invoke-static {v0, v2}, Landroid/net/wifi/owm/OwmDhcpMonitor;->-$$Nest$mlogD(Landroid/net/wifi/owm/OwmDhcpMonitor;Ljava/lang/String;)V

    .line 496
    iget-object v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;->mPacketSock:Ljava/io/FileDescriptor;

    invoke-direct {p0, v0}, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;->closeFd(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 497
    return-void

    .line 501
    :cond_2
    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;->mPacketSock:Ljava/io/FileDescriptor;

    invoke-static {v0}, Landroid/net/wifi/oplus/util/OplusNetworkStackUtils;->attachDhcpFilter(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 506
    nop

    .line 508
    :try_start_2
    sget v0, Landroid/system/OsConstants;->ETH_P_IP:I

    iget-object v2, p0, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;->mIface:Landroid/net/wifi/oplus/util/OplusInterfaceParams;

    iget v2, v2, Landroid/net/wifi/oplus/util/OplusInterfaceParams;->index:I

    invoke-static {v0, v2}, Landroid/net/util/SocketUtils;->makePacketSocketAddress(II)Ljava/net/SocketAddress;

    move-result-object v0

    .line 509
    .local v0, "addr":Ljava/net/SocketAddress;
    iget-object v2, p0, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;->mPacketSock:Ljava/io/FileDescriptor;

    invoke-static {v2, v0}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    .line 510
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler$SocketThread;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler$SocketThread;-><init>(Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler$SocketThread-IA;)V

    invoke-direct {v2, v3, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 514
    .end local v0    # "addr":Ljava/net/SocketAddress;
    goto :goto_0

    .line 502
    :catch_0
    move-exception v0

    .line 503
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSocket catch SocketException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iget-object v2, p0, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;->mPacketSock:Ljava/io/FileDescriptor;

    invoke-direct {p0, v2}, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;->closeFd(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 505
    return-void

    .line 511
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 512
    .restart local v0    # "e":Ljava/lang/Exception;
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

    .line 513
    iget-object v1, p0, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;->mPacketSock:Ljava/io/FileDescriptor;

    invoke-direct {p0, v1}, Landroid/net/wifi/owm/OwmDhcpMonitor$DhcpPacketHandler;->closeFd(Ljava/io/FileDescriptor;)V

    .line 515
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
