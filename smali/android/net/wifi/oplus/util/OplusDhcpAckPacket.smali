.class public Landroid/net/wifi/oplus/util/OplusDhcpAckPacket;
.super Landroid/net/wifi/oplus/util/OplusDhcpPacket;
.source "OplusDhcpAckPacket.java"


# instance fields
.field private final blacklist mSrcIp:Ljava/net/Inet4Address;


# direct methods
.method public constructor whitelist <init>(ISZLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V
    .locals 10
    .param p1, "transId"    # I
    .param p2, "secs"    # S
    .param p3, "broadcast"    # Z
    .param p4, "serverAddress"    # Ljava/net/Inet4Address;
    .param p5, "clientIp"    # Ljava/net/Inet4Address;
    .param p6, "yourIp"    # Ljava/net/Inet4Address;
    .param p7, "clientMac"    # [B

    .line 49
    move-object v9, p0

    sget-object v6, Landroid/net/wifi/oplus/util/OplusDhcpAckPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p5

    move-object/from16 v4, p6

    move-object v5, p4

    move-object/from16 v7, p7

    move v8, p3

    invoke-direct/range {v0 .. v8}, Landroid/net/wifi/oplus/util/OplusDhcpPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[BZ)V

    .line 50
    move v0, p3

    iput-boolean v0, v9, Landroid/net/wifi/oplus/util/OplusDhcpAckPacket;->mBroadcast:Z

    .line 51
    move-object v1, p4

    iput-object v1, v9, Landroid/net/wifi/oplus/util/OplusDhcpAckPacket;->mSrcIp:Ljava/net/Inet4Address;

    .line 52
    return-void
.end method

.method private static final blacklist getInt(Ljava/lang/Integer;)I
    .locals 1
    .param p0, "v"    # Ljava/lang/Integer;

    .line 108
    if-nez p0, :cond_0

    .line 109
    const/4 v0, 0x0

    return v0

    .line 111
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method


# virtual methods
.method public whitelist buildPacket(ISS)Ljava/nio/ByteBuffer;
    .locals 10
    .param p1, "encap"    # I
    .param p2, "destUdp"    # S
    .param p3, "srcUdp"    # S

    .line 72
    const/16 v0, 0x5dc

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 73
    .local v0, "result":Ljava/nio/ByteBuffer;
    iget-boolean v1, p0, Landroid/net/wifi/oplus/util/OplusDhcpAckPacket;->mBroadcast:Z

    if-eqz v1, :cond_0

    sget-object v1, Landroid/net/wifi/oplus/util/OplusDhcpAckPacket;->INADDR_BROADCAST:Ljava/net/Inet4Address;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/net/wifi/oplus/util/OplusDhcpAckPacket;->mYourIp:Ljava/net/Inet4Address;

    :goto_0
    move-object v3, v1

    .line 74
    .local v3, "destIp":Ljava/net/Inet4Address;
    iget-boolean v1, p0, Landroid/net/wifi/oplus/util/OplusDhcpAckPacket;->mBroadcast:Z

    if-eqz v1, :cond_1

    sget-object v1, Landroid/net/wifi/oplus/util/OplusDhcpAckPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroid/net/wifi/oplus/util/OplusDhcpAckPacket;->mSrcIp:Ljava/net/Inet4Address;

    :goto_1
    move-object v4, v1

    .line 76
    .local v4, "srcIp":Ljava/net/Inet4Address;
    const/4 v8, 0x2

    iget-boolean v9, p0, Landroid/net/wifi/oplus/util/OplusDhcpAckPacket;->mBroadcast:Z

    move-object v1, p0

    move v2, p1

    move v5, p2

    move v6, p3

    move-object v7, v0

    invoke-virtual/range {v1 .. v9}, Landroid/net/wifi/oplus/util/OplusDhcpAckPacket;->fillInPacket(ILjava/net/Inet4Address;Ljava/net/Inet4Address;SSLjava/nio/ByteBuffer;BZ)V

    .line 78
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 79
    return-object v0
.end method

.method blacklist finishPacket(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 86
    const/16 v0, 0x35

    const/4 v1, 0x5

    invoke-static {p1, v0, v1}, Landroid/net/wifi/oplus/util/OplusDhcpAckPacket;->addTlv(Ljava/nio/ByteBuffer;BB)V

    .line 87
    iget-object v0, p0, Landroid/net/wifi/oplus/util/OplusDhcpAckPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    const/16 v1, 0x36

    invoke-static {p1, v1, v0}, Landroid/net/wifi/oplus/util/OplusDhcpAckPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/net/Inet4Address;)V

    .line 88
    iget-object v0, p0, Landroid/net/wifi/oplus/util/OplusDhcpAckPacket;->mLeaseTime:Ljava/lang/Integer;

    const/16 v1, 0x33

    invoke-static {p1, v1, v0}, Landroid/net/wifi/oplus/util/OplusDhcpAckPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/Integer;)V

    .line 91
    iget-object v0, p0, Landroid/net/wifi/oplus/util/OplusDhcpAckPacket;->mLeaseTime:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 92
    const/16 v0, 0x3a

    iget-object v1, p0, Landroid/net/wifi/oplus/util/OplusDhcpAckPacket;->mLeaseTime:Ljava/lang/Integer;

    .line 93
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 92
    invoke-static {p1, v0, v1}, Landroid/net/wifi/oplus/util/OplusDhcpAckPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/Integer;)V

    .line 96
    :cond_0
    const/4 v0, 0x1

    iget-object v1, p0, Landroid/net/wifi/oplus/util/OplusDhcpAckPacket;->mSubnetMask:Ljava/net/Inet4Address;

    invoke-static {p1, v0, v1}, Landroid/net/wifi/oplus/util/OplusDhcpAckPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/net/Inet4Address;)V

    .line 97
    const/4 v0, 0x3

    iget-object v1, p0, Landroid/net/wifi/oplus/util/OplusDhcpAckPacket;->mGateways:Ljava/util/List;

    invoke-static {p1, v0, v1}, Landroid/net/wifi/oplus/util/OplusDhcpAckPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/util/List;)V

    .line 98
    const/16 v0, 0xf

    iget-object v1, p0, Landroid/net/wifi/oplus/util/OplusDhcpAckPacket;->mDomainName:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Landroid/net/wifi/oplus/util/OplusDhcpAckPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/String;)V

    .line 99
    const/16 v0, 0x1c

    iget-object v1, p0, Landroid/net/wifi/oplus/util/OplusDhcpAckPacket;->mBroadcastAddress:Ljava/net/Inet4Address;

    invoke-static {p1, v0, v1}, Landroid/net/wifi/oplus/util/OplusDhcpAckPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/net/Inet4Address;)V

    .line 100
    const/4 v0, 0x6

    iget-object v1, p0, Landroid/net/wifi/oplus/util/OplusDhcpAckPacket;->mDnsServers:Ljava/util/List;

    invoke-static {p1, v0, v1}, Landroid/net/wifi/oplus/util/OplusDhcpAckPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/util/List;)V

    .line 101
    invoke-static {p1}, Landroid/net/wifi/oplus/util/OplusDhcpAckPacket;->addTlvEnd(Ljava/nio/ByteBuffer;)V

    .line 102
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 6

    .line 55
    invoke-super {p0}, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "s":Ljava/lang/String;
    const-string v1, " DNS servers: "

    .line 58
    .local v1, "dnsServers":Ljava/lang/String;
    iget-object v2, p0, Landroid/net/wifi/oplus/util/OplusDhcpAckPacket;->mDnsServers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/Inet4Address;

    .line 59
    .local v3, "dnsServer":Ljava/net/Inet4Address;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/net/Inet4Address;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 60
    .end local v3    # "dnsServer":Ljava/net/Inet4Address;
    goto :goto_0

    .line 62
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ACK: your new IP "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/oplus/util/OplusDhcpAckPacket;->mYourIp:Ljava/net/Inet4Address;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", netmask "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/oplus/util/OplusDhcpAckPacket;->mSubnetMask:Ljava/net/Inet4Address;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", gateways "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/oplus/util/OplusDhcpAckPacket;->mGateways:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", lease time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/oplus/util/OplusDhcpAckPacket;->mLeaseTime:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
