.class public Landroid/net/wifi/oplus/util/OplusDhcpOfferPacket;
.super Landroid/net/wifi/oplus/util/OplusDhcpPacket;
.source "OplusDhcpOfferPacket.java"


# instance fields
.field private final blacklist mSrcIp:Ljava/net/Inet4Address;


# direct methods
.method public constructor whitelist <init>(ISZLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V
    .locals 9
    .param p1, "transId"    # I
    .param p2, "secs"    # S
    .param p3, "broadcast"    # Z
    .param p4, "serverAddress"    # Ljava/net/Inet4Address;
    .param p5, "clientIp"    # Ljava/net/Inet4Address;
    .param p6, "yourIp"    # Ljava/net/Inet4Address;
    .param p7, "clientMac"    # [B

    .line 52
    sget-object v5, Landroid/net/wifi/oplus/util/OplusDhcpOfferPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    sget-object v6, Landroid/net/wifi/oplus/util/OplusDhcpOfferPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p5

    move-object v4, p6

    move-object/from16 v7, p7

    move v8, p3

    invoke-direct/range {v0 .. v8}, Landroid/net/wifi/oplus/util/OplusDhcpPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[BZ)V

    .line 53
    move-object v1, p4

    iput-object v1, v0, Landroid/net/wifi/oplus/util/OplusDhcpOfferPacket;->mSrcIp:Ljava/net/Inet4Address;

    .line 54
    return-void
.end method


# virtual methods
.method public whitelist buildPacket(ISS)Ljava/nio/ByteBuffer;
    .locals 10
    .param p1, "encap"    # I
    .param p2, "destUdp"    # S
    .param p3, "srcUdp"    # S

    .line 75
    const/16 v0, 0x5dc

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 76
    .local v0, "result":Ljava/nio/ByteBuffer;
    iget-boolean v1, p0, Landroid/net/wifi/oplus/util/OplusDhcpOfferPacket;->mBroadcast:Z

    if-eqz v1, :cond_0

    sget-object v1, Landroid/net/wifi/oplus/util/OplusDhcpOfferPacket;->INADDR_BROADCAST:Ljava/net/Inet4Address;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/net/wifi/oplus/util/OplusDhcpOfferPacket;->mYourIp:Ljava/net/Inet4Address;

    :goto_0
    move-object v3, v1

    .line 77
    .local v3, "destIp":Ljava/net/Inet4Address;
    iget-boolean v1, p0, Landroid/net/wifi/oplus/util/OplusDhcpOfferPacket;->mBroadcast:Z

    if-eqz v1, :cond_1

    sget-object v1, Landroid/net/wifi/oplus/util/OplusDhcpOfferPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroid/net/wifi/oplus/util/OplusDhcpOfferPacket;->mSrcIp:Ljava/net/Inet4Address;

    :goto_1
    move-object v4, v1

    .line 79
    .local v4, "srcIp":Ljava/net/Inet4Address;
    const/4 v8, 0x2

    iget-boolean v9, p0, Landroid/net/wifi/oplus/util/OplusDhcpOfferPacket;->mBroadcast:Z

    move-object v1, p0

    move v2, p1

    move v5, p2

    move v6, p3

    move-object v7, v0

    invoke-virtual/range {v1 .. v9}, Landroid/net/wifi/oplus/util/OplusDhcpOfferPacket;->fillInPacket(ILjava/net/Inet4Address;Ljava/net/Inet4Address;SSLjava/nio/ByteBuffer;BZ)V

    .line 81
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 82
    return-object v0
.end method

.method blacklist finishPacket(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 89
    const/16 v0, 0x35

    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Landroid/net/wifi/oplus/util/OplusDhcpOfferPacket;->addTlv(Ljava/nio/ByteBuffer;BB)V

    .line 90
    iget-object v0, p0, Landroid/net/wifi/oplus/util/OplusDhcpOfferPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    const/16 v2, 0x36

    invoke-static {p1, v2, v0}, Landroid/net/wifi/oplus/util/OplusDhcpOfferPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/net/Inet4Address;)V

    .line 91
    iget-object v0, p0, Landroid/net/wifi/oplus/util/OplusDhcpOfferPacket;->mLeaseTime:Ljava/lang/Integer;

    const/16 v2, 0x33

    invoke-static {p1, v2, v0}, Landroid/net/wifi/oplus/util/OplusDhcpOfferPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/Integer;)V

    .line 94
    iget-object v0, p0, Landroid/net/wifi/oplus/util/OplusDhcpOfferPacket;->mLeaseTime:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 95
    const/16 v0, 0x3a

    iget-object v2, p0, Landroid/net/wifi/oplus/util/OplusDhcpOfferPacket;->mLeaseTime:Ljava/lang/Integer;

    .line 96
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    div-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 95
    invoke-static {p1, v0, v1}, Landroid/net/wifi/oplus/util/OplusDhcpOfferPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/Integer;)V

    .line 99
    :cond_0
    const/4 v0, 0x1

    iget-object v1, p0, Landroid/net/wifi/oplus/util/OplusDhcpOfferPacket;->mSubnetMask:Ljava/net/Inet4Address;

    invoke-static {p1, v0, v1}, Landroid/net/wifi/oplus/util/OplusDhcpOfferPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/net/Inet4Address;)V

    .line 100
    const/4 v0, 0x3

    iget-object v1, p0, Landroid/net/wifi/oplus/util/OplusDhcpOfferPacket;->mGateways:Ljava/util/List;

    invoke-static {p1, v0, v1}, Landroid/net/wifi/oplus/util/OplusDhcpOfferPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/util/List;)V

    .line 101
    const/16 v0, 0xf

    iget-object v1, p0, Landroid/net/wifi/oplus/util/OplusDhcpOfferPacket;->mDomainName:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Landroid/net/wifi/oplus/util/OplusDhcpOfferPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/String;)V

    .line 102
    const/16 v0, 0x1c

    iget-object v1, p0, Landroid/net/wifi/oplus/util/OplusDhcpOfferPacket;->mBroadcastAddress:Ljava/net/Inet4Address;

    invoke-static {p1, v0, v1}, Landroid/net/wifi/oplus/util/OplusDhcpOfferPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/net/Inet4Address;)V

    .line 103
    const/4 v0, 0x6

    iget-object v1, p0, Landroid/net/wifi/oplus/util/OplusDhcpOfferPacket;->mDnsServers:Ljava/util/List;

    invoke-static {p1, v0, v1}, Landroid/net/wifi/oplus/util/OplusDhcpOfferPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/util/List;)V

    .line 104
    invoke-static {p1}, Landroid/net/wifi/oplus/util/OplusDhcpOfferPacket;->addTlvEnd(Ljava/nio/ByteBuffer;)V

    .line 105
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 6

    .line 57
    invoke-super {p0}, Landroid/net/wifi/oplus/util/OplusDhcpPacket;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "s":Ljava/lang/String;
    const-string v1, ", DNS servers: "

    .line 60
    .local v1, "dnsServers":Ljava/lang/String;
    iget-object v2, p0, Landroid/net/wifi/oplus/util/OplusDhcpOfferPacket;->mDnsServers:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 61
    iget-object v2, p0, Landroid/net/wifi/oplus/util/OplusDhcpOfferPacket;->mDnsServers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/Inet4Address;

    .line 62
    .local v3, "dnsServer":Ljava/net/Inet4Address;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 63
    .end local v3    # "dnsServer":Ljava/net/Inet4Address;
    goto :goto_0

    .line 66
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " OFFER, ip "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/oplus/util/OplusDhcpOfferPacket;->mYourIp:Ljava/net/Inet4Address;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mask "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/oplus/util/OplusDhcpOfferPacket;->mSubnetMask:Ljava/net/Inet4Address;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", gateways "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/oplus/util/OplusDhcpOfferPacket;->mGateways:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " lease time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/oplus/util/OplusDhcpOfferPacket;->mLeaseTime:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", domain "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/oplus/util/OplusDhcpOfferPacket;->mDomainName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
